//
// Cylinder.h - Cylinder Feature and Measurement Handling
//

// This software was developed by U.S. Government employees as part of
// their official duties and is not subject to copyright. No warranty implied 
// or intended.

#pragma once

#include "Features.h"

#ifndef PROPERTY
#define IPROPERTY(TYPE, NAME)  virtual TYPE & NAME() =0;
#define PROPERTY(TYPE, NAME) TYPE _##NAME; TYPE & NAME() { return _##NAME; }
#endif

/**
 This is the abstract definition of cylinder and measurablable tolerance information.
*/
class ICylindricity
{
public:
	enum EBottomTypeEnum {
		Invalid = -1,
		k_BLIND = 0, // BLIND
		k_THROUGH = 1, // THROUGH
		EnumValueCount
	};	

	// Cylindricity Tolerance & Measurement Information - inputs
	IPROPERTY(double, Tolerance);
	IPROPERTY(Vector, FromPoint);
	IPROPERTY(Vector, ToPoint);
	IPROPERTY(Vector, StartDirection);
	IPROPERTY(Vector, ViewDirection);
	// Cylindricity Tolerance & Measurement Information - outputs
	IPROPERTY(std::string, Status);
	IPROPERTY(double, MinRadius);
	IPROPERTY(double, MaxRadius);
	IPROPERTY(Vector, Centroid);  //  measured point of  cylinder axis
	IPROPERTY(Vector, Direction); //  direction vector of measured  axis
	// OMITTED: ZoneAxis for now - allows for variable non-center tolerance zone
};

/**
CCylinderFeatureMeasurement is the class definition implementing the  ICylindricity  abstract definition and adding 
some methods for generating nominal points to measure in the cylinder, simulating actual points (either with good or bad results) 
and  evaluating a set of actual measured points.  
*/

class CCylinderFeatureMeasurement : public ICylindricity
{
public:

	CCylinderFeatureMeasurement() ;

	// FIXME: add inited flag

	// Feature information
	PROPERTY(std::string, Id);
	PROPERTY(double, Diameter);
	PROPERTY(double, Depth);
	PROPERTY(double, LocationX);
	PROPERTY(double, LocationY);
	PROPERTY(double, LocationZ);
	PROPERTY(EBottomTypeEnum, BottomEnum);
	PROPERTY(std::string, FeatureId);
	PROPERTY(Vector, AxisPoint);
	PROPERTY(Vector, AxisDirection);
	PROPERTY(double, Sweep);

	PROPERTY(double, Tolerance);
	PROPERTY(Vector, FromPoint);
	PROPERTY(Vector, ToPoint);
	PROPERTY(Vector, StartDirection);
	PROPERTY(Vector, ViewDirection);

	PROPERTY(std::string, Status);
	PROPERTY(double, MinRadius);
	PROPERTY(double, MaxRadius);
	PROPERTY(Vector, Centroid);  //  measured point of  cylinder axis
	PROPERTY(Vector, Direction); //  direction vector of measured  axis

protected:

	std::vector<std::vector<std::vector<double>>> cylindricity_measurement();
	std::vector<std::vector<std::vector<double>>> compute_cylinder_nominals( int N, double height, double radius,double feature_placement_depth, double location_X, double location_Y);
	std::vector<std::vector<std::vector<double>>> simulate_cylinder_points(std::vector<std::vector< std::vector<double>>> &sets_of_cylinder_pts,double tolerance_value);
	void evaluate_measured_points(std::vector<std::vector< std::vector<double>>> &sets_of_cylinder_pts);

	//int least_square_fit_cylinder(std::vector<std::vector< std::vector<double>>>& cylinder_pts, double tolerance_value);
	////////////////////////////////////////
	std::vector<std::vector<std::vector<double>>> set_of_pts;	
	std::vector<std::vector<std::vector<std::vector<double>>>> multi_set_of_pts;	
	std::vector<std::vector<std::vector<double>>>  nominal_pts;
	std::vector<std::vector<std::vector<double>>> actual_pts;
	std::vector< std::vector<double>> fittedValues; // centerx,centery,centerz,r 
};

/**
CQmrCylinderFeatureMeasurement extends CCylinderFeatureMeasurement with code to handle planning, simulating and evaluating cylinder by 
integrating with QMR XML. It has code to “crack” the various QMR XML pieces to manipulate feature, characteristic tolerance, 
and measurement results.
*/
class CQmrCylinderFeatureMeasurement : public CCylinderFeatureMeasurement
{
public:
	CQmrCylinderFeatureMeasurement() :
	characteristicinstance(NULL) ,
	characteristicDefinition(NULL),
	characteristicNominal(NULL),
	 featureinstance(NULL),  // FIXME: can be multiple feature instances with same characteristic
	 cylinderinstance(NULL),
	 cylinderdefinition(NULL),
	 cylindernominal(NULL),
	 cylinderactual(NULL)
	{

	}

	CCharacteristicFeatureRelation cfr;

	CCharacteristicInstanceType characteristicinstance ;
	CCylindricityCharacteristicDefinitionType characteristicDefinition;
	CCylindricityCharacteristicNominalType characteristicNominal;
	CFeatureInstanceType featureinstance;  // FIXME: can be multiple feature instances with same characteristic
	CCylinderFeatureInstanceType cylinderinstance;
	CCylinderFeatureDefinitionType cylinderdefinition;
	CCylinderFeatureNominalType cylindernominal;
	CCylinderFeatureActualType cylinderactual;

	MSXML2::IXMLDOMNodePtr  AddQmrFeatureNominal(CFeatureConstructsType featureconstructs);
	MSXML2::IXMLDOMNodePtr  AddQmrFeatureDefinition(CFeatureConstructsType featureconstructs);

	void QmrAddCylindricityNominals(MSXML2::IXMLDOMNodePtr root, MSXML2::IXMLDOMNodePtr relation, int featureNum);
	void QmrSimulateCylindricityActuals(MSXML2::IXMLDOMNodePtr root, MSXML2::IXMLDOMNodePtr relation, int featureNum, bool bFail);
	void QmrEvaluateActuals(MSXML2::IXMLDOMNodePtr root, MSXML2::IXMLDOMNodePtr relation, int featureNum);

	int QmrCrack(MSXML2::IXMLDOMNodePtr root, MSXML2::IXMLDOMNodePtr relation, int featureNum);

protected:
	std::string definitionId;
	std::string featurenominalid;

};