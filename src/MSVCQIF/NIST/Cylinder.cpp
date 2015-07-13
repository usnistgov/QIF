//
// Cylinder.cpp
//

// This software was developed by U.S. Government employees as part of
// their official duties and is not subject to copyright. No warranty implied 
// or intended.

#include "StdAfx.h"
#include "Cylinder.h"

#define _USE_MATH_DEFINES
#include <math.h>

#include "MathHelper.h"



///////////////////////////////////////////////////////////////////////////////////////////////////////
// CCylinderFeatureMeasurement

CCylinderFeatureMeasurement::CCylinderFeatureMeasurement() 
{
	// Default: Zero depth is 2D hole measurement
	Depth()=0.0;
	Sweep()=360.0;
	BottomEnum()=k_BLIND;
}


/** compute_cylinder_nominals generates a set of circle points to measure in the cylinder. the number of circles and points
in each circle is determined by the tolerance requirement.
// N = tightness of tolerance
// height > 0 - depth of hole
// feature_placement_depth - "z" position or start/top of the hole is
*/
std::vector<std::vector<std::vector<double>>> CCylinderFeatureMeasurement::compute_cylinder_nominals( int N, double height, double radius,double feature_placement_depth, double location_X, double location_Y)
{
	static char name[] = "compute_cylinder_nominals";
	std::vector<std::vector<std::vector<double>>> set_of_pts; // output
	double segment_height;
	int nc;  // number of circles in hole
	int np;  // number of points per circle
	int num_segments;
	double circumference;
	double segment_circumference;
	double tmp_angle;

	nc = (int) (sqrt((N*height)/(2*M_PI*radius)));
	nc=4;
	std::cout << "nc " << nc << std::endl;

	// making sure we have at least a nc segments of height
	if (nc == 0)
		return set_of_pts;
	else {
		np = (int) (N/ (double)nc);
	}
	//std::cout << "np " << np << std::endl;

	segment_height = height / (double)nc;
	num_segments = nc * np;
	circumference = 2*M_PI*radius;
	segment_circumference = circumference/(double)np;

	// the alg first picks a random pt on a segment of the cirlcle then find out it's relative angle
	// once the angle is known, the x and y coordinates of the pt can be calculated using sin and cos
	for ( int i = 0; i < nc; i++ ) 
	{
		std::vector<std::vector<double>> pts;
		pts.resize( np );
		for ( int k = 0; k < np; ++k )
			pts[k].resize(3);

		for ( int j = 0; j < np; j++ ) 
		{
			double r = M::unifRand();
			double percent = ( ( (r * segment_circumference) + segment_circumference*j) /circumference ) ;
			tmp_angle = percent * 2*M_PI;
			//tmp_angle = ( ((double)(rand()%100))/100.0 * segment_circumference*j / circumference ) * 2*M_PI; // why does this mess things up?
			pts[j][0] = sin(tmp_angle)*radius+location_X;
			pts[j][1] = cos(tmp_angle)*radius+location_Y;
			pts[j][2] = i*segment_height + feature_placement_depth;
//			OutputDebugString(StdStringFormat("Angle=%8.4f Rand=%8.4f J=%d percent=%8.4f segment_circumference=%8.4f circumference=%8.4f\n", tmp_angle, r, j, percent, segment_circumference, circumference).c_str());
		}
		// output contains nc set of points
		set_of_pts.push_back(pts);
	}

	return set_of_pts;
}
/** 
*  cylindricity_measurement  computes the number of circles and points as required by the given tolerance.
*/
std::vector<std::vector<std::vector<double>>> CCylinderFeatureMeasurement::cylindricity_measurement()
{
	static char name[] = "CCylinderFeatureMeasurement::cylindricity_measuremen";
	int N;
	double height;
	double radius;
	double depth;
	double diameter;
	double tolerance_value=this->Tolerance();

	depth = Depth();
	diameter = Diameter();
	double feature_placement_depth=Depth();

	//double* pts[3];
	std::vector<std::vector<std::vector<double>>> set_of_pts;

	height = depth;
	radius = diameter/2.0;

	if (tolerance_value > 0.01 )
	{
		N = 9;
		set_of_pts = compute_cylinder_nominals( N, height, radius,feature_placement_depth, LocationX(), LocationY() );

	}
	else if (tolerance_value <= 0.01 && tolerance_value > 0.001)
	{
		N = 15;
		set_of_pts = compute_cylinder_nominals( N, height, radius,feature_placement_depth, LocationX(), LocationY());

	}
	else if (tolerance_value <= 0.001 && tolerance_value > 0.0001)
	{
		N = 20;
		set_of_pts = compute_cylinder_nominals( N, height, radius,feature_placement_depth, LocationX(), LocationY());

	}
	else if (tolerance_value <= 0.0001){
		OutputDebugString("considering stop machining and inspect on CMM\n");
	}
	else {
		OutputDebugString("can not interpret tolerance value\n");
	}

	return set_of_pts;
}
std::vector<std::vector< std::vector<double>>> CCylinderFeatureMeasurement::simulate_cylinder_points(std::vector<std::vector< std::vector<double>>> &nominal_pts, double tolerance_value)
{
	static char name[] = "simulate_cylinder_points";
	std::vector<std::vector<std::vector< std::vector<double>>>> multi_set_of_pts;
	double	radius = Diameter()/2.0;

	std::vector<std::vector< std::vector<double>>> set_of_pts;
	double lowerboundX = 0,upperboundX = 0,lowerboundY = 0,upperboundY = 0 ;

	double upX = 0;
	double upY = 0;
	double lowX = 0;
	double lowY = 0;
	double random = 0;
	double rangeX = 0;
	double rangeY = 0;
	double newX = 0;
	double newY = 0;
	double angle = 0;

	for (unsigned  int i = 0; i < nominal_pts.size(); i++ ) 
	{
		std::vector< std::vector<double>> pts = nominal_pts[i];
		std::vector< std::vector<double>> newPts;

		// Resize simulated points containers
		newPts.resize( pts.size() );
		for ( unsigned int k = 0; k <pts.size(); ++k )
			newPts[k].resize(pts[0].size());

		for ( unsigned int j = 0; j<pts.size();j++)
		{
			angle = atan(pts[j][0] / pts[j][1]); // assumes pts[j][1] <> 0!
			upX = (radius + tolerance_value)*sin(angle);
			lowX = (radius - tolerance_value)*sin(angle);
			upY = (radius +tolerance_value)*cos(angle);
			lowY = (radius - tolerance_value)*cos(angle);
			rangeX = (upX - lowX) / 0.75;
			rangeY = (upY - lowY) / 0.75;
			upperboundX = pts[j][0] + rangeX/2.0;
			lowerboundX = pts[j][0] - rangeX/2.0;
			upperboundY = pts[j][1] + rangeY/2.0;
			lowerboundY = pts[j][1] - rangeY/2.0;
			random = M::unifRand();
			newX = (upperboundX - lowerboundX) * random + lowerboundX;
			newY = (upperboundY - lowerboundY) * random + lowerboundY;

			newPts[j][0] = newX;
			newPts[j][1] = newY ;
			newPts[j][2] = pts[j][2] ;

			double d = M::unifRand(); // rand()%50 ; //((d>50)? 1 : -1 )

			 // THIS MAKES SIMULATED ACTUAL SAME AS NOMINAL
			//newPts[j][0] = pts[j][0]; //+   tolerance_value;
			//newPts[j][1] = pts[j][1];
			//newPts[j][2] = pts[j][2] ;

		}
		set_of_pts.push_back(newPts);
	}
	return set_of_pts;
}
void CCylinderFeatureMeasurement::evaluate_measured_points(std::vector<std::vector< std::vector<double>>> &actual_pts)
{
	static char name[] = "CCylinderFeatureMeasurement::evaluate_measured_points";
	int i,j;

	// Reset any filled in values
	MinRadius()=1000000000; MaxRadius()=0;
	fittedValues.clear();
	Centroid()[0]=Centroid()[1]=Centroid()[2]=std::numeric_limits<double>::quiet_NaN( );
	Direction()[0]=Direction()[1]=Direction()[2]=0;
	Status() = "No Status";

	// Assume cylinder feature properties and characteristic nominal properties established.
	double cx=LocationX();
	double cy=LocationY();
	double cz=LocationZ();

	// Compute min and max radius
	for(i=0; i<actual_pts.size(); i++)
	{
		for(j=0; j< actual_pts[i].size(); j++)
		{
			double x=actual_pts[i][j][0], y=actual_pts[i][j][1], z=actual_pts[i][j][2];
			M::Vector center(cx,cy,z);
			M::Vector point(x,y,z);
			double len= (M::Vector(point)-center).Len();
			if(len<MinRadius()) MinRadius()=len;
			if(len>MaxRadius()) MaxRadius()=len;
		}

		double a,b,r;
		std::vector<double> x;
		std::vector<double> y;
		for(j=0; j< actual_pts[i].size(); j++)
		{
			x.push_back(actual_pts[i][j][0]); y.push_back(actual_pts[i][j][1]);
		}
		int it= M::CircleFit(x.size(), &x[0], &y[0], &a,&b,&r); 
		fittedValues.push_back(std::vector<double>());
		fittedValues.back().push_back(a);fittedValues.back().push_back(b); 
		fittedValues.back().push_back(actual_pts[i][0][2]); fittedValues.back().push_back(r); 
	}
	OutputDebugString(StdStringFormat("Radius Min = %8.4f Radius Max=  %8.4f\n", MinRadius(), MaxRadius()).c_str());

	// calculate center of cylinder + direction, subtract each point from center to determine min, max radius
	// i have center and estimated radius for each circle - I want to fit line through points determine if inside 
	// Can we assume that if the radius of one center is inside

	// 1. determine if fittedValues are within tolerance of center+tolerance. Assume z correct and 0,0,1 orientation
	for(i=0; i< fittedValues.size(); i++)
	{
		double x=fittedValues[i][0], y=fittedValues[i][1], z=fittedValues[i][2], r=fittedValues[i][3];
		M::Vector center(cx,cy,z), point(x,y,z);
		double len= (M::Vector(point)-center).Len();

		std::cout<<StdStringFormat("Center = (%8.4f, %8.4f, %8.4f)", cx,cy,z);
		std::cout<<StdStringFormat(" Point = (%8.4f, %8.4f, %8.4f)", x,y,z);
		std::cout<<StdStringFormat(" Deviation = %8.4f\n", len);
	}

	std::vector<std::vector<double>> points;
	for(i=0; i< fittedValues.size(); i++)
	{
		points.push_back(std::vector<double>());
		points.back().push_back(fittedValues[i][0]); points.back().push_back(fittedValues[i][1]); points.back().push_back(fittedValues[i][2]); 
	}

	double dist1, dist2;
	M::Vector  TopCenter(LocationX(),LocationY(), LocationZ());
	M::Vector  BottomCenter(LocationX(),LocationY(), LocationZ()+ Depth());
	M::Vector centroid;
	M::Vector next;
	M::Vector dir;
	// IF M<3 i.e., LESS THAN THREE POINTS NEED TO USE DIFFERENT APPROACH 
	if(points.size()< 3)
	{
		centroid = M::Vector(fittedValues[0][0], fittedValues[0][1], fittedValues[0][2]);
		next = M::Vector(fittedValues[1][0], fittedValues[1][1], fittedValues[1][2]);
		dir = M::Vector(fittedValues[0][0], fittedValues[0][1], fittedValues[0][2]) - M::Vector(fittedValues[1][0], fittedValues[1][1], fittedValues[1][2]);
		
		dist1 = M::PointDistanceToLine(centroid, next,	TopCenter);  // assume linear cylinder should be transform
		dist2 = M::PointDistanceToLine(centroid, next,	BottomCenter);  // assume linear cylinder should be transform
	}
	else
	{
		double goodness;
		double a,b,c;
		centroid  = M::ComputeLeastSquaresBestFitLine(points,goodness, a,b,c);
		dir = M::Vector(a,b,c);

		std::cout<<"Centroid" << centroid;

		next = centroid + M::Vector(a,b,c)*10.0;
		dist1 = PointDistanceToLine(centroid, next, TopCenter);
		dist2 = PointDistanceToLine(centroid, next,	BottomCenter);

	}
	M::Vector newAxis = ClosetPointToLine(next, centroid, TopCenter);
	Centroid()[0]=newAxis.x(); Centroid()[1]=newAxis.y(); Centroid()[2]=newAxis.z();
	
	dir.Normalize();
	Direction()[0]=dir.x(); Direction()[1]=dir.y(); Direction()[2]=dir.z();

	Status() = (dist1<Tolerance() && dist2<Tolerance())? "Go" : "No go";

	std::cout<<"Location =(" << cx << "," << cy << "," << cz << ")\n";
	std::cout<<"Axis " << newAxis;
	std::cout<<"Direction " << dir;
	std::cout<<"Next" <<next;
	std::cout<<StdStringFormat(" Dist1 = %8.4f  Dist2 = %8.4f Status=%s\n", dist1, dist2, Status().c_str());

}
///////////////////////////////////////////////////////////////////////////////////////////////////////
// CQmrCylinderFeatureMeasurement
int CQmrCylinderFeatureMeasurement::QmrCrack(MSXML2::IXMLDOMNodePtr root, MSXML2::IXMLDOMNodePtr relation, int featureNum)
{
	static char name[] = "CCylinderFeatureMeasurement::Crack";
	int j=featureNum;

	cfr= CCharacteristicFeatureRelation::CrackCharacteristicFeature(root,relation) ;

	characteristicinstance = cfr.characteristicInstance;
	characteristicDefinition=cfr.characteristicDefinition.GetNode();
	characteristicNominal=cfr.characteristicNominal.GetNode();
	featureinstance = cfr.featureInstances[j];  // FIXME: can be multiple feature instances with same characteristic

	bstr_t tag = (featureinstance.GetNode()!=NULL) ? featureinstance.GetNode()->nodeName : "";
	if(tag == _bstr_t("CylinderFeatureInstance"))
	{
		cylinderinstance= featureinstance.GetNode();
		cylinderdefinition= cfr.featureDefinitions[j].GetNode();
		cylindernominal= cfr.featureNominals[j].GetNode();
		cylinderactual=CCharacteristicFeatureRelation::GetNodeFromUniqueId(root, cylinderinstance.FeatureActualId.first());

		Depth() = cylinderdefinition.Length.first();
		Diameter() = cylinderdefinition.Diameter.first();
		LocationX() = cylindernominal.Axis.first().Point.first().x.first();
		LocationY() = cylindernominal.Axis.first().Point.first().y.first();
		LocationZ() = cylindernominal.Axis.first().Point.first().z.first();

		// Characteristic parameters
		try {
			Tolerance()=characteristicDefinition.CharacteristicValue.first();
			if(characteristicNominal.ZoneLimit.first().GetNode() == NULL)
			{
				// Not really optional...
				return 0;
			}
			if( characteristicNominal.ZoneLimit.first().FromPoint.first().GetNode() !=NULL)
			{
				FromPoint()[0] = characteristicNominal.ZoneLimit.first().FromPoint.first().x.first();
				FromPoint()[1] = characteristicNominal.ZoneLimit.first().FromPoint.first().y.first();
				FromPoint()[2] = characteristicNominal.ZoneLimit.first().FromPoint.first().z.first();
			}
			if(characteristicNominal.ZoneLimit.first().ToPoint.first().GetNode() !=NULL)
			{			
				ToPoint()[0] = characteristicNominal.ZoneLimit.first().ToPoint.first().x.first();
				ToPoint()[1] = characteristicNominal.ZoneLimit.first().ToPoint.first().y.first();
				ToPoint()[2] = characteristicNominal.ZoneLimit.first().ToPoint.first().z.first();
			}
			if(characteristicNominal.ZoneLimit.first().StartDirection.first().GetNode() !=NULL)
			{		
				StartDirection()[0] = characteristicNominal.ZoneLimit.first().StartDirection.first().i.first();
				StartDirection()[1] = characteristicNominal.ZoneLimit.first().StartDirection.first().j.first();
				StartDirection()[2] = characteristicNominal.ZoneLimit.first().StartDirection.first().k.first();
			}
			if(characteristicNominal.ZoneLimit.first().ViewDirection.first().GetNode() !=NULL)
			{			
				ViewDirection()[0] = characteristicNominal.ZoneLimit.first().ViewDirection.first().i.first();
				ViewDirection()[1] = characteristicNominal.ZoneLimit.first().ViewDirection.first().j.first();
				ViewDirection()[2] = characteristicNominal.ZoneLimit.first().ViewDirection.first().k.first();
			}
		}
		catch(...)
		{
			OutputDebugString("CCylinderFeatureMeasurement::Crack Error\n");
		}

		return 0;
	}

	return -1;

}
void CQmrCylinderFeatureMeasurement::QmrAddCylindricityNominals(MSXML2::IXMLDOMNodePtr root, MSXML2::IXMLDOMNodePtr relation, int featureNum)
{
	QmrCrack(root, relation, featureNum);
	// FIXME: units - insure mm?
	nominal_pts = cylindricity_measurement();
	CPointListType2 nominalpointlist = cylindernominal.PointList.append();
			
	CQMREx::StuffPoints(nominalpointlist.GetNode(), nominal_pts);
	//OutputDebugString("Nominals\n"); OutputDebugString(DumpPoints(nominal_pts).c_str());

}
void CQmrCylinderFeatureMeasurement::QmrSimulateCylindricityActuals(MSXML2::IXMLDOMNodePtr root, MSXML2::IXMLDOMNodePtr relation, int featureNum, bool bFail)
{
	QmrCrack( root, relation,  featureNum);
	CPointListType2 nominalpointlist =  cylindernominal.PointList.first();
	nominal_pts.clear();

	CQMREx::UnstuffPoints(nominalpointlist.GetNode(), nominal_pts); // Get teh nominal points
	actual_pts.clear();
	double t=Tolerance();
	
	if(bFail) 
		t=t*2.0;
	else
		t=t/2.0;
	actual_pts = simulate_cylinder_points( nominal_pts,  t);

	// OutputDebugString("Actuals\n"); 	OutputDebugString(DumpPoints(actual_pts).c_str()); 

	// Remove existing points for this feature measurement
	if(cylinderactual.PointList.count() > 0 )
		cylinderactual.PointList.remove();
	CPointListType actualpointlist=cylinderactual.PointList.append();
	CQMREx::StuffPoints(actualpointlist.GetNode(), actual_pts);

}
void CQmrCylinderFeatureMeasurement::QmrEvaluateActuals(MSXML2::IXMLDOMNodePtr root, MSXML2::IXMLDOMNodePtr relation, int featureNum)
{
	QmrCrack( root, relation,  featureNum);

	if(cylinderactual.PointList.count() == 0)
	{
		throw std::exception("QmrEvaluateActuals Exception - No actual measured points to evaluate", NO_MEASURED_POINTS_TO_EVALUATE);

	}
	// FIXME: other error possibilities...

	CPointListType actualpointlist = cylinderactual.PointList.first();
	CQMREx::UnstuffPoints(actualpointlist.GetNode(), actual_pts); // Get the actual points
	evaluate_measured_points(actual_pts);

	// Record XML results
	cylinderactual.Axis.remove();
	cylinderactual.Axis.append().Point.append().x.append() = Centroid()[0];
	cylinderactual.Axis.first().Point.first().y.append() = Centroid()[1];
	cylinderactual.Axis.first().Point.first().z.append() = Centroid()[2];
	cylinderactual.Axis.first().Vector.append().i.append() = Direction()[0];
	cylinderactual.Axis.first().Vector.first().j.append() = Direction()[1];
	cylinderactual.Axis.first().Vector.first().k.append() = Direction()[2];

	cylinderactual.DiameterMax.remove();
	cylinderactual.DiameterMin.remove();
	cylinderactual.DiameterMax.append() = MaxRadius();
	cylinderactual.DiameterMin.append() = MinRadius();

	cfr.characteristicActuals[0].Status.remove();
	cfr.characteristicActuals[0].Status.append()=Status();

}
MSXML2::IXMLDOMNodePtr CQmrCylinderFeatureMeasurement::AddQmrFeatureDefinition(CFeatureConstructsType featureconstructs)
{
	CFeatureDefinitionsType featuredefinitions = featureconstructs.FeatureDefinitions.append();
	CCylinderFeatureDefinitionType cylinderFeaturedefinition = featuredefinitions.CylinderFeatureDefinition.append();
	definitionId=Id()+ "::featuredefintion";
	cylinderFeaturedefinition.id=definitionId.c_str(); // "cylinder1::featuredefintion1";
	if(this->BottomEnum() == CBottomTypeType::k_BLIND)
		cylinderFeaturedefinition.Bottom.append().SetEnumerationValue(CBottomTypeType::k_BLIND);
	else
		cylinderFeaturedefinition.Bottom.append().SetEnumerationValue(CBottomTypeType::k_THROUGH);

	cylinderFeaturedefinition.Diameter.append() = Diameter();
	cylinderFeaturedefinition.Length.append() = Depth();
	return cylinderFeaturedefinition.GetNode();
}	
MSXML2::IXMLDOMNodePtr CQmrCylinderFeatureMeasurement::AddQmrFeatureNominal(CFeatureConstructsType featureconstructs)
{
	CFeatureNominalsType nominals = featureconstructs.FeatureNominals.append();
	CCylinderFeatureNominalType cylindernominal = nominals.CylinderFeatureNominal.append();
	featurenominalid=Id() + "::featurenominal1";
	cylindernominal.id=featurenominalid;
	cylindernominal.definitionId=definitionId;
	cylindernominal.Axis.append().Point.append().x.append()=AxisPoint()[0];
	cylindernominal.Axis.first().Point.first().y.append()=AxisPoint()[1];
	cylindernominal.Axis.first().Point.first().z.append()=AxisPoint()[2];
	cylindernominal.Sweep.append().Angle.append() = Sweep();
	cylindernominal.Axis.first().Vector.append().i.append()=AxisDirection()[0];
	cylindernominal.Axis.first().Vector.first().j.append()=AxisDirection()[1];
	cylindernominal.Axis.first().Vector.first().k.append()=AxisDirection()[2];
	return cylindernominal.GetNode();
}


