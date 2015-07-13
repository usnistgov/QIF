//
// Features.h
//

// This software was developed by U.S. Government employees as part of
// their official duties and is not subject to copyright. No warranty implied 
// or intended.

#pragma once
#include <string>
#include <boost/assign/std/vector.hpp>
#include "QMR.h"

using namespace QMR;
using namespace boost::assign;

// Errors for now
#define DIRECTION_MUST_NOT_BE_NULL 1
#define CAN_ONLY_HANDLE_HEIGHT_SIZE_TOLERANCE_ON_POCKET 2
#define CAN_ONLY_HANDLE_HEIGHT_SIZE_TOLERANCE 3
#define CAN_ONLY_HANDLE_SIZE_TOLERANCE 4
#define NO_MEASURED_POINTS_TO_EVALUATE 5



typedef double Vector[3];
typedef std::vector<double> ListOfDouble;
typedef std::vector<double> cartesian_point;


#ifndef PROPERTY
#define PROPERTY(TYPE, NAME) TYPE _##NAME; TYPE & NAME() { return _##NAME; }
#endif

typedef double Vector[3];

class CCharacteristicFeatureRelation
{
public:
	CCharacteristicFeatureRelation() : _relation(NULL), 
		characteristicInstance(NULL),
		characteristicNominal(NULL),
		characteristicDefinition(NULL)
	{
	}
	static CCharacteristicFeatureRelation CrackCharacteristicFeature(MSXML2::IXMLDOMNodePtr root, MSXML2::IXMLDOMNodePtr relation);
	static MSXML2::IXMLDOMNodePtr GetNodeFromUniqueId(MSXML2::IXMLDOMNodePtr root, std::string id);
	CRelationType _relation;

	std::string CharacteristicInstanceId;
	CCharacteristicInstanceType characteristicInstance;
	CCharacteristicNominalType characteristicNominal;
	CCharacteristicDefinitionType characteristicDefinition;
	std::vector<CCharacteristicActualType> characteristicActuals;

	std::vector<std::string> featureinstanceids;
	std::vector<CFeatureInstanceType> featureInstances;
	std::vector<CFeatureNominalType> featureNominals;
	std::vector<CFeatureDefinitionType> featureDefinitions;
	std::vector<CFeatureActualType> featureActuals;
	
};

class CQMREx
{
public:

	CQMREx()  : _doc(NULL)
	{
		 //_doc = QMR::CQMR::CreateDocument();
	}
	CQMREx(QMR::CQMR doc) : _doc(doc)
	{

	}
	// TO SAVE: doc.SaveToFile(_T("qmrcylinderplan.xml"), true);
	int CrackCharacteristicFeatures();
	bool IsA(MSXML2::IXMLDOMNodePtr node, std::string type);
	std::vector<CRelationType> GetRelations();
	void Plan();
	void Simulate(bool bFail=false);
	void Evaluate();
	static QMR::CQMR  CylinderExample();

	// with this you can add a feature and measurement
	CFeatureConstructsType CQMREx::CreatePartInspectionMeasurement(std::string partid);

	static int StuffPoints( MSXML2::IXMLDOMNodePtr pointlist, std::vector<std::vector<std::vector<double>>> &points);
	static int UnstuffPoints( MSXML2::IXMLDOMNodePtr pointlist, std::vector<std::vector<std::vector<double>>> & points);
	/////////////////////////////////////////////////////////////
	QMR::CQMR _doc;
	std::vector<CCharacteristicFeatureRelation> _crackedrelations;

};

