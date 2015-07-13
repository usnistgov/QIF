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
	_Point text 
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
	_UnitVector text 
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
	_QIFReference text 
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


