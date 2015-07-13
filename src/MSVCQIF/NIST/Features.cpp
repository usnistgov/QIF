//
// Features.cpp
//

// This software was developed by U.S. Government employees as part of
// their official duties and is not subject to copyright. No warranty implied 
// or intended.


#include "StdAfx.h"
#define _USE_MATH_DEFINES
#include <math.h>
#include <limits>

#include "Features.h"
#include "Cylinder.h"

#if _MSC_VER == 1500 
#pragma comment(lib, "..\\Debug2008\\QMR.lib")
#pragma comment(lib, "..\\Debug2008\\Altova.lib")
#pragma comment(lib, "..\\Debug2008\\AltovaXML.lib")
#pragma comment(lib, "..\\Debug2008\\libgsl_dll_d.lib")
#pragma comment(lib, "..\\Debug2008\\libgslcblas_dll_d.lib")
#elif  _MSC_VER == 1600
#pragma comment(lib, ".\\Debug\\QMR.lib")
#pragma comment(lib, ".\\Debug\\Altova.lib")
#pragma comment(lib, ".\\Debug\\AltovaXML.lib")
#pragma comment(lib, ".\\GSL_Windows\\lib\\libgsl_dll_d.lib")
#pragma comment(lib, ".\\GSL_Windows\\lib\\libgslcblas_dll_d.lib")

#endif 
	
MSXML2::IXMLDOMNodePtr CCharacteristicFeatureRelation::GetNodeFromUniqueId(MSXML2::IXMLDOMNodePtr root, std::string id)
{
		std::string	xpath = StdStringFormat("//*[@id='%s']", id.c_str());
		return	root->selectSingleNode(_bstr_t(xpath.c_str()));
}
std::vector<CRelationType> CQMREx::GetRelations()
{
	std::vector<CRelationType> relations;
	MSXML2::IXMLDOMNodePtr root = _doc.GetNode();
	MSXML2::IXMLDOMNodeListPtr nodes = root->selectNodes(_bstr_t("//CharacteristicFeatureRelations/Relation"));
	for(int i=0; i< nodes->length; i++)
	{
		CRelationType relation(nodes->Getitem(i)); 
		relations.push_back(relation);
	}
	return relations;
}

bool CQMREx::IsA(MSXML2::IXMLDOMNodePtr node, std::string type)
{
	if(node==NULL)
		return false;
	OutputDebugString(StdStringFormat("Node Name = %s\n", (LPCTSTR) node->nodeName).c_str());
	if(node->nodeName  == _bstr_t(type.c_str()))
		return true;
	return false;

}
CCharacteristicFeatureRelation CCharacteristicFeatureRelation::CrackCharacteristicFeature(MSXML2::IXMLDOMNodePtr root, MSXML2::IXMLDOMNodePtr node)
{

	CCharacteristicFeatureRelation cfr;
	cfr._relation =node;
	CRelationType relation=node; 
	std::string relationid = relation.Id;
	cfr.CharacteristicInstanceId=  relation.CharacteristicId.first();
	std::string featureid;

	// Retrieve  CharacteristicInstance
	// CharacteristicId
	std::string xpath = StdStringFormat("//*[@id='%s']", cfr.CharacteristicInstanceId.c_str());
	MSXML2::IXMLDOMNodePtr tolanceinstance = root->selectSingleNode(_bstr_t(xpath.c_str()));

	// 1 nominal, multiple actual measurements
	cfr.characteristicInstance= tolanceinstance;
	std::string characteristicnominalid = cfr.characteristicInstance.NominalId.first();
	xpath = StdStringFormat("//*[@id='%s']", characteristicnominalid.c_str());
	cfr.characteristicNominal = root->selectSingleNode(_bstr_t(xpath.c_str()));

	std::string characteristicdefinitionid = cfr.characteristicNominal.definitionId;
	xpath = StdStringFormat("//*[@id='%s']", characteristicdefinitionid.c_str());
	cfr.characteristicDefinition = root->selectSingleNode(_bstr_t(xpath.c_str()));

	for(int i=0; i< cfr.characteristicInstance.Measurements.first().Measurement.count(); i ++)
	{
		CCharacteristicActualType characteristicActual(NULL);
		CMeasurementType measurement  = cfr.characteristicInstance.Measurements.first().Measurement[i];
		std::string characteristicactualid = measurement.ActualId.first();
		xpath = StdStringFormat("//*[@id='%s']", characteristicactualid.c_str());
		characteristicActual = root->selectSingleNode(_bstr_t(xpath.c_str()));
		cfr.characteristicActuals.push_back(characteristicActual);
	}

	// Retrieve list of features  - 1 characteristic -> many features
	CFeaturesType features = relation.Features.first();
	for(int j=0; j< features.FeatureId.count(); j++)
	{
		std::string id;
		CFeatureDefinitionType featuredefinition(NULL);
		CFeatureNominalType featurenomminal(NULL);
		CFeatureActualType featureactual(NULL);

		featureid = features.FeatureId[j];
		cfr.featureinstanceids.push_back(featureid);
		xpath = StdStringFormat("//PartInstance/FeatureInstances/*[@id='%s']", featureid.c_str());
		MSXML2::IXMLDOMNodePtr xmlfeatureinstance = root->selectSingleNode(_bstr_t(xpath.c_str()));
		CFeatureInstanceType featureinstance(xmlfeatureinstance);
		cfr.featureInstances.push_back(featureinstance);

		id = featureinstance.FeatureNominalId.first();
		xpath = StdStringFormat("//*[@id='%s']", id.c_str());
		featurenomminal = root->selectSingleNode(_bstr_t(xpath.c_str()));
		cfr.featureNominals.push_back(featurenomminal);

		if(featurenomminal.GetNode() !=NULL)
		{
			id =  featurenomminal.definitionId;
			xpath = StdStringFormat("//*[@id='%s']", id.c_str());
			featuredefinition = root->selectSingleNode(_bstr_t(xpath.c_str()));
			cfr.featureDefinitions.push_back(featuredefinition);
		}

		id = featureinstance.FeatureActualId.first();
		xpath = StdStringFormat("//*[@id='%s']", id.c_str());
		featureactual = root->selectSingleNode(_bstr_t(xpath.c_str()));
		cfr.featureActuals.push_back(featureactual);
	}
	OutputDebugString(StdStringFormat("Relation=%s Characteristic=%s Featureid=%s\n", 
		relationid.c_str(), cfr.CharacteristicInstanceId.c_str(), featureid.c_str()).c_str());

	return cfr;
}
int CQMREx::CrackCharacteristicFeatures()
{

	// FIXME: must do NULL checking...
	// or at least add try/catch ...
	std::vector<CRelationType> relations;

	std::string xpath;
	std::string relationid;
	MSXML2::IXMLDOMNodePtr root = _doc.GetNode();
	relations = GetRelations();
	_crackedrelations.clear();
	
	for(int i=0; i< relations.size(); i++)
	{
		//CCharacteristicFeatureRelation cfr(relations[i]);
		CCharacteristicFeatureRelation cfr = CCharacteristicFeatureRelation::CrackCharacteristicFeature(root, relations[i].GetNode());
	 
		_crackedrelations.push_back(cfr);

	}
	return _crackedrelations.size();
}

int CQMREx::StuffPoints( MSXML2::IXMLDOMNodePtr pPointlist, std::vector<std::vector<std::vector<double>>> & points)
{
	CPointListType pointlist = pPointlist; // this is  forced cast from either CPointListType or CPointListType2
		
	int n=0;
	pointlist.MeasurePoint.remove();

	for(int i=0; i< points.size(); i++)
	{
		for(int j=0; j< points[i].size(); j++,n++)
		{
			pointlist.MeasurePoint.append().Point.append().x.append() =points[i][j][0];
			pointlist.MeasurePoint.last().Point.first().y.append()=points[i][j][1];
			pointlist.MeasurePoint.last().Point.first().z.append()=points[i][j][2];
		}
	}
	return n;
}

int CQMREx::UnstuffPoints(MSXML2::IXMLDOMNodePtr pPointlist, std::vector<std::vector<std::vector<double>>> & points)
{
	CPointListType pointlist = pPointlist; // this is  forced cast from either CPointListType or CPointListType2

	int n=0;
	points.clear();
	double lastz=std::numeric_limits<double>::quiet_NaN( );
	CMeasurePointActualType measurepoint = pointlist.MeasurePoint.first();
	for(int i=0; i< pointlist.MeasurePoint.count(); i++,n++)
	{
		measurepoint = pointlist.MeasurePoint[i];
		// check to see if different z for now and create new vector if different

		std::vector<double> xyz(3);
		CPointType point = measurepoint.Point.first();
		xyz[0]=point.x.first();
		xyz[1]=point.y.first();
		xyz[2]=point.z.first();
		if(xyz[2]!=lastz)
		{
			points.push_back(std::vector<std::vector<double>>());
			lastz=xyz[2];
		}
		points.back().push_back(xyz);

	}
	return n;
}

void CQMREx::Plan()
{
	static char name[] = "CQMREx::Plan";
	MSXML2::IXMLDOMNodePtr root = _doc.GetNode();
	CrackCharacteristicFeatures();

	for(int i=0; i< _crackedrelations.size(); i++)
	{
		CCharacteristicFeatureRelation cfr = _crackedrelations[i];
		std::vector<std::vector<std::vector<double>>> pts;
		CCharacteristicInstanceType characteristicinstance = _crackedrelations[i].characteristicInstance;
		if(IsA(characteristicinstance.GetNode(), "CylindricityCharacteristicInstance"))
		{
			for(int j=0; j< _crackedrelations[i].featureInstances.size(); j++)
			{
				CFeatureInstanceType featureinstance = _crackedrelations[i].featureInstances[j];
				bstr_t tag = (featureinstance.GetNode()!=NULL) ? featureinstance.GetNode()->nodeName : "";
				if(tag == _bstr_t("CylinderFeatureInstance"))
				{
					CQmrCylinderFeatureMeasurement featureMeasurement;
					featureMeasurement.QmrAddCylindricityNominals(_doc.GetNode(), _crackedrelations[i]._relation.GetNode(), j);
				}	
			}
		}
	}

}

void CQMREx::Simulate(bool bFail)
{
	static char name[] = "CQMREx::Simulate";
	MSXML2::IXMLDOMNodePtr root = _doc.GetNode();
	CrackCharacteristicFeatures();

	for(int i=0; i< _crackedrelations.size(); i++)
	{
		CCharacteristicFeatureRelation cfr = _crackedrelations[i];
		std::vector<std::vector<std::vector<double>>> pts;
		CCharacteristicInstanceType characteristicinstance = _crackedrelations[i].characteristicInstance;
		if(IsA(characteristicinstance.GetNode(), "CylindricityCharacteristicInstance"))
		{
			for(int j=0; j< _crackedrelations[i].featureInstances.size(); j++)
			{
				CFeatureInstanceType featureinstance = _crackedrelations[i].featureInstances[j];
				bstr_t tag = (featureinstance.GetNode()!=NULL) ? featureinstance.GetNode()->nodeName : "";
				if(tag == _bstr_t("CylinderFeatureInstance"))
				{
					CQmrCylinderFeatureMeasurement featureMeasurement;
					featureMeasurement.QmrSimulateCylindricityActuals(root, _crackedrelations[i]._relation.GetNode(),  j, bFail);
					//featureMeasurement.QmrEvaluateActuals(root, _crackedrelations[i]._relation.GetNode(),  j);
				}	
			}
		}
	}

}

void CQMREx::Evaluate()
{
	static char name[] = "CQMREx::Evaluate";
	MSXML2::IXMLDOMNodePtr root = _doc.GetNode();
	CrackCharacteristicFeatures();

	for(int i=0; i< _crackedrelations.size(); i++)
	{
		CCharacteristicFeatureRelation cfr = _crackedrelations[i];
		std::vector<std::vector<std::vector<double>>> pts;
		CCharacteristicInstanceType characteristicinstance = _crackedrelations[i].characteristicInstance;
		if(IsA(characteristicinstance.GetNode(), "CylindricityCharacteristicInstance"))
		{
			for(int j=0; j< _crackedrelations[i].featureInstances.size(); j++)
			{
				CFeatureInstanceType featureinstance = _crackedrelations[i].featureInstances[j];
				bstr_t tag = (featureinstance.GetNode()!=NULL) ? featureinstance.GetNode()->nodeName : "";
				if(tag == _bstr_t("CylinderFeatureInstance"))
				{
					CQmrCylinderFeatureMeasurement featureMeasurement;
					featureMeasurement.QmrEvaluateActuals(root, _crackedrelations[i]._relation.GetNode(),  j);
				}	
			}
		}
	}

}

static void StuffCylinderFeatureNominal(CCylinderFeatureNominalType nominal, std::string id, std::string definitionId,double x, double y, double z, double sweep, double i, double j, double k )
{
	//CFeatureNominalsType nominals = featureconstructs.FeatureNominals.append();
	//CCylinderFeatureNominalType cylindernominal = nominals.CylinderFeatureNominal.append();
	nominal.id=id;;
	nominal.definitionId=definitionId;
	nominal.Axis.append().Point.append().x.append()=x;
	nominal.Axis.first().Point.first().y.append()=y;
	nominal.Axis.first().Point.first().z.append()=z;
	nominal.Sweep.append().Angle.append() = sweep;
	nominal.Axis.first().Vector.append().i.append()=i;
	nominal.Axis.first().Vector.first().j.append()=j;
	nominal.Axis.first().Vector.first().k.append()=k;

}

CFeatureConstructsType CQMREx::CreatePartInspectionMeasurement(std::string partid)
{

	_doc = QMR::CQMR::CreateDocument();
	//QMR::CUserDefinedCharacteristicInstanceType root = doc.UserDefinedCharacteristic.append();
	QMR::CInspectionType inspection = _doc.Inspection.append();
	CMeasurementResultsType MeasurementResults = inspection.MeasurementResults.append();
	// This describes inspections- pairing  characteristic tolerance with 1 or more features
	CPartsType2 parts = MeasurementResults.Parts.append();


	// Part Definition + Part Nominals
	CPartDefinitionsType partdefinitions = parts.PartDefinitions.append();
	CPartDefinitionType partdefinition = partdefinitions.PartDefinition.append();
	partdefinition.Id=partid;
	CFeatureConstructsType featureconstructs = partdefinition.FeatureConstructs.append();
	return featureconstructs;
}


QMR::CQMR  CQMREx::CylinderExample()
{
	QMR::CQMR doc = QMR::CQMR::CreateDocument();
	//QMR::CUserDefinedCharacteristicInstanceType root = doc.UserDefinedCharacteristic.append();
	QMR::CInspectionType inspection = doc.Inspection.append();
	CMeasurementResultsType MeasurementResults = inspection.MeasurementResults.append();
	// This describes inspections- pairing  characteristic tolerance with 1 or more features
	CPartsType2 parts = MeasurementResults.Parts.append();


	// Part Definition + Part Nominals
	CPartDefinitionsType partdefinitions = parts.PartDefinitions.append();
	CPartDefinitionType partdefinition = partdefinitions.PartDefinition.append();
	partdefinition.Id="partdefintion1";
	CFeatureConstructsType featureconstructs = partdefinition.FeatureConstructs.append();
	
	CFeatureDefinitionsType featuredefinitions = featureconstructs.FeatureDefinitions.append();
	CCylinderFeatureDefinitionType cylinderFeaturedefinition = featuredefinitions.CylinderFeatureDefinition.append();
	cylinderFeaturedefinition.id="cylinder1::featuredefintion1";
	cylinderFeaturedefinition.Bottom.append().SetEnumerationValue(CBottomTypeType::k_BLIND);
	cylinderFeaturedefinition.Diameter.append() = 44.0;
	cylinderFeaturedefinition.Length.append() = 30.0;
	
	CFeatureNominalsType nominals = featureconstructs.FeatureNominals.append();
	CCylinderFeatureNominalType cylindernominal = nominals.CylinderFeatureNominal.append();
	StuffCylinderFeatureNominal(cylindernominal, "cylinder1::featurenominal1", "cylinder1::featuredefintion1", 20.0,6.0, 0.0, 360.0, 0,0,1); 

	cylindernominal=nominals.CylinderFeatureNominal.append();
	StuffCylinderFeatureNominal(cylindernominal, "cylinder1::featurenominal2", "cylinder1::featuredefintion1", 40.0,6.0, 0.0, 360.0, 0,0,1); 

	// Part instance + Part Actuals
	CPartInstancesType partinstances = parts.PartInstances.append();
	CPartInstanceType partinstance = partinstances.PartInstance.append();
	partinstance.PartDefinitionId.append()="cylinder1::partdefintion1"; // points back to Part Definition
	CFeatureActualsType featureactuals = partinstance.FeatureActuals.append();
	CFeatureInstancesType featureinstances= partinstance.FeatureInstances.append();
	CCylinderFeatureActualType cylinderfeatureactual = featureactuals.CylinderFeatureActual.append();
	cylinderfeatureactual.id = "cylinder1::featureactual1";
	cylinderfeatureactual.featureNominalId = "cylinder1::featurenominal1";

	// CCylinderFeatureInstanceType
	CCylinderFeatureInstanceType cylinderfeatureinstance = featureinstances.CylinderFeatureInstance.append();
	cylinderfeatureinstance.id = "cylinder1::featureinstance1";
	cylinderfeatureinstance.FeatureNominalId.append() = "cylinder1::featurenominal1";
	cylinderfeatureinstance.FeatureActualId.append() = "cylinder1::featureactual1";
	cylinderfeatureinstance.PartDefinitionId.append() = "partdefintion1";

	// CylindricityCharacteristicInstance
	// characteristics , CConstructsType
	CCharacteristicsType characteristics = MeasurementResults.Characteristics.append();
	CConstructsType constructs = characteristics.Constructs.append();
	CCharacteristicDefinitionsType characteristicdefinitions = constructs.CharacteristicDefinitions.append();
	CCharacteristicNominalsType characteristicnominals = constructs.CharacteristicNominals.append();
	CCharacteristicActualsType characteristicactuals = constructs.CharacteristicActuals.append();

	// CConstructsType - CCylindricityCharacteristicDefinitionType
	CCylindricityCharacteristicDefinitionType cylindricitycharacteristicdefinition = characteristicdefinitions.CylindricityCharacteristicDefinition.append();
	cylindricitycharacteristicdefinition.id="cylinder1::cylindricitycharacteristicdefinition1";
	cylindricitycharacteristicdefinition.Name.append() = "CylindricityCharacteristicDefinition";
	cylindricitycharacteristicdefinition.CharacteristicValue.append() = 0.001;
	cylindricitycharacteristicdefinition.Description.append() = "The tolerance is specified by a zone bounded by two concentric circles.";
	
	// CConstructsType - CCylindricityCharacteristicNominalType
	CCylindricityCharacteristicNominalType cylindricitycharacteristicnominal = characteristicnominals.CylindricityCharacteristicNominal.append();
	cylindricitycharacteristicnominal.id = "cylinder1::cylindricitycharacteristicnominal1";
	cylindricitycharacteristicnominal.definitionId="cylinder1::cylindricitycharacteristicdefinition1";
	cylindricitycharacteristicnominal.Notes.append().NoteId.append() =	"A condition of a surface of revolution in which all points of the surface are equidistant from a common axis";
	cylindricitycharacteristicnominal.ZoneLimit.append().FromPoint.append().x.append() = 20.0; //20.0,6.0, 0.0
	cylindricitycharacteristicnominal.ZoneLimit.first().FromPoint.first().y.append() = 60.0;
	cylindricitycharacteristicnominal.ZoneLimit.first().FromPoint.first().z.append() = 0.0;

	cylindricitycharacteristicnominal.ZoneLimit.first().ToPoint.append().x.append() = 20.0;  //20.0,6.0, -30.0
	cylindricitycharacteristicnominal.ZoneLimit.first().ToPoint.first().y.append() = 6.0;
	cylindricitycharacteristicnominal.ZoneLimit.first().ToPoint.first().z.append() = -30.0;

	cylindricitycharacteristicnominal.ZoneLimit.first().ViewDirection.append().i.append()=0.0;
	cylindricitycharacteristicnominal.ZoneLimit.first().ViewDirection.first().j.append()=0.0;
	cylindricitycharacteristicnominal.ZoneLimit.first().ViewDirection.first().k.append()=-1.0;
	
	cylindricitycharacteristicnominal.ZoneLimit.first().StartDirection.append().i.append()=0.0;
	cylindricitycharacteristicnominal.ZoneLimit.first().StartDirection.first().j.append()=0.0;
	cylindricitycharacteristicnominal.ZoneLimit.first().StartDirection.first().k.append()=-1.0;

	// CConstructsType - CylindricityCharacteristicActual
	characteristicactuals.CylindricityCharacteristicActual.append().id= "cylinder1::cylindricitycharacteristicactual1";
	characteristicactuals.CylindricityCharacteristicActual.first().nominalId="cylinder1::cylindricitycharacteristicnominal1";
	
	//CCylindricityCharacteristicInstanceType
	CCylindricityCharacteristicInstanceType cylindricitycharacteristicinstance = characteristics.CylindricityCharacteristicInstance.append();
	cylindricitycharacteristicinstance.id="cylinder1::cylindricitycharacteristicinstance1";
	cylindricitycharacteristicinstance.NominalId.append() = "cylinder1::cylindricitycharacteristicnominal1";
	cylindricitycharacteristicinstance.Measurements.append().Measurement.append().ActualId.append() = "cylinder1::cylindricitycharacteristicactual1";
	cylindricitycharacteristicinstance.Units.append().LinearUnits.append()=1.0;
	cylindricitycharacteristicinstance.Units.first().UnitLabel="mm";

	// CCharacteristicFeatureRelationsType
	CCharacteristicFeatureRelationsType cfrs = MeasurementResults.CharacteristicFeatureRelations.append();
	cfrs.Relation.append().Id= "cylinder1::CharacteristicFeatureRelation1";
	cfrs.Relation.first().CharacteristicId.append() = "cylinder1::cylindricitycharacteristicinstance1";
	cfrs.Relation.first().Features.append().FeatureId.append() = "cylinder1::featureinstance1";

	//doc.SetSchemaLocation(_T("C:\\Program Files\\NIST\\proj\\MTConnect\\Nist\\QMR\\XSD2.0\\QMRTest\\Debug\\qmr.xsd"));
	doc.SaveToFile(_T("qmrcylinder.xml"), true);
	return doc;
}