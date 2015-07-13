DROP TABLE IF EXISTS Attributes;
CREATE TABLE Attributes (
	index  SERIAL PRIMARY KEY,
	N text,-- attribute
	__Attribute integer[]  -- index into table AttributeBaseType 
) ;

DROP TABLE IF EXISTS QIFDocument;
CREATE TABLE QIFDocument (
	index  SERIAL PRIMARY KEY,
	versionQIF text,-- attribute
	idMax text NOT NULL,-- attribute
	_Attributes integer, -- index into table AttributesType 
	_VersionHistory integer, -- index into table VersionHistoryType 
	_Version integer, -- index into table VersionType 
	_Header integer, -- index into table QIFDocumentHeaderType 
	_PreInspectionTraceability integer, -- index into table PreInspectionTraceabilityType 
	_FileUnits integer, -- index into table FileUnitsType 
	_DatumDefinitions integer, -- index into table DatumDefinitionsType 
	_DatumTargetDefinitions integer, -- index into table DatumTargetDefinitionsType 
	_Transforms integer, -- index into table TransformListType 
	_CoordinateSystems integer, -- index into table CoordinateSystemListType 
	_DatumReferenceFrames integer, -- index into table DatumReferenceFramesType 
	_MeasurementResources integer, -- index into table MeasurementResourcesType 
	_ThreadSpecifications integer, -- index into table ThreadSpecificationsType 
	_Product integer, -- index into table ProductType 
	_Features integer, -- index into table FeatureAspectsListsType 
	_Characteristics integer, -- index into table CharacteristicAspectsListsType 
	_MeasurementPlan integer, -- index into table MeasurementPlanType 
	_MeasurementsResults integer, -- index into table MeasurementsResultsType 
	_Statistics integer, -- index into table StatisticsType 
	_ManufacturingProcessTraceabilities integer, -- index into table ManufacturingProcessTraceabilitiesType 
	_Rules integer, -- index into table QIFRulesType 
	_UserDataXML integer  -- index into table UserDataXMLType 
) ;


