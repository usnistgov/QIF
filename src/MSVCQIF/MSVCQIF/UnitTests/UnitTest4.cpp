//
// UnitTest4.cpp
//

// This software was developed by U.S. Government employees as part of
// their official duties and is not subject to copyright. No warranty implied 
// or intended.


/**
This tests 

 <xs:complexType name="CharacteristicActualsType">
    <xs:sequence>
      <xs:element ref="CharacteristicActual"    maxOccurs="unbounded"/>
    </xs:sequence>

  <xs:element name="CharacteristicActual"  type="CharacteristicActualBaseType">
    <xs:annotation>
      <xs:documentation>
        The global CharacteristicActual element is the head of a
        substitution group. Any element that is a member of the group may
        be substituted for the CharacteristicActual element anywhere the
        CharacteristicActual element may be used in an instance file.
      </xs:documentation>
    </xs:annotation>
  </xs:element>
  </xs:complexType>
 
    <xs:element name="AngleBetweenCharacteristicActual"   type="AngleBetweenCharacteristicActualType"  substitutionGroup="CharacteristicActual"/>

   <xs:complexType name="CharacteristicActualBaseType"  abstract="true">
    <xs:complexContent>
      <xs:extension base="CharacteristicBaseType">
        <xs:sequence>
          <xs:element name="Status"  type="CharacteristicStatusType">
          <xs:element name="CharacteristicItemId"         type="QIFReferenceFullType">
          <xs:element name="FeatureActualIds"         type="ArrayReferenceFullType"            minOccurs="0">
          <xs:element name="ActualComponentId"         type="QIFReferenceFullType"         minOccurs="0">
          <xs:element name="MeasurementDeviceIds"        type="ArrayReferenceFullType"         minOccurs="0">
          <xs:element name="ManufacturingProcessId"    type="QIFReferenceFullType"         minOccurs="0">
          <xs:element name="NotedEventIds"      type="ArrayReferenceFullType"            minOccurs="0">
          <xs:element name="NonConformanceDesignator"          type="xs:token"            minOccurs="0">
        </xs:sequence>
      </xs:extension>
    </xs:complexContent>
  </xs:complexType>

*/
void UnitTest4(CXsdParser &parser)
{
	CFairReports fair;
	std::string str;
	CXmlAndSql sqlhandler(parser._symbols);
	parser._symbols.Clear();
	parser.BuildXsdTypes(StringVector(
		std::string("AngleBetweenCharacteristicActualType"), 
		std::string("CharacteristicBaseType"),
		std::string("CharacteristicActualBaseType"),
		std::string("CharacteristicActualsType"),
		std::string("ArrayReferenceFullType"),
		std::string("QIFReferenceFullType"),
		std::string("QIFReferenceType"),
		std::string("AttributesType"),
		std::string("AttributeBaseType"),
		std::string("CharacteristicStatusType"),
		std::string("ActualAngularValueType"),
		std::string("ActualUnitVectorType"),
		std::string("UnitVectorType"),
		std::string("ActualPointType"),
		std::string("PointType"),
		std::string())
		);

	XSElementDeclaration * xsElem = parser.FindXsdElement("AngleBetweenCharacteristicActual");
	parser.BuildXsdElement(xsElem );
	parser.BuildSubstitutionGroupAliasing(xsElem);

	parser.ResolveParentHierarchy();


	str+=sqlhandler.CreateSqlTablesFromAllTypes(StringVector ());

	fair.SaveReport(CFairReports::ExeDirectory()+ "UnitTests\\Test4.sql", str);
}


/**
 
 DROP TABLE IF EXISTS ActualAngularValue;
CREATE TABLE ActualAngularValue (
	index  SERIAL PRIMARY KEY,
	angularUnit text NOT NULL,-- attribute
	combinedUncertainty text NOT NULL,-- attribute
	meanError text NOT NULL,-- attribute
	decimalPlaces text NOT NULL,-- attribute
	significantFigures text NOT NULL,-- attribute
	_ActualDecimal text 
) ;

DROP TABLE IF EXISTS ActualPoint;
CREATE TABLE ActualPoint (
	index  SERIAL PRIMARY KEY,
	combinedUncertainty text NOT NULL,-- attribute
	meanError text NOT NULL,-- attribute
	xCombinedUncertainty text NOT NULL,-- attribute
	xMeanError text NOT NULL,-- attribute
	yCombinedUncertainty text NOT NULL,-- attribute
	yMeanError text NOT NULL,-- attribute
	zCombinedUncertainty text NOT NULL,-- attribute
	zMeanError text NOT NULL,-- attribute
	linearUnit text NOT NULL,-- attribute
	decimalPlaces text NOT NULL,-- attribute
	significantFigures text NOT NULL,-- attribute
	validity text NOT NULL,-- attribute
	xDecimalPlaces text NOT NULL,-- attribute
	xSignificantFigures text NOT NULL,-- attribute
	xValidity text NOT NULL,-- attribute
	yDecimalPlaces text NOT NULL,-- attribute
	ySignificantFigures text NOT NULL,-- attribute
	yValidity text NOT NULL,-- attribute
	zDecimalPlaces text NOT NULL,-- attribute
	zSignificantFigures text NOT NULL,-- attribute
	zValidity text NOT NULL,-- attribute
	linearUnit text NOT NULL,-- attribute
	decimalPlaces text NOT NULL,-- attribute
	significantFigures text NOT NULL,-- attribute
	validity text NOT NULL,-- attribute
	xDecimalPlaces text NOT NULL,-- attribute
	xSignificantFigures text NOT NULL,-- attribute
	xValidity text NOT NULL,-- attribute
	yDecimalPlaces text NOT NULL,-- attribute
	ySignificantFigures text NOT NULL,-- attribute
	yValidity text NOT NULL,-- attribute
	zDecimalPlaces text NOT NULL,-- attribute
	zSignificantFigures text NOT NULL,-- attribute
	zValidity text NOT NULL,-- attribute
	_PointSimple FLOAT[3] 
) ;

DROP TABLE IF EXISTS ActualUnitVector;
CREATE TABLE ActualUnitVector (
	index  SERIAL PRIMARY KEY,
	combinedUncertainty text NOT NULL,-- attribute
	meanError text NOT NULL,-- attribute
	xCombinedUncertainty text NOT NULL,-- attribute
	xMeanError text NOT NULL,-- attribute
	yCombinedUncertainty text NOT NULL,-- attribute
	yMeanError text NOT NULL,-- attribute
	zCombinedUncertainty text NOT NULL,-- attribute
	zMeanError text NOT NULL,-- attribute
	linearUnit text NOT NULL,-- attribute
	decimalPlaces text NOT NULL,-- attribute
	significantFigures text NOT NULL,-- attribute
	validity text NOT NULL,-- attribute
	xDecimalPlaces text NOT NULL,-- attribute
	xSignificantFigures text NOT NULL,-- attribute
	xValidity text NOT NULL,-- attribute
	yDecimalPlaces text NOT NULL,-- attribute
	ySignificantFigures text NOT NULL,-- attribute
	yValidity text NOT NULL,-- attribute
	zDecimalPlaces text NOT NULL,-- attribute
	zSignificantFigures text NOT NULL,-- attribute
	zValidity text NOT NULL,-- attribute
	linearUnit text NOT NULL,-- attribute
	decimalPlaces text NOT NULL,-- attribute
	significantFigures text NOT NULL,-- attribute
	validity text NOT NULL,-- attribute
	xDecimalPlaces text NOT NULL,-- attribute
	xSignificantFigures text NOT NULL,-- attribute
	xValidity text NOT NULL,-- attribute
	yDecimalPlaces text NOT NULL,-- attribute
	ySignificantFigures text NOT NULL,-- attribute
	yValidity text NOT NULL,-- attribute
	zDecimalPlaces text NOT NULL,-- attribute
	zSignificantFigures text NOT NULL,-- attribute
	zValidity text NOT NULL,-- attribute
	_UnitVectorSimple FLOAT[3] 
) ;

DROP TABLE IF EXISTS AngleBetweenCharacteristicActual;
CREATE TABLE AngleBetweenCharacteristicActual (
	index  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table AttributesType 
	Description text, 
	_Status integer, -- index into table CharacteristicStatusType 
	_CharacteristicItemId integer, -- index into table QIFReferenceFullType 
	_FeatureActualIds integer, -- index into table ArrayReferenceFullType 
	_ActualComponentId integer, -- index into table QIFReferenceFullType 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFullType 
	_ManufacturingProcessId integer, -- index into table QIFReferenceFullType 
	_NotedEventIds integer, -- index into table ArrayReferenceFullType 
	NonConformanceDesignator text, 
	_Value integer, -- index into table ActualAngularValueType 
	_MaxValue integer, -- index into table ActualAngularValueType 
	_MinValue integer, -- index into table ActualAngularValueType 
	_AnalysisVector integer, -- index into table ActualUnitVectorType 
	_Vertex integer  -- index into table ActualPointType 
) ;

DROP TABLE IF EXISTS ArrayReferenceFull;
CREATE TABLE ArrayReferenceFull (
	index  SERIAL PRIMARY KEY,
	N text,-- attribute
	__Id integer[]  -- index into table QIFReferenceFullType 
) ;

DROP TABLE IF EXISTS AttributeBase;
CREATE TABLE AttributeBase (
	index  SERIAL PRIMARY KEY,
	name text -- attribute
) ;

DROP TABLE IF EXISTS Attributes;
CREATE TABLE Attributes (
	index  SERIAL PRIMARY KEY,
	N text,-- attribute
	__Attribute integer[]  -- index into table AttributeBaseType 
) ;

DROP TABLE IF EXISTS CharacteristicActualBase;
CREATE TABLE CharacteristicActualBase (
	index  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table AttributesType 
	Description text, 
	_Status integer, -- index into table CharacteristicStatusType 
	_CharacteristicItemId integer, -- index into table QIFReferenceFullType 
	_FeatureActualIds integer, -- index into table ArrayReferenceFullType 
	_ActualComponentId integer, -- index into table QIFReferenceFullType 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFullType 
	_ManufacturingProcessId integer, -- index into table QIFReferenceFullType 
	_NotedEventIds integer, -- index into table ArrayReferenceFullType 
	NonConformanceDesignator text  
) ;

DROP TABLE IF EXISTS CharacteristicActuals;
CREATE TABLE CharacteristicActuals (
	index  SERIAL PRIMARY KEY,
	_AngleBetweenCharacteristicActual integer  -- index into table AngleBetweenCharacteristicActualType 
) ;

DROP TABLE IF EXISTS CharacteristicBase;
CREATE TABLE CharacteristicBase (
	index  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table AttributesType 
	Description text  
) ;

DROP TABLE IF EXISTS CharacteristicStatus;
CREATE TABLE CharacteristicStatus (
	index  SERIAL PRIMARY KEY,
	CharacteristicStatusEnum CharacteristicStatusEnumType, 
	OtherCharacteristicStatus text  
) ;

DROP TABLE IF EXISTS Point;
CREATE TABLE Point (
	index  SERIAL PRIMARY KEY,
	linearUnit text NOT NULL,-- attribute
	decimalPlaces text NOT NULL,-- attribute
	significantFigures text NOT NULL,-- attribute
	validity text NOT NULL,-- attribute
	xDecimalPlaces text NOT NULL,-- attribute
	xSignificantFigures text NOT NULL,-- attribute
	xValidity text NOT NULL,-- attribute
	yDecimalPlaces text NOT NULL,-- attribute
	ySignificantFigures text NOT NULL,-- attribute
	yValidity text NOT NULL,-- attribute
	zDecimalPlaces text NOT NULL,-- attribute
	zSignificantFigures text NOT NULL,-- attribute
	zValidity text NOT NULL,-- attribute
	_PointSimple FLOAT[3] 
) ;

DROP TABLE IF EXISTS QIFReferenceFull;
CREATE TABLE QIFReferenceFull (
	index  SERIAL PRIMARY KEY,
	asmPath text NOT NULL,-- attribute
	_QIFId integer 
) ;

DROP TABLE IF EXISTS QIFReference;
CREATE TABLE QIFReference (
	index  SERIAL PRIMARY KEY,
	_QIFId integer 
) ;

DROP TABLE IF EXISTS UnitVector;
CREATE TABLE UnitVector (
	index  SERIAL PRIMARY KEY,
	linearUnit text NOT NULL,-- attribute
	decimalPlaces text NOT NULL,-- attribute
	significantFigures text NOT NULL,-- attribute
	validity text NOT NULL,-- attribute
	xDecimalPlaces text NOT NULL,-- attribute
	xSignificantFigures text NOT NULL,-- attribute
	xValidity text NOT NULL,-- attribute
	yDecimalPlaces text NOT NULL,-- attribute
	ySignificantFigures text NOT NULL,-- attribute
	yValidity text NOT NULL,-- attribute
	zDecimalPlaces text NOT NULL,-- attribute
	zSignificantFigures text NOT NULL,-- attribute
	zValidity text NOT NULL,-- attribute
	_UnitVectorSimple FLOAT[3] 
) ;




*/