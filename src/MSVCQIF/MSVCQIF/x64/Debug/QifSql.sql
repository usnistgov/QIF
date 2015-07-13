CREATE TYPE ActionToTakeEnumType AS ENUM ('HALT_PRODUCTION','CONTAINMENT','NEW_MATERIAL_BATCH','NEW_TOOLING','INSPECT_100PC','REBOOT','RECALIBRATE','OTHER');
CREATE TYPE AddressDescriptionEnumType AS ENUM ('DELIVERY','POSTAL','VISITOR','NOTDEFINED');
CREATE TYPE AngleBetweenAnalysisModeEnumType AS ENUM ('TWODIMENSIONAL','THREEDIMENSIONAL');
CREATE TYPE AngularCoordinateDirectionEnumType AS ENUM ('ANGULAR','AZIMUTH','POLAR');
CREATE TYPE ArcConicFormEnumType AS ENUM ('PARABOLA','ELLIPSE','HYPERBOLA');
CREATE TYPE AssignableCauseEnumType AS ENUM ('POWER_FAILURE','BROKEN_TOOL','COMPUTER_CRASH','WEATHER_EVENT','OTHER');
CREATE TYPE Attr23CoreEnumType AS ENUM ('FREEFORM','CYLINDER','CONE','TORUS','SPHERE','PLANE');
CREATE TYPE BooleanConstantEnumType AS ENUM ('QIF_TRUE','QIF_FALSE');
CREATE TYPE BottomEnumType AS ENUM ('BLIND','THROUGH','UNDEFINED');
CREATE TYPE CMMDirectionEnumType AS ENUM ('RIGHT','LEFT','FRONT','BACK','UP','DOWN');
CREATE TYPE CMMGeometryEnumType AS ENUM ('CANTILEVER','BRIDGEMOVINGBRIDGE','BRIDGEMOVINGTABLE','COLUMN','GANTRY','HORIZONTALARMMOVINGARM','HORIZONTALARMMOVINGTABLE','ARTICULATEDARM');
CREATE TYPE CameraFormEnumType AS ENUM ('ORTHOGRAPHIC','PERSPECTIVE');
CREATE TYPE CharacteristicStatusEnumType AS ENUM ('PASS','FAIL','REWORK','SYSERROR','INDETERMINATE','NOT_ANALYZED','BASIC','UNDEFINED');
CREATE TYPE CharacteristicTypeEnumType AS ENUM ('ANGLE','ANGLECOORDINATE','ANGLEFROM','ANGLEBETWEEN','ANGULARITY','CHORD','CIRCULARITY','CIRCULARRUNOUT','CONCENTRICITY','CURVELENGTH','CYLINDRICITY','DEPTH','DIAMETER','DISTANCE','DISTANCEFROM','FLATNESS','HEIGHT','LENGTH','LENGTHCOORDINATE','LINEPROFILE','PERPENDICULARITY','PARALLELISM','POINTPROFILE','POSITION','RADIUS','SQUARE','STRAIGHTNESS','SURFACEPROFILE','SURFACEPROFILENONUNIFORM','SYMMETRY','THICKNESS','THREAD','TOTALRUNOUT','WIDTH');
CREATE TYPE ClosedCurvePointSamplingStrategyEnumType AS ENUM ('POINTS','EQUIDISTANT');
CREATE TYPE CommonFileSpecEnumType AS ENUM ('AVI','BMP','DOC','DOCX','DXF','DTD','GIF','GZIP','HTML','IGES','JPEG','JPG','MOV','MPEG','MPG','PDF','PNG','PPM','PPT','PRT','RAR','RTF','STL','STEP','STP','TAR','TIF','TIFF','TXT','WMV','XLS','XLSX','XML','XSD','X_T','ZIP');
CREATE TYPE CompoundFeatureGeometryEnumType AS ENUM ('COAXIAL','COPLANAR','COCENTERED');
CREATE TYPE ConePointSamplingStrategyEnumType AS ENUM ('POLARGRID','STRATIFIED','SPIRAL','SPIDERWEB','POINTS');
CREATE TYPE ControlIssueEnumType AS ENUM ('OOT','CP','CPK','PP','PPK','OOC','TRENDING','SKEWED','ONETHIRDGROUPED','TWOTHIRDGROUPED','OSCILLATING','STRATIFIED','OOCRNG','UNDEFINED');
CREATE TYPE CoordinateEnumType AS ENUM ('CARTESIAN_2D','POLAR_2D','CARTESIAN_3D','CYLINDRICAL_3D','SPHERICAL_3D','UNDEFINED');
CREATE TYPE CurveSubstituteFeatureAlgorithmEnumType AS ENUM ('LEASTSQUARES','BSPLINE','MINMAX','UNDEFINED');
CREATE TYPE DegreeOfFreedomEnumType AS ENUM ('U','V','W','X','Y','Z');
CREATE TYPE DiameterModifierEnumType AS ENUM ('PD','MD','LD');
CREATE TYPE DigitalModelFormatEnumType AS ENUM ('STEPAP203','STEPAP203E2','STEPAP214','STEPAP242','JTOPEN','RPC','PDPMI','ACIS','PARASOLID','AUTODESK','PTC','NX','SOLIDWORKS','CATIA','NOTDEFINED');
CREATE TYPE DimensionCountEnumType AS ENUM ('TWODIMENSIONAL','THREEDIMENSIONAL');
CREATE TYPE DimensionModifierEnumType AS ENUM ('BASIC','SET','REFERENCE');
CREATE TYPE DistanceBetweenAnalysisModeEnumType AS ENUM ('ONEDIMENSIONAL','TWODIMENSIONAL','THREEDIMENSIONAL');
CREATE TYPE DistributionTransformationEnumType AS ENUM ('LOGNORMAL','BOUNDED','UNBOUNDED');
CREATE TYPE ElongatedCylinderPointSamplingStrategyEnumType AS ENUM ('ORTHOGONALGRID','BIRDCAGE','SPECIFIEDGRID','STRATIFIED','HELIX','POINTS');
CREATE TYPE ExclusionEnumType AS ENUM ('FLIER','EQUIPERROR','REWORK','KNOWNCAUSE');
CREATE TYPE ExtentEnumType AS ENUM ('ALLOVER','ALLAROUND','ALLOVERTHISSIDE','ALLAROUNDTHISSIDE','UNDEFINED');
CREATE TYPE ExtrudedCrossSectionPointSamplingStrategyEnumType AS ENUM ('BIRDCAGE','STRATIFIED','POINTS');
CREATE TYPE FeatureOfSizeSubstituteFeatureAlgorithmEnumType AS ENUM ('LEASTSQUARES','MINMAX','MINCIRCUMSCRIBED','MAXINSCRIBED','UNDEFINED');
CREATE TYPE FormalStandardEnumType AS ENUM ('ANSI','ASME-Y14.5-1982','ASME-Y14.5-1994','ASME-Y14.5-2009','ISO1101:1983','ISO1101:2004','ISO1101:2012','BS_8888_2004','JIS','DIN','COMPANY');
CREATE TYPE GDTEnumType AS ENUM ('UNKNOWN','HUMANREAD','MACHINEREAD','ABSENT');
CREATE TYPE GageRandRStudyEnumType AS ENUM ('RANGE','AVGANDRANGE','ANOVA');
CREATE TYPE ISODegreeOfFreedomEnumType AS ENUM ('Rx','Ry','Rz','Tx','Ty','Tz');
CREATE TYPE InspectionModeEnumType AS ENUM ('FAI_Full','FAI_Partial','100Percent','APQP','KPC','PPAP');
CREATE TYPE InspectionScopeEnumType AS ENUM ('DETAIL','ASSEMBLY');
CREATE TYPE InspectionStatusEnumType AS ENUM ('PASS','FAIL','REWORK','SYSERROR','UNKNOWN','NOT_CALCULATED','NOT_MEASURED','UNDEFINED');
CREATE TYPE InternalExternalEnumType AS ENUM ('INTERNAL','EXTERNAL','NOT_APPLICABLE');
CREATE TYPE IntersectionPlaneEnumType AS ENUM ('PARALLEL','PERPENDICULAR','INCLUDING');
CREATE TYPE LeaderHeadFormEnumType AS ENUM ('NONE','ARROW_OPEN','ARROW_UNFILLED','ARROW_BLANKED','ARROW_FILLED','TRIANGLE_BLANKED','TRIANGLE_FILLED','DOT_BLANKED','DOT_FILLED','BOX_BLANKED','BOX_FILLED','DIMENSION_ORIGIN','SYMBOL_SLASH','SYMBOL_INTEGRAL','SYMBOL_CROSS');
CREATE TYPE LinearCoordinateDirectionEnumType AS ENUM ('XAXIS','YAXIS','ZAXIS','RADIAL');
CREATE TYPE LoopFormEnumType AS ENUM ('UNKNOWN','OUTER','INNER','SLIT');
CREATE TYPE ManufacturingMethodEnumType AS ENUM ('ADDITIVE','CASTING','COMPOSITE','FABRICATION','FORMING','JOINING','MACHINING','MOLDING');
CREATE TYPE MaterialModifierEnumType AS ENUM ('REGARDLESS','LEAST','MAXIMUM','NONE');
CREATE TYPE MeasureActionGroupFunctionEnumType AS ENUM ('ROUTING_PLAN','OPERATION_SEQUENCE','SETUP_USAGE_GROUP','SENSOR_USAGE_GROUP','CARRIAGE_USAGE_GROUP','PCS_USAGE_GROUP','EVALUATE_CHAR_ACTIONS','ESTABLISH_DATUM_ACTIONS','UNDEFINED');
CREATE TYPE MeasurementDirectiveEnumType AS ENUM ('MINIMUM','MAXIMUM','AVERAGE','UNDEFINED');
CREATE TYPE ModifyingPlaneEnumType AS ENUM ('PARALLEL','PERPENDICULAR','INCLINED');
CREATE TYPE NonFeatureOfSizeSubstituteFeatureAlgorithmEnumType AS ENUM ('LEASTSQUARES','MINMAX','UNDEFINED');
CREATE TYPE NonToleranceEnumType AS ENUM ('MEASURED','SET');
CREATE TYPE NoteFormEnumType AS ENUM ('3D','SCREEN');
CREATE TYPE OneSidedCapabilityCalculationEnumType AS ENUM ('THREE_SIGMA','SIX_SIGMA');
CREATE TYPE OpenCurvePointSamplingStrategyEnumType AS ENUM ('POINTS');
CREATE TYPE PlanePointSamplingStrategyEnumType AS ENUM ('ORTHOGONALGRID','POLARGRID','SPECIFIEDGRID','STRATIFIED','SPIRAL','SPIDERWEB','POINTS');
CREATE TYPE PointDefinedPointSamplingStrategyEnumType AS ENUM ('GIVENPOINTS','POINTS');
CREATE TYPE PointPointSamplingStrategyEnumType AS ENUM ('POINTS');
CREATE TYPE PointSamplingStrategyEnumBaseType AS ENUM ('ORTHOGONALGRID','BIRDCAGE','POLARGRID','SPECIFIEDGRID','STRATIFIED','HELIX','SPIRAL','SPIDERWEB','POINTS');
CREATE TYPE PositionCapabilityCalculationEnumType AS ENUM ('THREE_SIGMA','SIX_SIGMA','BIVARIATE','TRIVARIATE');
CREATE TYPE PrecedenceEnumType AS ENUM ('PRIMARY','SECONDARY','TERTIARY','QUATERNARY','QUINARY','SENARY');
CREATE TYPE PrismPointSamplingStrategyEnumType AS ENUM ('ORTHOGONALGRID','BIRDCAGE','SPECIFIEDGRID','STRATIFIED','HELIX','POINTS');
CREATE TYPE ReducedDatumEnumType AS ENUM ('PT','SL','PL');
CREATE TYPE ReferencedComponentEnumType AS ENUM ('NOMINAL','ACTUAL');
CREATE TYPE RetrievalMethodEnumType AS ENUM ('AVERAGE','MAXEXTREME','MINEXTREME','CLOSEST1D','CLOSEST2D','CLOSEST3D');
CREATE TYPE SamplingIntervalEnumType AS ENUM ('SHIFT','DAY','HOUR','WEEK','MONTH','BATCH','LOT');
CREATE TYPE SectionModifierEnumType AS ENUM ('ACS','ALS');
CREATE TYPE SecurityClassificationEnumType AS ENUM ('NONE','UNCLASSIFIED','RESTRICTED','EU_RESTRICTED','WEU_RESTRICTED','FOR_OFFICIAL_USE_ONLY','PROTECTED','PROTECTED_A','PROTECTED_B','PROTECTED_C','CONFIDENTIAL','EU_CONFIDENTIAL','WEU_CONFIDENTIAL','SECRET','SECRET_NATIONAL_SECURITY_INFORMATION','SECRET_FORMERLY_RESTRICTED_DATA','SECRET_RESTRICTED_DATA','EU_SECRET','WEU_SECRET','TOP_SECRET_NATIONAL_SECURITY_INFORMATION','TOP_SECRET_FORMERLY_RESTRICTED_DATA','TOP_SECRET_RESTRICTED_DATA','EU_TOP_SECRET','FOCAL_TOP_SECRET','COMPANY_CONFIDENTIAL','OFFICAL_USE_ONLY','TRADE_SECRET','TRADEMARK','REGISTERED_TRADEMARK','PATENT','UNDEFINED');
CREATE TYPE ShapeClassEnumType AS ENUM ('GEAR','FREEFORM','PRISMATIC','ROTATIONAL','THINWALLED');
CREATE TYPE ShellFormEnumType AS ENUM ('UNKNOWN','OUTER','INNER');
CREATE TYPE SlotEndEnumType AS ENUM ('ROUND','FLAT','OPEN','UNDEFINED');
CREATE TYPE SpherePointSamplingStrategyEnumType AS ENUM ('ORTHOGONALGRID','SPECIFIEDGRID','STRATIFIED','HELIX','POINTS');
CREATE TYPE StatsEvalStatusEnumType AS ENUM ('PASS','FAIL','INFORMATIONAL','UNDEFINED');
CREATE TYPE StatsValuesEnumType AS ENUM ('TOTNUM','EFFNUM','NUMSUB','AVG','DIFF','RMS','MAX','MIN','RANGE','AVGRNG','STDDEV','SKEW','KURT','NORM','PROVAR','ESTSTDV','UCL','LCL','UCLRNG','LCLRNG','NUMOOC','NUMOOT','NOOTHI','NOOTLO','CP','CPK','PP','PPK','CM','CMK','AV','REL_AV','EV','REL_EV','INTERACTION','REL_INTERACTION','RANDR','REL_RANDR','PV','REL_PV','TV','REL_TV','LNRTY','BIAS','REL_LNRTY','REL_BIAS','R_SQR','SLOPE','INTCPT','UPRCONFLIM','LWRCONFLIM','TDIST');
CREATE TYPE SubgroupStatsValuesEnumType AS ENUM ('TOTNUM','EFFNUM','AVG','DIFF','MAX','MIN','RANGE','NUMOOT','NOOTHI','NOOTLO');
CREATE TYPE SummaryStatsValuesEnumType AS ENUM ('AVG','MAX','MIN','RANGE','STDDEV');
CREATE TYPE SurfaceOfRevolutionPointSamplingStrategyEnumType AS ENUM ('ORTHOGONALGRID','BIRDCAGE','SPECIFIEDGRID','STRATIFIED','HELIX','POINTS');
CREATE TYPE SurfaceSubstituteFeatureAlgorithmEnumType AS ENUM ('LEASTSQUARES','BEZIER','NURBS','MINMAX','UNDEFINED');
CREATE TYPE ThreadClassEnumType AS ENUM ('1A','1B','2A','2AG','2B','3A','3B','EXT_3E','EXT_3F','EXT_3G','EXT_3H','EXT_4E','EXT_4F','EXT_4G','EXT_4H','4G','4H','EXT_5E','EXT_5F','EXT_5G','EXT_5H','5G','5H','EXT_6E','EXT_6F','EXT_6G','EXT_6H','6G','6H','EXT_7E','EXT_7F','EXT_7G','EXT_7H','7G','7H','EXT_8E','EXT_8F','EXT_8G','EXT_8H','8G','8H','EXT_9E','EXT_9F','EXT_9G','EXT_9H','INT','EXT','SE','G','UNDEFINED');
CREATE TYPE ThreadSeriesEnumType AS ENUM ('ACME','ACME_C','ACME_G','AMO','ANPT','BUTT','PUSH_BUTT','F_PTF','M','MJ','MJS','NC5_HF','NC5_CSF','NC5_ONF','NC5_IF','NC5_INF','NGO','NGS','NGT','NH','NHR','NPSC','NPSF','NPSH','NPSI','NPSL','NPSM','NPT','NPTF','PTF_SAE_SHORT','PTF_SPL_SHORT','PTF_SPL_EXTRA_SHORT','SGT','SPL_PTF','STUB_ACME','UN','UNC','UNF','UNEF','UNJ','UNJC','UNJF','UNJEF','UNR','UNRC','UNRF','UNREF','UNM','UNS','G','R','RC','RP','S','TR','UNDEFINED');
CREATE TYPE TimeDescriptionEnumType AS ENUM ('INSPECTION_START','INSPECTION_END','INTERMEDIATE');
CREATE TYPE TopologyEnumType AS ENUM ('UNKNOWN','PRESENT','ABSENT');
CREATE TYPE ValidityEnumType AS ENUM ('REPORTED','DUMMY','MOOT','DERIVED','SET');
CREATE TABLE ActionBase (
	_index_  SERIAL PRIMARY KEY,
	_WorkInstructionIds integer, -- index into table ArrayReferenceFull 
	PreferredActionMethodId text, 
	_AlternativeActionMethodIds integer, -- index into table ArrayReferenceFull 
	_PreferredResourceIds integer  -- index into table ArrayReferenceFull 
) ;

CREATE TABLE ActionGroupBase (
	_index_  SERIAL PRIMARY KEY,
	_WorkInstructionIds integer, -- index into table ArrayReferenceFull 
	_MeasureActionGroupFunction integer  -- index into table MeasureActionGroupFunction 
) ;

CREATE TABLE ActionMethodBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_ChosenResourceIds integer, -- index into table ArrayReferenceFull 
	_WorkInstructionIds integer  -- index into table ArrayReferenceFull 
) ;

CREATE TABLE ActionMethods (
	_index_  SERIAL PRIMARY KEY,
	__ActionMethod integer[], -- index into table ActionMethodBase 
	__CoordinateMeasureFeatureMethod integer[], -- index into table CoordinateMeasureFeatureMethod 
	__GageMeasureFeatureMethod integer[], -- index into table GageMeasureFeatureMethod 
	__ManualMeasureFeatureMethod integer[], -- index into table ManualMeasureFeatureMethod 
	__OtherMeasureFeatureMethod integer[]  -- index into table OtherMeasureFeatureMethod 
) ;

CREATE TABLE ActualAxis (
	_index_  SERIAL PRIMARY KEY,
	AxisPoint text, 
	Direction text  
) ;

CREATE TABLE ActualComponentSet (
	_index_  SERIAL PRIMARY KEY,
	N text,-- attribute
	__ActualComponent integer[]  -- index into table ActualComponent 
) ;

CREATE TABLE ActualComponent (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	SerialNumber text, -- element of text 
	AdditionalChanges text, -- element of text 
	_Status integer, -- index into table InspectionStatus 
	_Traceability integer, -- index into table ActualProductTraceability 
	AsmPathId text  -- element of text 
) ;

CREATE TABLE ActualDatumFeature (
	_index_  SERIAL PRIMARY KEY,
	FeatureItemId text, 
	MaterialModifier text  -- element of text 
) ;

CREATE TABLE ActualEndRadius (
	_index_  SERIAL PRIMARY KEY,
	EndRadius text, 
	Expanded BOOLEAN  -- element of BOOLEAN 
) ;

CREATE TABLE ActualOffsetAlignmentOperation (
	_index_  SERIAL PRIMARY KEY,
	SequenceNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	__Origin integer[]  -- index into table ActualOriginOffset 
) ;

CREATE TABLE ActualOriginOffset (
	_index_  SERIAL PRIMARY KEY,
	_OriginEntity integer, -- index into table AlignmentFeature 
	OriginDirection DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE ActualPlane (
	_index_  SERIAL PRIMARY KEY,
	Point text, 
	Normal text  
) ;

CREATE TABLE ActualPointAndVector (
	_index_  SERIAL PRIMARY KEY,
	StartPoint text, 
	Vector text  
) ;

CREATE TABLE ActualPointWithNormalBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	Point text, 
	Normal text  
) ;

CREATE TABLE ActualProductTraceability (
	_index_  SERIAL PRIMARY KEY,
	SampleNumber text, -- element of text 
	LotNumber text, -- element of text 
	ReportNumber text, -- element of text 
	ManufacturingProcessId text, 
	FixtureId text, 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	InspectionStart TIMESTAMP, -- element of TIMESTAMP 
	InspectionEnd TIMESTAMP, -- element of TIMESTAMP 
	_InspectionSoftwareItems integer, -- index into table InspectionSoftwareItems 
	_InspectionProgram integer, -- index into table InspectionProgram 
	_InspectionOperator integer, -- index into table Employee 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	_ProductEnvironments integer, -- index into table Environments 
	_Errors integer  -- index into table Errors 
) ;

CREATE TABLE ActualSubgroup (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_ActualIds integer  -- index into table StatsArrayId 
) ;

CREATE TABLE ActualZoneAxis (
	_index_  SERIAL PRIMARY KEY,
	AxisPoint DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	Direction DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	Length text  
) ;

CREATE TABLE ActualZoneRadii (
	_index_  SERIAL PRIMARY KEY,
	MinRadius text, 
	MaxRadius text  
) ;

CREATE TABLE AddressDescription (
	_index_  SERIAL PRIMARY KEY,
	AddressDescriptionEnum text, -- element of text 
	OtherAddressDescription text  -- element of text 
) ;

CREATE TABLE Aggregate12Core (
	_index_  SERIAL PRIMARY KEY,
	domain text,-- attribute
	_SubCurves integer  -- index into table ArraySubCurve12 
) ;

CREATE TABLE Aggregate12 (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	_Aggregate12Core integer  -- index into table Aggregate12Core 
) ;

CREATE TABLE Aggregate13Core (
	_index_  SERIAL PRIMARY KEY,
	domain text,-- attribute
	_SubCurves integer  -- index into table ArraySubCurve13 
) ;

CREATE TABLE Aggregate13 (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	_Aggregate13Core integer, -- index into table Aggregate13Core 
	_Transform integer  -- index into table ElementReference 
) ;

CREATE TABLE AlignmentFeature (
	_index_  SERIAL PRIMARY KEY,
	DatumDefinitionId text, 
	_BaseFeature integer  -- index into table BaseFeature 
) ;

CREATE TABLE AlignmentOperationBase (
	_index_  SERIAL PRIMARY KEY,
	SequenceNumber DECIMAL(10,2)  -- element of DECIMAL(10,2) 
) ;

CREATE TABLE AlignmentOperations (
	_index_  SERIAL PRIMARY KEY,
	__ActualOffset integer[], -- index into table ActualOffsetAlignmentOperation 
	__AlignmentOperation integer[], -- index into table AlignmentOperationBase 
	__BestFit integer[], -- index into table ConicalSegmentBestFit 
	__DatumPrecedence integer[], -- index into table DatumPrecedenceAlignmentOperation 
	__Machine integer[], -- index into table MachineCoordinateSystemOperation 
	__NominalOffset integer[], -- index into table NominalOffsetAlignmentOperation 
	__NominalRotation integer[], -- index into table NominalRotationAlignmentOperation 
	__PrimaryAlignment integer[], -- index into table PrimaryAlignmentOperation 
	__SecondaryAlignment integer[], -- index into table SecondaryAlignmentOperation 
	BaseCoordinateSystemId text  
) ;

CREATE TABLE And_ (
	_index_  SERIAL PRIMARY KEY,
	__And_ integer[], -- index into table And 
	__ArithmeticEqual integer[], -- index into table ArithmeticEqual 
	__BooleanEqual integer[], -- index into table BooleanEqual 
	__BooleanExpression integer[], -- index into table BooleanExpressionBase 
	__CharacteristicIs integer[], -- index into table CharacteristicIs 
	__ConstantIs integer[], -- index into table ConstantIs 
	__FeatureIsDatum integer[], -- index into table FeatureIsDatum 
	__FeatureIsInternal integer[], -- index into table FeatureIsInternal 
	__GreaterOrEqual integer[], -- index into table GreaterOrEqual 
	__GreaterThan integer[], -- index into table GreaterThan 
	__LessOrEqual integer[], -- index into table LessOrEqual 
	__LessThan integer[], -- index into table LessThan 
	__Not_ integer[], -- index into table Not 
	__Or_ integer[], -- index into table Or 
	__SamplingRigorIs integer[], -- index into table SamplingRigorIs 
	__ShapeClassIs integer[]  -- index into table ShapeClassIs 
) ;

CREATE TABLE AngleBetweenCharacteristicActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text, 
	AnalysisVector text, 
	Vertex text  
) ;

CREATE TABLE AngleBetweenCharacteristicDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	Dimension text, -- element of text 
	_Tolerance integer, -- index into table AngularTolerance 
	NonTolerance text  -- element of text 
) ;

CREATE TABLE AngleBetweenCharacteristicItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE AngleBetweenCharacteristicNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	TargetValue text, 
	AnalysisVector DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	AnalysisMode text, -- element of text 
	CoordinateSystemId text, 
	_MeasurementDirective integer, -- index into table MeasurementDirective 
	Vertex DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	_ZoneLimit integer  -- index into table CharacteristicDirectionalZoneLimit 
) ;

CREATE TABLE AngleBetweenCharacteristicStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_ValueStats integer, -- index into table StatsWithTolAngular 
	_MaxValueStats integer, -- index into table StatsAngular 
	_MinValueStats integer, -- index into table StatsAngular 
	_DeviationStats integer, -- index into table StatsWithTolAngular 
	_MaxDeviationStats integer, -- index into table StatsAngular 
	_MinDeviationStats integer  -- index into table StatsAngular 
) ;

CREATE TABLE AngleCharacteristicActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text  
) ;

CREATE TABLE AngleCharacteristicDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	Dimension text, -- element of text 
	_Tolerance integer, -- index into table AngularTolerance 
	NonTolerance text  -- element of text 
) ;

CREATE TABLE AngleCharacteristicItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE AngleCharacteristicNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	TargetValue text  
) ;

CREATE TABLE AngleCharacteristicStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_ValueStats integer, -- index into table StatsWithTolAngular 
	_MaxValueStats integer, -- index into table StatsAngular 
	_MinValueStats integer, -- index into table StatsAngular 
	_DeviationStats integer, -- index into table StatsWithTolAngular 
	_MaxDeviationStats integer, -- index into table StatsAngular 
	_MinDeviationStats integer  -- index into table StatsAngular 
) ;

CREATE TABLE AngleFromCharacteristicActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text, 
	AnalysisVector text, 
	Vertex text  
) ;

CREATE TABLE AngleFromCharacteristicDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	Dimension text, -- element of text 
	_Tolerance integer, -- index into table AngularTolerance 
	NonTolerance text  -- element of text 
) ;

CREATE TABLE AngleFromCharacteristicItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE AngleFromCharacteristicNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	TargetValue text, 
	_OriginReference integer, -- index into table OriginReference 
	AnalysisVector DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	AnalysisMode text, -- element of text 
	CoordinateSystemId text, 
	_MeasurementDirective integer, -- index into table MeasurementDirective 
	Vertex DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	_ZoneLimit integer  -- index into table CharacteristicDirectionalZoneLimit 
) ;

CREATE TABLE AngleFromCharacteristicStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_ValueStats integer, -- index into table StatsWithTolAngular 
	_MaxValueStats integer, -- index into table StatsAngular 
	_MinValueStats integer, -- index into table StatsAngular 
	_DeviationStats integer, -- index into table StatsWithTolAngular 
	_MaxDeviationStats integer, -- index into table StatsAngular 
	_MinDeviationStats integer  -- index into table StatsAngular 
) ;

CREATE TABLE AngleFunctionDiscrete (
	_index_  SERIAL PRIMARY KEY,
	N text,-- attribute
	DomainValues DOUBLE PRECISION, -- element of DOUBLE PRECISION 
	RangeValues DOUBLE PRECISION, -- element of DOUBLE PRECISION 
	DomainLinearUnit text, -- element of text 
	RangeAngularUnit text  -- element of text 
) ;

CREATE TABLE AngularCharacteristicActualBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text  
) ;

CREATE TABLE AngularCharacteristicDefinitionBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	Dimension text, -- element of text 
	_Tolerance integer, -- index into table AngularTolerance 
	NonTolerance text  -- element of text 
) ;

CREATE TABLE AngularCharacteristicItemBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE AngularCharacteristicNominalBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	TargetValue text  
) ;

CREATE TABLE AngularCharacteristicStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_ValueStats integer, -- index into table StatsWithTolAngular 
	_MaxValueStats integer, -- index into table StatsAngular 
	_MinValueStats integer, -- index into table StatsAngular 
	_DeviationStats integer, -- index into table StatsWithTolAngular 
	_MaxDeviationStats integer, -- index into table StatsAngular 
	_MinDeviationStats integer  -- index into table StatsAngular 
) ;

CREATE TABLE AngularCoordinateCharacteristicActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	_TypeOfCoordinates integer, -- index into table OfCoordinatesType 
	Value text, 
	MaxValue text, 
	MinValue text  
) ;

CREATE TABLE AngularCoordinateCharacteristicDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	Dimension text, -- element of text 
	_Tolerance integer, -- index into table AngularTolerance 
	NonTolerance text  -- element of text 
) ;

CREATE TABLE AngularCoordinateCharacteristicItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE AngularCoordinateCharacteristicNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	TargetValue text, 
	Direction text, -- element of text 
	CoordinateSystemId text  
) ;

CREATE TABLE AngularCoordinateCharacteristicStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_ValueStats integer, -- index into table StatsWithTolAngular 
	_MaxValueStats integer, -- index into table StatsAngular 
	_MinValueStats integer, -- index into table StatsAngular 
	_DeviationStats integer, -- index into table StatsWithTolAngular 
	_MaxDeviationStats integer, -- index into table StatsAngular 
	_MinDeviationStats integer  -- index into table StatsAngular 
) ;

CREATE TABLE AngularToleranceDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	MaxValue text, 
	MinValue text  
) ;

CREATE TABLE AngularTolerance (
	_index_  SERIAL PRIMARY KEY,
	MaxValue text, 
	MinValue text, 
	DefinitionId text, 
	DefinedAsLimit BOOLEAN  -- element of BOOLEAN 
) ;

CREATE TABLE AngularUnit (
	_index_  SERIAL PRIMARY KEY,
	SIUnitName text, -- element of text 
	UnitName text, -- element of text 
	_UnitConversion integer  -- index into table UnitConversion 
) ;

CREATE TABLE AngularityCharacteristicActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text, 
	DatumsOk BOOLEAN, -- element of BOOLEAN 
	Bonus text, 
	ReferenceLength text, 
	DRFTransformActualId text  
) ;

CREATE TABLE AngularityCharacteristicDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	_DirectionFeature integer, -- index into table DirectionFeature 
	_CollectionPlane integer, -- index into table CollectionPlane 
	_IntersectionPlane integer, -- index into table IntersectionPlane 
	_OrientationPlane integer, -- index into table OrientationPlane 
	ToleranceValue text, 
	DatumReferenceFrameId text, 
	MaterialCondition text, -- element of text 
	_ZoneShape integer, -- index into table OrientationZoneShape 
	TangentPlane BOOLEAN, -- element of BOOLEAN 
	MaximumToleranceValue text, 
	ProjectedToleranceZoneValue text, 
	EachRadialElement BOOLEAN, -- element of BOOLEAN 
	EachElement BOOLEAN  -- element of BOOLEAN 
) ;

CREATE TABLE AngularityCharacteristicItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE AngularityCharacteristicNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_CircularZoneLimit integer, -- index into table CharacteristicCircularZoneLimit 
	_DirectionalZoneLimit integer, -- index into table CharacteristicDirectionalZoneLimit 
	_RectangularZoneLimit integer, -- index into table CharacteristicRectangularZoneLimit 
	Angle text  
) ;

CREATE TABLE AngularityCharacteristicStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_ValueStats integer, -- index into table StatsWithTolLinear 
	_MaxValueStats integer, -- index into table StatsLinear 
	_MinValueStats integer, -- index into table StatsLinear 
	CapabilityCalculationMethod text, -- element of text 
	_DatumsOkStats integer, -- index into table StatsPassFail 
	_BonusStats integer, -- index into table StatsLinear 
	_ReferenceLengthStats integer  -- index into table StatsLinear 
) ;

CREATE TABLE Application (
	_index_  SERIAL PRIMARY KEY,
	Name text, -- element of text 
	Organization text, -- element of text 
	AddonName text, -- element of text 
	AddonOrganization text  -- element of text 
) ;

CREATE TABLE ArcActualDetermination (
	_index_  SERIAL PRIMARY KEY,
	_Checked integer, -- index into table ArcCheckedFeature 
	_Set integer  -- index into table SetFeature 
) ;

CREATE TABLE ArcBestFit (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	__BaseFeature integer[]  -- index into table SequencedBaseFeature 
) ;

CREATE TABLE ArcCast (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseFeature integer  -- index into table BaseFeature 
) ;

CREATE TABLE ArcCheckedFeature (
	_index_  SERIAL PRIMARY KEY,
	_CheckDetails integer  -- index into table ArcChecked 
) ;

CREATE TABLE ArcChecked (
	_index_  SERIAL PRIMARY KEY,
	_Measured integer, -- index into table MeasuredFeature 
	_Constructed integer  -- index into table ArcConstructionMethod 
) ;

CREATE TABLE ArcCircular12Core (
	_index_  SERIAL PRIMARY KEY,
	turned text NOT NULL,-- attribute
	domain text,-- attribute
	Radius DOUBLE PRECISION, -- element of DOUBLE PRECISION 
	Center DOUBLE PRECISION[2], -- list of DOUBLE PRECISION 
	DirBeg DOUBLE PRECISION[2]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE ArcCircular12 (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	_ArcCircular12Core integer  -- index into table ArcCircular12Core 
) ;

CREATE TABLE ArcCircular13Core (
	_index_  SERIAL PRIMARY KEY,
	domain text,-- attribute
	Radius DOUBLE PRECISION, -- element of DOUBLE PRECISION 
	Center DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	DirBeg DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	Normal DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE ArcCircular13 (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	_ArcCircular13Core integer, -- index into table ArcCircular13Core 
	_Transform integer  -- index into table ElementReference 
) ;

CREATE TABLE ArcConic12Core (
	_index_  SERIAL PRIMARY KEY,
	form text,-- attribute
	turned text NOT NULL,-- attribute
	domain text,-- attribute
	A DOUBLE PRECISION, -- element of DOUBLE PRECISION 
	B DOUBLE PRECISION, -- element of DOUBLE PRECISION 
	Center DOUBLE PRECISION[2], -- list of DOUBLE PRECISION 
	DirBeg DOUBLE PRECISION[2]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE ArcConic12 (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	_ArcConic12Core integer  -- index into table ArcConic12Core 
) ;

CREATE TABLE ArcConic13Core (
	_index_  SERIAL PRIMARY KEY,
	form text,-- attribute
	domain text,-- attribute
	A DOUBLE PRECISION, -- element of DOUBLE PRECISION 
	B DOUBLE PRECISION, -- element of DOUBLE PRECISION 
	Center DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	DirBeg DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	Normal DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE ArcConic13 (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	_ArcConic13Core integer, -- index into table ArcConic13Core 
	_Transform integer  -- index into table ElementReference 
) ;

CREATE TABLE ArcConstructionMethod (
	_index_  SERIAL PRIMARY KEY,
	_BestFit integer, -- index into table ArcBestFit 
	_Recompensated integer, -- index into table ArcRecomp 
	_Projection integer, -- index into table ArcProjection 
	_Copy integer, -- index into table ArcCopy 
	_Cast integer, -- index into table ArcCast 
	_Transform integer, -- index into table ArcTransform 
	_FromScan integer, -- index into table ArcFromScan 
	_Extract integer  -- index into table ArcExtract 
) ;

CREATE TABLE ArcCopy (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseArc integer  -- index into table BaseFeature 
) ;

CREATE TABLE ArcExtract (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_CurveFeature integer  -- index into table BaseFeature 
) ;

CREATE TABLE ArcFeatureActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	_PointList integer, -- index into table PointListActual 
	FeatureItemId text, 
	ActualComponentId text, 
	ManufacturingProcessId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	Location text, 
	Normal text, 
	Radius text, 
	RadiusMin text, 
	RadiusMax text, 
	_Sweep integer, -- index into table Sweep 
	Form text  
) ;

CREATE TABLE ArcFeatureDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	InternalExternal text, -- element of text 
	Radius text  
) ;

CREATE TABLE ArcFeatureItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	FeatureNominalId text, 
	ParentFeatureItemId text, 
	FeatureName text, -- element of text 
	QPId text, -- element of text 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	CoordinateSystemId text, 
	_DeterminationMode integer, -- index into table ArcActualDetermination 
	_SubstituteFeatureAlgorithm integer  -- index into table NonFeatureOfSizeSubstituteFeatureAlgorithm 
) ;

CREATE TABLE ArcFeatureNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Name text, -- element of text 
	_PointList integer, -- index into table PointListNominal 
	FeatureDefinitionId text, -- element of text 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Location DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	_Sweep integer, -- index into table Sweep 
	Normal DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE ArcFromScan (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_SurfaceFeature integer, -- index into table BaseFeature 
	SearchRadius text, 
	Depth text  
) ;

CREATE TABLE ArcPointSamplingStrategy (
	_index_  SERIAL PRIMARY KEY,
	PointSamplingStrategyEnum text, -- element of text 
	UserDefinedStrategy text  -- element of text 
) ;

CREATE TABLE ArcProjection (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_ProjectionArc integer, -- index into table BaseFeature 
	_ProjectionPlane integer  -- index into table BaseFeature 
) ;

CREATE TABLE ArcRecomp (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseFeaturePointList integer  -- index into table BaseFeaturePointList 
) ;

CREATE TABLE ArcTransform (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseArc integer, -- index into table BaseFeature 
	_Transformation integer  -- index into table TransformationReference 
) ;

CREATE TABLE AreaCharacteristicActualBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text  
) ;

CREATE TABLE AreaCharacteristicDefinitionBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	_Tolerance integer, -- index into table AreaTolerance 
	NonTolerance text  -- element of text 
) ;

CREATE TABLE AreaCharacteristicItemBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE AreaCharacteristicNominalBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	TargetValue text  
) ;

CREATE TABLE AreaTolerance (
	_index_  SERIAL PRIMARY KEY,
	MaxValue text, 
	MinValue text, 
	DefinedAsLimit BOOLEAN  -- element of BOOLEAN 
) ;

CREATE TABLE AreaUnit (
	_index_  SERIAL PRIMARY KEY,
	SIUnitName text, -- element of text 
	UnitName text, -- element of text 
	_UnitConversion integer  -- index into table UnitConversion 
) ;

CREATE TABLE ArithmeticCharacteristicParameter (
	_index_  SERIAL PRIMARY KEY,
	CharacteristicEnum text, -- element of text 
	Parameter text  -- element of text 
) ;

CREATE TABLE ArithmeticComparisonBase (
	_index_  SERIAL PRIMARY KEY,
	__ArithmeticCharacteristicParameter integer[], -- index into table ArithmeticCharacteristicParameter 
	__ArithmeticConstant integer[], -- index into table ArithmeticConstant 
	__ArithmeticExpression integer[], -- index into table ArithmeticExpressionBase 
	__ArithmeticFeatureParameter integer[], -- index into table ArithmeticFeatureParameter 
	__DividedBy integer[], -- index into table DividedBy 
	__FeatureArea integer[], -- index into table FeatureArea 
	__FeatureLength integer[], -- index into table FeatureLength 
	__Minus integer[], -- index into table Minus 
	__Negate integer[], -- index into table Negate 
	__Plus integer[], -- index into table Plus 
	__Times integer[]  -- index into table Times 
) ;

CREATE TABLE ArithmeticConstant (
	_index_  SERIAL PRIMARY KEY,
	val text -- attribute
) ;

CREATE TABLE ArithmeticEqual (
	_index_  SERIAL PRIMARY KEY,
	__ArithmeticCharacteristicParameter integer[], -- index into table ArithmeticCharacteristicParameter 
	__ArithmeticConstant integer[], -- index into table ArithmeticConstant 
	__ArithmeticExpression integer[], -- index into table ArithmeticExpressionBase 
	__ArithmeticFeatureParameter integer[], -- index into table ArithmeticFeatureParameter 
	__DividedBy integer[], -- index into table DividedBy 
	__FeatureArea integer[], -- index into table FeatureArea 
	__FeatureLength integer[], -- index into table FeatureLength 
	__Minus integer[], -- index into table Minus 
	__Negate integer[], -- index into table Negate 
	__Plus integer[], -- index into table Plus 
	__Times integer[]  -- index into table Times 
) ;

CREATE TABLE ArithmeticExpressionBase (
	_index_  SERIAL PRIMARY KEY 
) ;

CREATE TABLE ArithmeticFeatureParameter (
	_index_  SERIAL PRIMARY KEY,
	Parameter text  -- element of text 
) ;

CREATE TABLE ArrayReferenceFull (
	_index_  SERIAL PRIMARY KEY,
	N text,-- attribute
	Id text[]  
) ;

CREATE TABLE ArrayReference (
	_index_  SERIAL PRIMARY KEY,
	N text,-- attribute
	Id text  -- element of text 
) ;

CREATE TABLE ArraySubCurve12 (
	_index_  SERIAL PRIMARY KEY,
	N text,-- attribute
	__SubCurve integer[]  -- index into table Curve12Oriented 
) ;

CREATE TABLE ArraySubCurve13 (
	_index_  SERIAL PRIMARY KEY,
	N text,-- attribute
	__SubCurve integer[]  -- index into table Curve13Oriented 
) ;

CREATE TABLE AsmPath (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_ComponentIds integer  -- index into table ArrayReference 
) ;

CREATE TABLE AsmPaths (
	_index_  SERIAL PRIMARY KEY,
	N text,-- attribute
	__AsmPath integer[]  -- index into table AsmPath 
) ;

CREATE TABLE AssemblySet (
	_index_  SERIAL PRIMARY KEY,
	N text,-- attribute
	__Assembly integer[]  -- index into table Assembly 
) ;

CREATE TABLE Assembly (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Name text, -- element of text 
	QPId text, -- element of text 
	ModelNumber text, -- element of text 
	Description text, -- element of text 
	Version text, -- element of text 
	Material text, -- element of text 
	_SecurityClassification integer, -- index into table SecurityClassification 
	ExportControlClassification text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_CharacteristicNominalIds integer, -- index into table ArrayReferenceFull 
	_NoteIds integer, -- index into table ArrayReferenceFull 
	_PartNoteIds integer, -- index into table ArrayReferenceFull 
	_DatumDefinitionIds integer, -- index into table ArrayReferenceFull 
	_DatumTargetDefinitionIds integer, -- index into table ArrayReferenceFull 
	_DatumReferenceFrameIds integer, -- index into table ArrayReferenceFull 
	_ComponentIds integer, -- index into table ArrayReference 
	_DefinitionInternal integer, -- index into table InternalPartAssembly 
	_DefinitionExternal integer  -- index into table DefinitionExternal 
) ;

CREATE TABLE AssignableCause (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	AssignableCauseEnum text, -- element of text 
	_CorrectiveActionIds integer  -- index into table ArrayReferenceFull 
) ;

CREATE TABLE AssignableCauses (
	_index_  SERIAL PRIMARY KEY,
	__AssignableCause integer[]  -- index into table AssignableCause 
) ;

CREATE TABLE AttributeBase (
	_index_  SERIAL PRIMARY KEY,
	name text -- attribute
) ;

CREATE TABLE AttributeBool (
	_index_  SERIAL PRIMARY KEY,
	value text,-- attribute
	name text -- attribute
) ;

CREATE TABLE AttributeD1 (
	_index_  SERIAL PRIMARY KEY,
	value text,-- attribute
	name text -- attribute
) ;

CREATE TABLE AttributeD3 (
	_index_  SERIAL PRIMARY KEY,
	value text,-- attribute
	name text -- attribute
) ;

CREATE TABLE AttributeI1 (
	_index_  SERIAL PRIMARY KEY,
	value text,-- attribute
	name text -- attribute
) ;

CREATE TABLE AttributeI2 (
	_index_  SERIAL PRIMARY KEY,
	value text,-- attribute
	name text -- attribute
) ;

CREATE TABLE AttributeQPId (
	_index_  SERIAL PRIMARY KEY,
	value text,-- attribute
	name text -- attribute
) ;

CREATE TABLE AttributeStr (
	_index_  SERIAL PRIMARY KEY,
	value text,-- attribute
	name text -- attribute
) ;

CREATE TABLE AttributeUser (
	_index_  SERIAL PRIMARY KEY,
	nameUserAttribute text,-- attribute
	name text,-- attribute
	_UserDataXML integer, -- index into table UserDataXML 
	UserDataBinary text  
) ;

CREATE TABLE Attributes (
	_index_  SERIAL PRIMARY KEY,
	N text,-- attribute
	__Attribute integer[], -- index into table AttributeBase 
	__AttributeBool integer[], -- index into table AttributeBool 
	__AttributeD1 integer[], -- index into table AttributeD1 
	__AttributeD3 integer[], -- index into table AttributeD3 
	__AttributeI1 integer[], -- index into table AttributeI1 
	__AttributeI2 integer[], -- index into table AttributeI2 
	__AttributeQPId integer[], -- index into table AttributeQPId 
	__AttributeStr integer[], -- index into table AttributeStr 
	__AttributeUser integer[]  -- index into table AttributeUser 
) ;

CREATE TABLE Author (
	_index_  SERIAL PRIMARY KEY,
	Name text, -- element of text 
	Organization text  -- element of text 
) ;

CREATE TABLE AuxiliaryBase (
	_index_  SERIAL PRIMARY KEY,
	color text NOT NULL,-- attribute
	transparency text NOT NULL,-- attribute
	hidden text NOT NULL,-- attribute
	size text NOT NULL,-- attribute
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer  -- index into table Attributes 
) ;

CREATE TABLE AuxiliaryPlaneBase (
	_index_  SERIAL PRIMARY KEY,
	color text NOT NULL,-- attribute
	transparency text NOT NULL,-- attribute
	hidden text NOT NULL,-- attribute
	size text NOT NULL,-- attribute
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	_Plane integer  -- index into table Plane 
) ;

CREATE TABLE AuxiliarySet (
	_index_  SERIAL PRIMARY KEY,
	N text,-- attribute
	__Auxiliary integer[], -- index into table AuxiliaryBase 
	__LineAuxiliary integer[], -- index into table LineAuxiliary 
	__PlaneClipping integer[], -- index into table PlaneClipping 
	__PlaneReference integer[], -- index into table PlaneReference 
	__PointAuxiliary integer[]  -- index into table PointAuxiliary 
) ;

CREATE TABLE AverageFeature (
	_index_  SERIAL PRIMARY KEY,
	_ArcFeatureActual integer, -- index into table ArcFeatureActual 
	_CircleFeatureActual integer, -- index into table CircleFeatureActual 
	_CompoundFeatureActual integer, -- index into table CompoundFeatureActual 
	_ConeFeatureActual integer, -- index into table ConeFeatureActual 
	_ConicalSegmentFeatureActual integer, -- index into table ConicalSegmentFeatureActual 
	_CuboidFeatureActual integer, -- index into table CuboidFeatureActual 
	_CylinderFeatureActual integer, -- index into table CylinderFeatureActual 
	_CylindricalSegmentFeatureActual integer, -- index into table CylindricalSegmentFeatureActual 
	_EdgePointFeatureActual integer, -- index into table EdgePointFeatureActual 
	_EllipseFeatureActual integer, -- index into table EllipseFeatureActual 
	_ElongatedCylinderFeatureActual integer, -- index into table ElongatedCylinderFeatureActual 
	_ExtrudedCrossSectionFeatureActual integer, -- index into table ExtrudedCrossSectionFeatureActual 
	_FeatureActual integer, -- index into table FeatureActualBase 
	_GenericFeatureActual integer, -- index into table GenericFeatureActual 
	_LineFeatureActual integer, -- index into table LineFeatureActual 
	_OppositeLinesFeatureActual integer, -- index into table OppositeLinesFeatureActual 
	_OppositePlanesFeatureActual integer, -- index into table OppositePlanesFeatureActual 
	_PatternFeatureActual integer, -- index into table PatternFeatureActual 
	_PlaneFeatureActual integer, -- index into table PlaneFeatureActual 
	_PointDefinedCurveFeatureActual integer, -- index into table PointDefinedCurveFeatureActual 
	_PointDefinedSurfaceFeatureActual integer, -- index into table PointDefinedSurfaceFeatureActual 
	_PointFeatureActual integer, -- index into table PointFeatureActual 
	_ProfileGroupFeatureActual integer, -- index into table ProfileGroupFeatureActual 
	_RunoutGroupFeatureActual integer, -- index into table RunoutGroupFeatureActual 
	_SphereFeatureActual integer, -- index into table SphereFeatureActual 
	_SphericalSegmentFeatureActual integer, -- index into table SphericalSegmentFeatureActual 
	_SurfaceOfRevolutionFeatureActual integer, -- index into table SurfaceOfRevolutionFeatureActual 
	_ThreadedFeatureActual integer, -- index into table ThreadedFeatureActual 
	_ToroidalSegmentFeatureActual integer, -- index into table ToroidalSegmentFeatureActual 
	_TorusFeatureActual integer, -- index into table TorusFeatureActual 
	_ActualIds integer  -- index into table StatsArrayId 
) ;

CREATE TABLE AverageFeatures (
	_index_  SERIAL PRIMARY KEY,
	__AverageFeature integer[]  -- index into table AverageFeature 
) ;

CREATE TABLE AxialDifferentialScale (
	_index_  SERIAL PRIMARY KEY,
	XScaleFactor DECIMAL(10,2), -- element of DECIMAL(10,2) 
	XaxisDirection DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	YScaleFactor DECIMAL(10,2), -- element of DECIMAL(10,2) 
	YaxisDirection DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	ZScaleFactor DECIMAL(10,2), -- element of DECIMAL(10,2) 
	ZaxisDirection DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE Axis (
	_index_  SERIAL PRIMARY KEY,
	AxisPoint DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	Direction DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE B89Test (
	_index_  SERIAL PRIMARY KEY,
	XLinearAccuracy text, 
	YLinearAccuracy text, 
	ZLinearAccuracy text, 
	OffsetVolumetricPerformance text, 
	VolumetricPerformance text, 
	Repeatability text  
) ;

CREATE TABLE BaseFeaturePointList (
	_index_  SERIAL PRIMARY KEY,
	__BaseFeaturePointSet integer[]  -- index into table BaseFeaturePointSet 
) ;

CREATE TABLE BaseFeaturePointSet (
	_index_  SERIAL PRIMARY KEY,
	FeatureItemId text, 
	_PointIndex integer, -- index into table PointIndex 
	ReferencedComponent text, -- element of text 
	SequenceNumber DECIMAL(10,2)  -- element of DECIMAL(10,2) 
) ;

CREATE TABLE BaseFeature (
	_index_  SERIAL PRIMARY KEY,
	ReferencedComponent text, -- element of text 
	FeatureItemId text  
) ;

CREATE TABLE BestFitAlignmentOperation (
	_index_  SERIAL PRIMARY KEY,
	SequenceNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_DegreesOfFreedom integer, -- index into table DegreesOfFreedom 
	__BaseFeature integer[]  -- index into table SequencedBaseFeature 
) ;

CREATE TABLE BiasStudyPlan (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	ThisStatisticalStudyPlanInstanceQPId text, -- element of text 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	CalculateAverageFeatures BOOLEAN, -- element of BOOLEAN 
	_CharacteristicItemIds integer, -- index into table ArrayReferenceFull 
	StatsValuesPerChar StatsValuesEnumType, -- element of StatsValuesEnumType 
	StatsValuesPerSubgroup SubgroupStatsValuesEnumType, -- element of SubgroupStatsValuesEnumType 
	__StatsValuesSummary integer[], -- index into table SummaryStatsValues 
	_PreInspectionTraceability integer, -- index into table PreInspectionTraceability 
	Name text, -- element of text 
	Description text, -- element of text 
	PlanId text, 
	CorrectiveActionPlanId text, 
	NumberOfSamples DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupSize DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_MeasurementDeviceIds integer  -- index into table ArrayReferenceFull 
) ;

CREATE TABLE BiasStudyResults (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	ThisStatisticalStudyResultsInstanceQPId text, -- element of text 
	_Status integer, -- index into table StatsEvalStatus 
	__StudyIssue integer[], -- index into table StudyIssue 
	_InspectionTraceability integer, -- index into table InspectionTraceability 
	Name text, -- element of text 
	Description text, -- element of text 
	StudyId text, 
	ResultsId text[], 
	__ResultsQPId integer[], -- index into table QPIdFullReference 
	__ResultsFile integer[], -- index into table ExternalFileReference 
	__AverageFeature integer[], -- index into table AverageFeature 
	__CharacteristicsStats integer[], -- index into table CharacteristicsStats 
	__LinearStatsSummary integer[], -- index into table SummaryStatisticsLinear 
	__AngularStatsSummary integer[], -- index into table SummaryStatisticsAngular 
	__AreaStatsSummary integer[], -- index into table SummaryStatisticsArea 
	__ForceStatsSummary integer[], -- index into table SummaryStatisticsForce 
	__MassStatsSummary integer[], -- index into table SummaryStatisticsMass 
	__PressureStatsSummary integer[], -- index into table SummaryStatisticsPressure 
	__SpeedStatsSummary integer[], -- index into table SummaryStatisticsSpeed 
	__TemperatureStatsSummary integer[], -- index into table SummaryStatisticsTemperature 
	__TimeStatsSummary integer[], -- index into table SummaryStatisticsTime 
	__UserDefinedUnitStatsSummary integer[], -- index into table SummaryStatisticsUserDefinedUnit 
	__StatsSummary integer[], -- index into table SummaryStatistics 
	SampleSize DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_MeasurementDeviceIds integer  -- index into table ArrayReferenceFull 
) ;

CREATE TABLE BinaryArithmeticExpressionBase (
	_index_  SERIAL PRIMARY KEY,
	__ArithmeticCharacteristicParameter integer[], -- index into table ArithmeticCharacteristicParameter 
	__ArithmeticConstant integer[], -- index into table ArithmeticConstant 
	__ArithmeticExpression integer[], -- index into table ArithmeticExpressionBase 
	__ArithmeticFeatureParameter integer[], -- index into table ArithmeticFeatureParameter 
	__DividedBy integer[], -- index into table DividedBy 
	__FeatureArea integer[], -- index into table FeatureArea 
	__FeatureLength integer[], -- index into table FeatureLength 
	__Minus integer[], -- index into table Minus 
	__Negate integer[], -- index into table Negate 
	__Plus integer[], -- index into table Plus 
	__Times integer[]  -- index into table Times 
) ;

CREATE TABLE BinaryBooleanExpressionBase (
	_index_  SERIAL PRIMARY KEY,
	__And_ integer[], -- index into table And 
	__ArithmeticEqual integer[], -- index into table ArithmeticEqual 
	__BooleanEqual integer[], -- index into table BooleanEqual 
	__BooleanExpression integer[], -- index into table BooleanExpressionBase 
	__CharacteristicIs integer[], -- index into table CharacteristicIs 
	__ConstantIs integer[], -- index into table ConstantIs 
	__FeatureIsDatum integer[], -- index into table FeatureIsDatum 
	__FeatureIsInternal integer[], -- index into table FeatureIsInternal 
	__GreaterOrEqual integer[], -- index into table GreaterOrEqual 
	__GreaterThan integer[], -- index into table GreaterThan 
	__LessOrEqual integer[], -- index into table LessOrEqual 
	__LessThan integer[], -- index into table LessThan 
	__Not_ integer[], -- index into table Not 
	__Or_ integer[], -- index into table Or 
	__SamplingRigorIs integer[], -- index into table SamplingRigorIs 
	__ShapeClassIs integer[]  -- index into table ShapeClassIs 
) ;

CREATE TABLE BodySet (
	_index_  SERIAL PRIMARY KEY,
	N text,-- attribute
	__Body integer[]  -- index into table Body 
) ;

CREATE TABLE Body (
	_index_  SERIAL PRIMARY KEY,
	color text NOT NULL,-- attribute
	transparency text NOT NULL,-- attribute
	hidden text NOT NULL,-- attribute
	size text NOT NULL,-- attribute
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	_Transform integer, -- index into table ElementReference 
	_ShellIds integer, -- index into table ArrayReference 
	_FaceIds integer, -- index into table ArrayReference 
	_LoopIds integer, -- index into table ArrayReference 
	_EdgeIds integer, -- index into table ArrayReference 
	_VertexIds integer  -- index into table ArrayReference 
) ;

CREATE TABLE BooleanEqual (
	_index_  SERIAL PRIMARY KEY,
	__And_ integer[], -- index into table And 
	__ArithmeticEqual integer[], -- index into table ArithmeticEqual 
	__BooleanEqual integer[], -- index into table BooleanEqual 
	__BooleanExpression integer[], -- index into table BooleanExpressionBase 
	__CharacteristicIs integer[], -- index into table CharacteristicIs 
	__ConstantIs integer[], -- index into table ConstantIs 
	__FeatureIsDatum integer[], -- index into table FeatureIsDatum 
	__FeatureIsInternal integer[], -- index into table FeatureIsInternal 
	__GreaterOrEqual integer[], -- index into table GreaterOrEqual 
	__GreaterThan integer[], -- index into table GreaterThan 
	__LessOrEqual integer[], -- index into table LessOrEqual 
	__LessThan integer[], -- index into table LessThan 
	__Not_ integer[], -- index into table Not 
	__Or_ integer[], -- index into table Or 
	__SamplingRigorIs integer[], -- index into table SamplingRigorIs 
	__ShapeClassIs integer[]  -- index into table ShapeClassIs 
) ;

CREATE TABLE BooleanExpressionBase (
	_index_  SERIAL PRIMARY KEY 
) ;

CREATE TABLE Bottom (
	_index_  SERIAL PRIMARY KEY,
	BottomEnum text, -- element of text 
	OtherBottom text  -- element of text 
) ;

CREATE TABLE BoundingBox (
	_index_  SERIAL PRIMARY KEY,
	Length text, 
	Width text, 
	Height text  
) ;

CREATE TABLE CADCoordinateSystem (
	_index_  SERIAL PRIMARY KEY,
	color text NOT NULL,-- attribute
	transparency text NOT NULL,-- attribute
	hidden text NOT NULL,-- attribute
	size text NOT NULL,-- attribute
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	_CoordinateSystemCore integer  -- index into table CoordinateSystemCore 
) ;

CREATE TABLE CMMAccuracyTestBase (
	_index_  SERIAL PRIMARY KEY 
) ;

CREATE TABLE CMMAccuracy (
	_index_  SERIAL PRIMARY KEY,
	MinTemperature text, 
	MaxTemperature text, 
	_B89Test integer, -- index into table B89Test 
	_CMMAccuracyTest integer, -- index into table CMMAccuracyTestBase 
	_FPSTest integer, -- index into table FPSTest 
	_ISO10360Test integer, -- index into table ISO10360Test 
	_PointAccuracyTest integer  -- index into table PointAccuracyTest 
) ;

CREATE TABLE CMMAxisDirections (
	_index_  SERIAL PRIMARY KEY,
	XAxisDirection text, -- element of text 
	YAxisDirection text, -- element of text 
	ZAxisDirection text  -- element of text 
) ;

CREATE TABLE CMMGeometry (
	_index_  SERIAL PRIMARY KEY,
	CMMGeometryEnum text, -- element of text 
	OtherCMMGeometry text  -- element of text 
) ;

CREATE TABLE CMMScale (
	_index_  SERIAL PRIMARY KEY,
	ScaleMaterial text, -- element of text 
	ScaleCoefficientOfExpansion DECIMAL(10,2), -- element of DECIMAL(10,2) 
	ScaleCoefficientOfExpansionUncertainty DECIMAL(10,2), -- element of DECIMAL(10,2) 
	OfScale text, -- element of text 
	ScaleResolution text  
) ;

CREATE TABLE CMMScales (
	_index_  SERIAL PRIMARY KEY,
	_XScale integer, -- index into table CMMScale 
	_YScale integer, -- index into table CMMScale 
	_ZScale integer  -- index into table CMMScale 
) ;

CREATE TABLE CMMSpeeds (
	_index_  SERIAL PRIMARY KEY,
	MaxXTraverseSpeed text, 
	MaxYTraverseSpeed text, 
	MaxZTraverseSpeed text, 
	MaxXProbingSpeed text, 
	MaxYProbingSpeed text, 
	MaxZProbingSpeed text  
) ;

CREATE TABLE CMM (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	Name text, -- element of text 
	Description text, -- element of text 
	Manufacturer text, -- element of text 
	ModelNumber text, -- element of text 
	SerialNumber text, -- element of text 
	LocationId text, 
	_Location integer, -- index into table Location 
	_Calibrations integer, -- index into table Calibrations 
	_InspectionTemperatures integer, -- index into table Temperatures 
	_WorkingVolume integer, -- index into table WorkingVolume 
	_EffectiveWorkingVolume integer, -- index into table EffectiveWorkingVolume 
	_Resolution integer, -- index into table Resolution 
	HomeLocation DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	_MachineGeometry integer, -- index into table CMMGeometry 
	_AxisOrientation integer, -- index into table CMMAxisDirections 
	_CMMScales integer, -- index into table CMMScales 
	MaxWorkpieceHeight text, 
	MaxWorkpieceMass text, 
	_JoystickSpeeds integer, -- index into table CMMSpeeds 
	_CNCSpeeds integer, -- index into table CMMSpeeds 
	_RotaryTable integer, -- index into table RotaryTable 
	_NominalAccuracy integer, -- index into table CMMAccuracy 
	_ActualAccuracy integer, -- index into table CMMAccuracy 
	_CarriageIds integer, -- index into table ArrayReferenceFull 
	_ToolIds integer  -- index into table ArrayReferenceFull 
) ;

CREATE TABLE CalibrationMaster (
	_index_  SERIAL PRIMARY KEY,
	SerialNumber text, -- element of text 
	description text  -- element of text 
) ;

CREATE TABLE Calibration (
	_index_  SERIAL PRIMARY KEY,
	_CalibrationMaster integer, -- index into table CalibrationMaster 
	_Temperatures integer, -- index into table Temperatures 
	TimeStamp TIMESTAMP  -- element of TIMESTAMP 
) ;

CREATE TABLE Calibrations (
	_index_  SERIAL PRIMARY KEY,
	__Calibration integer[]  -- index into table Calibration 
) ;

CREATE TABLE Caliper (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	Name text, -- element of text 
	Description text, -- element of text 
	Manufacturer text, -- element of text 
	ModelNumber text, -- element of text 
	SerialNumber text, -- element of text 
	LocationId text, 
	_Location integer, -- index into table Location 
	_Calibrations integer, -- index into table Calibrations 
	_InspectionTemperatures integer, -- index into table Temperatures 
	Resolution text, 
	_Accuracy integer, -- index into table NumericalLengthAccuracy 
	MinMeasurement text, 
	MaxMeasurement text, 
	CanMeasureInnerD BOOLEAN, -- element of BOOLEAN 
	CanMeasureOuterD BOOLEAN, -- element of BOOLEAN 
	CanMeasureDepth BOOLEAN  -- element of BOOLEAN 
) ;

CREATE TABLE CameraBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	ViewPlaneOrigin DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	_Orientation integer, -- index into table Quaternion 
	Ratio DOUBLE PRECISION, -- element of DOUBLE PRECISION 
	Near DOUBLE PRECISION, -- element of DOUBLE PRECISION 
	Far DOUBLE PRECISION, -- element of DOUBLE PRECISION 
	Height DOUBLE PRECISION  -- element of DOUBLE PRECISION 
) ;

CREATE TABLE Camera (
	_index_  SERIAL PRIMARY KEY,
	form text NOT NULL,-- attribute
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	ViewPlaneOrigin DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	_Orientation integer, -- index into table Quaternion 
	Ratio DOUBLE PRECISION, -- element of DOUBLE PRECISION 
	Near DOUBLE PRECISION, -- element of DOUBLE PRECISION 
	Far DOUBLE PRECISION, -- element of DOUBLE PRECISION 
	Height DOUBLE PRECISION  -- element of DOUBLE PRECISION 
) ;

CREATE TABLE CapabilityStudyPlan (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	ThisStatisticalStudyPlanInstanceQPId text, -- element of text 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	CalculateAverageFeatures BOOLEAN, -- element of BOOLEAN 
	_CharacteristicItemIds integer, -- index into table ArrayReferenceFull 
	StatsValuesPerChar StatsValuesEnumType, -- element of StatsValuesEnumType 
	StatsValuesPerSubgroup SubgroupStatsValuesEnumType, -- element of SubgroupStatsValuesEnumType 
	__StatsValuesSummary integer[], -- index into table SummaryStatsValues 
	_PreInspectionTraceability integer, -- index into table PreInspectionTraceability 
	Name text, -- element of text 
	Description text, -- element of text 
	PlanId text, 
	CorrectiveActionPlanId text, 
	NumberOfSamples DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupSize DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_CpkThreshold integer, -- index into table CriterionDecimal 
	_PpkThreshold integer  -- index into table CriterionDecimal 
) ;

CREATE TABLE CapabilityStudyResults (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	ThisStatisticalStudyResultsInstanceQPId text, -- element of text 
	_Status integer, -- index into table StatsEvalStatus 
	__StudyIssue integer[], -- index into table StudyIssue 
	_InspectionTraceability integer, -- index into table InspectionTraceability 
	Name text, -- element of text 
	Description text, -- element of text 
	StudyId text, 
	ResultsId text[], 
	__ResultsQPId integer[], -- index into table QPIdFullReference 
	__ResultsFile integer[], -- index into table ExternalFileReference 
	__AverageFeature integer[], -- index into table AverageFeature 
	__CharacteristicsStats integer[], -- index into table CharacteristicsStats 
	__LinearStatsSummary integer[], -- index into table SummaryStatisticsLinear 
	__AngularStatsSummary integer[], -- index into table SummaryStatisticsAngular 
	__AreaStatsSummary integer[], -- index into table SummaryStatisticsArea 
	__ForceStatsSummary integer[], -- index into table SummaryStatisticsForce 
	__MassStatsSummary integer[], -- index into table SummaryStatisticsMass 
	__PressureStatsSummary integer[], -- index into table SummaryStatisticsPressure 
	__SpeedStatsSummary integer[], -- index into table SummaryStatisticsSpeed 
	__TemperatureStatsSummary integer[], -- index into table SummaryStatisticsTemperature 
	__TimeStatsSummary integer[], -- index into table SummaryStatisticsTime 
	__UserDefinedUnitStatsSummary integer[], -- index into table SummaryStatisticsUserDefinedUnit 
	__StatsSummary integer[], -- index into table SummaryStatistics 
	NumberOfSamples DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupSize DECIMAL(10,2)  -- element of DECIMAL(10,2) 
) ;

CREATE TABLE Carriage (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	Name text, -- element of text 
	Description text, -- element of text 
	Manufacturer text, -- element of text 
	ModelNumber text, -- element of text 
	SerialNumber text, -- element of text 
	LocationId text, 
	_Location integer, -- index into table Location 
	_ToolIds integer  -- index into table ArrayReferenceFull 
) ;

CREATE TABLE Carriages (
	_index_  SERIAL PRIMARY KEY,
	__Carriage integer[]  -- index into table Carriage 
) ;

CREATE TABLE CharacteristicActualBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text  -- element of text 
) ;

CREATE TABLE CharacteristicActuals (
	_index_  SERIAL PRIMARY KEY,
	__AngleBetweenCharacteristicActual integer[], -- index into table AngleBetweenCharacteristicActual 
	__AngleCharacteristicActual integer[], -- index into table AngleCharacteristicActual 
	__AngleFromCharacteristicActual integer[], -- index into table AngleFromCharacteristicActual 
	__AngularCoordinateCharacteristicActual integer[], -- index into table AngularCoordinateCharacteristicActual 
	__AngularityCharacteristicActual integer[], -- index into table AngularityCharacteristicActual 
	__CharacteristicActual integer[], -- index into table CharacteristicActualBase 
	__ChordCharacteristicActual integer[], -- index into table ChordCharacteristicActual 
	__CircularRunoutCharacteristicActual integer[], -- index into table CircularRunoutCharacteristicActual 
	__CircularityCharacteristicActual integer[], -- index into table CircularityCharacteristicActual 
	__ConcentricityCharacteristicActual integer[], -- index into table ConcentricityCharacteristicActual 
	__CurveLengthCharacteristicActual integer[], -- index into table CurveLengthCharacteristicActual 
	__CylindricityCharacteristicActual integer[], -- index into table CylindricityCharacteristicActual 
	__DepthCharacteristicActual integer[], -- index into table DepthCharacteristicActual 
	__DiameterCharacteristicActual integer[], -- index into table DiameterCharacteristicActual 
	__DistanceBetweenCharacteristicActual integer[], -- index into table DistanceBetweenCharacteristicActual 
	__DistanceFromCharacteristicActual integer[], -- index into table DistanceFromCharacteristicActual 
	__FlatnessCharacteristicActual integer[], -- index into table FlatnessCharacteristicActual 
	__HeightCharacteristicActual integer[], -- index into table HeightCharacteristicActual 
	__LengthCharacteristicActual integer[], -- index into table LengthCharacteristicActual 
	__LineProfileCharacteristicActual integer[], -- index into table LineProfileCharacteristicActual 
	__LinearCoordinateCharacteristicActual integer[], -- index into table LinearCoordinateCharacteristicActual 
	__ParallelismCharacteristicActual integer[], -- index into table ParallelismCharacteristicActual 
	__PerpendicularityCharacteristicActual integer[], -- index into table PerpendicularityCharacteristicActual 
	__PointProfileCharacteristicActual integer[], -- index into table PointProfileCharacteristicActual 
	__PositionCharacteristicActual integer[], -- index into table PositionCharacteristicActual 
	__RadiusCharacteristicActual integer[], -- index into table RadiusCharacteristicActual 
	__SquareCharacteristicActual integer[], -- index into table SquareCharacteristicActual 
	__StraightnessCharacteristicActual integer[], -- index into table StraightnessCharacteristicActual 
	__SurfaceProfileCharacteristicActual integer[], -- index into table SurfaceProfileCharacteristicActual 
	__SurfaceProfileNonUniformCharacteristicActual integer[], -- index into table SurfaceProfileNonUniformCharacteristicActual 
	__SurfaceTextureCharacteristicActual integer[], -- index into table SurfaceTextureCharacteristicActual 
	__SymmetryCharacteristicActual integer[], -- index into table SymmetryCharacteristicActual 
	__ThicknessCharacteristicActual integer[], -- index into table ThicknessCharacteristicActual 
	__ThreadCharacteristicActual integer[], -- index into table ThreadCharacteristicActual 
	__TotalRunoutCharacteristicActual integer[], -- index into table TotalRunoutCharacteristicActual 
	__UserDefinedAngularCharacteristicActual integer[], -- index into table UserDefinedAngularCharacteristicActual 
	__UserDefinedAreaCharacteristicActual integer[], -- index into table UserDefinedAreaCharacteristicActual 
	__UserDefinedAttributeCharacteristicActual integer[], -- index into table UserDefinedAttributeCharacteristicActual 
	__UserDefinedForceCharacteristicActual integer[], -- index into table UserDefinedForceCharacteristicActual 
	__UserDefinedLinearCharacteristicActual integer[], -- index into table UserDefinedLinearCharacteristicActual 
	__UserDefinedMassCharacteristicActual integer[], -- index into table UserDefinedMassCharacteristicActual 
	__UserDefinedPressureCharacteristicActual integer[], -- index into table UserDefinedPressureCharacteristicActual 
	__UserDefinedSpeedCharacteristicActual integer[], -- index into table UserDefinedSpeedCharacteristicActual 
	__UserDefinedTemperatureCharacteristicActual integer[], -- index into table UserDefinedTemperatureCharacteristicActual 
	__UserDefinedTimeCharacteristicActual integer[], -- index into table UserDefinedTimeCharacteristicActual 
	__UserDefinedUnitCharacteristicActual integer[], -- index into table UserDefinedUnitCharacteristicActual 
	__WidthCharacteristicActual integer[]  -- index into table WidthCharacteristicActual 
) ;

CREATE TABLE CharacteristicAspectsLists (
	_index_  SERIAL PRIMARY KEY,
	_FormalStandard integer, -- index into table FormalStandard 
	_CharacteristicDefinitions integer, -- index into table CharacteristicDefinitions 
	_DefaultCharacteristicDefinitions integer, -- index into table CharacteristicDefinitions 
	_DefaultToleranceDefinitions integer, -- index into table ToleranceDefinitions 
	_CharacteristicNominals integer, -- index into table CharacteristicNominals 
	_CharacteristicItems integer, -- index into table CharacteristicItems 
	_CharacteristicGroups integer  -- index into table CharacteristicGroups 
) ;

CREATE TABLE CharacteristicBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text  -- element of text 
) ;

CREATE TABLE CharacteristicCircularZoneLimit (
	_index_  SERIAL PRIMARY KEY,
	CenterPoint DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	Diameter text, 
	Normal DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE CharacteristicDefinitionBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN  -- element of BOOLEAN 
) ;

CREATE TABLE CharacteristicDefinitions (
	_index_  SERIAL PRIMARY KEY,
	__AngleBetweenCharacteristicDefinition integer[], -- index into table AngleBetweenCharacteristicDefinition 
	__AngleCharacteristicDefinition integer[], -- index into table AngleCharacteristicDefinition 
	__AngleFromCharacteristicDefinition integer[], -- index into table AngleFromCharacteristicDefinition 
	__AngularCoordinateCharacteristicDefinition integer[], -- index into table AngularCoordinateCharacteristicDefinition 
	__AngularityCharacteristicDefinition integer[], -- index into table AngularityCharacteristicDefinition 
	__CharacteristicDefinition integer[], -- index into table CharacteristicDefinitionBase 
	__ChordCharacteristicDefinition integer[], -- index into table ChordCharacteristicDefinition 
	__CircularRunoutCharacteristicDefinition integer[], -- index into table CircularRunoutCharacteristicDefinition 
	__CircularityCharacteristicDefinition integer[], -- index into table CircularityCharacteristicDefinition 
	__ConcentricityCharacteristicDefinition integer[], -- index into table ConcentricityCharacteristicDefinition 
	__CurveLengthCharacteristicDefinition integer[], -- index into table CurveLengthCharacteristicDefinition 
	__CylindricityCharacteristicDefinition integer[], -- index into table CylindricityCharacteristicDefinition 
	__DepthCharacteristicDefinition integer[], -- index into table DepthCharacteristicDefinition 
	__DiameterCharacteristicDefinition integer[], -- index into table DiameterCharacteristicDefinition 
	__DistanceBetweenCharacteristicDefinition integer[], -- index into table DistanceBetweenCharacteristicDefinition 
	__DistanceFromCharacteristicDefinition integer[], -- index into table DistanceFromCharacteristicDefinition 
	__FlatnessCharacteristicDefinition integer[], -- index into table FlatnessCharacteristicDefinition 
	__HeightCharacteristicDefinition integer[], -- index into table HeightCharacteristicDefinition 
	__LengthCharacteristicDefinition integer[], -- index into table LengthCharacteristicDefinition 
	__LineProfileCharacteristicDefinition integer[], -- index into table LineProfileCharacteristicDefinition 
	__LinearCoordinateCharacteristicDefinition integer[], -- index into table LinearCoordinateCharacteristicDefinition 
	__ParallelismCharacteristicDefinition integer[], -- index into table ParallelismCharacteristicDefinition 
	__PerpendicularityCharacteristicDefinition integer[], -- index into table PerpendicularityCharacteristicDefinition 
	__PointProfileCharacteristicDefinition integer[], -- index into table PointProfileCharacteristicDefinition 
	__PositionCharacteristicDefinition integer[], -- index into table PositionCharacteristicDefinition 
	__RadiusCharacteristicDefinition integer[], -- index into table RadiusCharacteristicDefinition 
	__SquareCharacteristicDefinition integer[], -- index into table SquareCharacteristicDefinition 
	__StraightnessCharacteristicDefinition integer[], -- index into table StraightnessCharacteristicDefinition 
	__SurfaceProfileCharacteristicDefinition integer[], -- index into table SurfaceProfileCharacteristicDefinition 
	__SurfaceProfileNonUniformCharacteristicDefinition integer[], -- index into table SurfaceProfileNonUniformCharacteristicDefinition 
	__SurfaceTextureCharacteristicDefinition integer[], -- index into table SurfaceTextureCharacteristicDefinition 
	__SymmetryCharacteristicDefinition integer[], -- index into table SymmetryCharacteristicDefinition 
	__ThicknessCharacteristicDefinition integer[], -- index into table ThicknessCharacteristicDefinition 
	__ThreadCharacteristicDefinition integer[], -- index into table ThreadCharacteristicDefinition 
	__TotalRunoutCharacteristicDefinition integer[], -- index into table TotalRunoutCharacteristicDefinition 
	__UserDefinedAngularCharacteristicDefinition integer[], -- index into table UserDefinedAngularCharacteristicDefinition 
	__UserDefinedAreaCharacteristicDefinition integer[], -- index into table UserDefinedAreaCharacteristicDefinition 
	__UserDefinedAttributeCharacteristicDefinition integer[], -- index into table UserDefinedAttributeCharacteristicDefinition 
	__UserDefinedForceCharacteristicDefinition integer[], -- index into table UserDefinedForceCharacteristicDefinition 
	__UserDefinedLinearCharacteristicDefinition integer[], -- index into table UserDefinedLinearCharacteristicDefinition 
	__UserDefinedMassCharacteristicDefinition integer[], -- index into table UserDefinedMassCharacteristicDefinition 
	__UserDefinedPressureCharacteristicDefinition integer[], -- index into table UserDefinedPressureCharacteristicDefinition 
	__UserDefinedSpeedCharacteristicDefinition integer[], -- index into table UserDefinedSpeedCharacteristicDefinition 
	__UserDefinedTemperatureCharacteristicDefinition integer[], -- index into table UserDefinedTemperatureCharacteristicDefinition 
	__UserDefinedTimeCharacteristicDefinition integer[], -- index into table UserDefinedTimeCharacteristicDefinition 
	__UserDefinedUnitCharacteristicDefinition integer[], -- index into table UserDefinedUnitCharacteristicDefinition 
	__WidthCharacteristicDefinition integer[]  -- index into table WidthCharacteristicDefinition 
) ;

CREATE TABLE CharacteristicDirectionalZoneLimit (
	_index_  SERIAL PRIMARY KEY,
	_FromPoint integer, -- index into table PointWithName 
	_ToPoint integer, -- index into table PointWithName 
	StartDirection DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	PlaneNormal DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE CharacteristicGroupStatus (
	_index_  SERIAL PRIMARY KEY,
	_Status integer, -- index into table CharacteristicStatus 
	GroupId text  
) ;

CREATE TABLE CharacteristicGroupStatuses (
	_index_  SERIAL PRIMARY KEY,
	__CharacteristicGroupStatus integer[]  -- index into table CharacteristicGroupStatus 
) ;

CREATE TABLE CharacteristicGroup (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_CharacteristicItemIds integer, -- index into table ArrayReferenceFull 
	Description text, -- element of text 
	Name text, -- element of text 
	TransformId text, -- element of text 
	_Units integer, -- index into table OtherUnits 
	_Scale integer  -- index into table Scale 
) ;

CREATE TABLE CharacteristicGroups (
	_index_  SERIAL PRIMARY KEY,
	__CharacteristicGroup integer[], -- index into table CharacteristicGroup 
	__CharacteristicManufacturingProcessGroup integer[], -- index into table CharacteristicManufacturingProcessGroup 
	__CharacteristicSimultaneityGroup integer[]  -- index into table CharacteristicSimultaneityGroup 
) ;

CREATE TABLE CharacteristicIs (
	_index_  SERIAL PRIMARY KEY,
	val text -- attribute
) ;

CREATE TABLE CharacteristicItemBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE CharacteristicItems (
	_index_  SERIAL PRIMARY KEY,
	__AngleBetweenCharacteristicItem integer[], -- index into table AngleBetweenCharacteristicItem 
	__AngleCharacteristicItem integer[], -- index into table AngleCharacteristicItem 
	__AngleFromCharacteristicItem integer[], -- index into table AngleFromCharacteristicItem 
	__AngularCoordinateCharacteristicItem integer[], -- index into table AngularCoordinateCharacteristicItem 
	__AngularityCharacteristicItem integer[], -- index into table AngularityCharacteristicItem 
	__CharacteristicItem integer[], -- index into table CharacteristicItemBase 
	__ChordCharacteristicItem integer[], -- index into table ChordCharacteristicItem 
	__CircularRunoutCharacteristicItem integer[], -- index into table CircularRunoutCharacteristicItem 
	__CircularityCharacteristicItem integer[], -- index into table CircularityCharacteristicItem 
	__ConcentricityCharacteristicItem integer[], -- index into table ConcentricityCharacteristicItem 
	__CurveLengthCharacteristicItem integer[], -- index into table CurveLengthCharacteristicItem 
	__CylindricityCharacteristicItem integer[], -- index into table CylindricityCharacteristicItem 
	__DepthCharacteristicItem integer[], -- index into table DepthCharacteristicItem 
	__DiameterCharacteristicItem integer[], -- index into table DiameterCharacteristicItem 
	__DistanceBetweenCharacteristicItem integer[], -- index into table DistanceBetweenCharacteristicItem 
	__DistanceFromCharacteristicItem integer[], -- index into table DistanceFromCharacteristicItem 
	__FlatnessCharacteristicItem integer[], -- index into table FlatnessCharacteristicItem 
	__HeightCharacteristicItem integer[], -- index into table HeightCharacteristicItem 
	__LengthCharacteristicItem integer[], -- index into table LengthCharacteristicItem 
	__LineProfileCharacteristicItem integer[], -- index into table LineProfileCharacteristicItem 
	__LinearCoordinateCharacteristicItem integer[], -- index into table LinearCoordinateCharacteristicItem 
	__ParallelismCharacteristicItem integer[], -- index into table ParallelismCharacteristicItem 
	__PerpendicularityCharacteristicItem integer[], -- index into table PerpendicularityCharacteristicItem 
	__PointProfileCharacteristicItem integer[], -- index into table PointProfileCharacteristicItem 
	__PositionCharacteristicItem integer[], -- index into table PositionCharacteristicItem 
	__RadiusCharacteristicItem integer[], -- index into table RadiusCharacteristicItem 
	__SquareCharacteristicItem integer[], -- index into table SquareCharacteristicItem 
	__StraightnessCharacteristicItem integer[], -- index into table StraightnessCharacteristicItem 
	__SurfaceProfileCharacteristicItem integer[], -- index into table SurfaceProfileCharacteristicItem 
	__SurfaceProfileNonUniformCharacteristicItem integer[], -- index into table SurfaceProfileNonUniformCharacteristicItem 
	__SurfaceTextureCharacteristicItem integer[], -- index into table SurfaceTextureCharacteristicItem 
	__SymmetryCharacteristicItem integer[], -- index into table SymmetryCharacteristicItem 
	__ThicknessCharacteristicItem integer[], -- index into table ThicknessCharacteristicItem 
	__ThreadCharacteristicItem integer[], -- index into table ThreadCharacteristicItem 
	__TotalRunoutCharacteristicItem integer[], -- index into table TotalRunoutCharacteristicItem 
	__UserDefinedAngularCharacteristicItem integer[], -- index into table UserDefinedAngularCharacteristicItem 
	__UserDefinedAreaCharacteristicItem integer[], -- index into table UserDefinedAreaCharacteristicItem 
	__UserDefinedAttributeCharacteristicItem integer[], -- index into table UserDefinedAttributeCharacteristicItem 
	__UserDefinedForceCharacteristicItem integer[], -- index into table UserDefinedForceCharacteristicItem 
	__UserDefinedLinearCharacteristicItem integer[], -- index into table UserDefinedLinearCharacteristicItem 
	__UserDefinedMassCharacteristicItem integer[], -- index into table UserDefinedMassCharacteristicItem 
	__UserDefinedPressureCharacteristicItem integer[], -- index into table UserDefinedPressureCharacteristicItem 
	__UserDefinedSpeedCharacteristicItem integer[], -- index into table UserDefinedSpeedCharacteristicItem 
	__UserDefinedTemperatureCharacteristicItem integer[], -- index into table UserDefinedTemperatureCharacteristicItem 
	__UserDefinedTimeCharacteristicItem integer[], -- index into table UserDefinedTimeCharacteristicItem 
	__UserDefinedUnitCharacteristicItem integer[], -- index into table UserDefinedUnitCharacteristicItem 
	__WidthCharacteristicItem integer[]  -- index into table WidthCharacteristicItem 
) ;

CREATE TABLE CharacteristicManufacturingProcessGroup (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_CharacteristicItemIds integer, -- index into table ArrayReferenceFull 
	Description text, -- element of text 
	Name text, -- element of text 
	TransformId text, -- element of text 
	_Units integer, -- index into table OtherUnits 
	_Scale integer, -- index into table Scale 
	ManufacturingProcessId text  
) ;

CREATE TABLE CharacteristicNominalBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer  -- index into table KeyCharacteristic 
) ;

CREATE TABLE CharacteristicNominals (
	_index_  SERIAL PRIMARY KEY,
	__AngleBetweenCharacteristicNominal integer[], -- index into table AngleBetweenCharacteristicNominal 
	__AngleCharacteristicNominal integer[], -- index into table AngleCharacteristicNominal 
	__AngleFromCharacteristicNominal integer[], -- index into table AngleFromCharacteristicNominal 
	__AngularCoordinateCharacteristicNominal integer[], -- index into table AngularCoordinateCharacteristicNominal 
	__AngularityCharacteristicNominal integer[], -- index into table AngularityCharacteristicNominal 
	__CharacteristicNominal integer[], -- index into table CharacteristicNominalBase 
	__ChordCharacteristicNominal integer[], -- index into table ChordCharacteristicNominal 
	__CircularRunoutCharacteristicNominal integer[], -- index into table CircularRunoutCharacteristicNominal 
	__CircularityCharacteristicNominal integer[], -- index into table CircularityCharacteristicNominal 
	__ConcentricityCharacteristicNominal integer[], -- index into table ConcentricityCharacteristicNominal 
	__CurveLengthCharacteristicNominal integer[], -- index into table CurveLengthCharacteristicNominal 
	__CylindricityCharacteristicNominal integer[], -- index into table CylindricityCharacteristicNominal 
	__DepthCharacteristicNominal integer[], -- index into table DepthCharacteristicNominal 
	__DiameterCharacteristicNominal integer[], -- index into table DiameterCharacteristicNominal 
	__DistanceBetweenCharacteristicNominal integer[], -- index into table DistanceBetweenCharacteristicNominal 
	__DistanceFromCharacteristicNominal integer[], -- index into table DistanceFromCharacteristicNominal 
	__FlatnessCharacteristicNominal integer[], -- index into table FlatnessCharacteristicNominal 
	__HeightCharacteristicNominal integer[], -- index into table HeightCharacteristicNominal 
	__LengthCharacteristicNominal integer[], -- index into table LengthCharacteristicNominal 
	__LineProfileCharacteristicNominal integer[], -- index into table LineProfileCharacteristicNominal 
	__LinearCoordinateCharacteristicNominal integer[], -- index into table LinearCoordinateCharacteristicNominal 
	__ParallelismCharacteristicNominal integer[], -- index into table ParallelismCharacteristicNominal 
	__PerpendicularityCharacteristicNominal integer[], -- index into table PerpendicularityCharacteristicNominal 
	__PointProfileCharacteristicNominal integer[], -- index into table PointProfileCharacteristicNominal 
	__PositionCharacteristicNominal integer[], -- index into table PositionCharacteristicNominal 
	__RadiusCharacteristicNominal integer[], -- index into table RadiusCharacteristicNominal 
	__SquareCharacteristicNominal integer[], -- index into table SquareCharacteristicNominal 
	__StraightnessCharacteristicNominal integer[], -- index into table StraightnessCharacteristicNominal 
	__SurfaceProfileCharacteristicNominal integer[], -- index into table SurfaceProfileCharacteristicNominal 
	__SurfaceProfileNonUniformCharacteristicNominal integer[], -- index into table SurfaceProfileNonUniformCharacteristicNominal 
	__SurfaceTextureCharacteristicNominal integer[], -- index into table SurfaceTextureCharacteristicNominal 
	__SymmetryCharacteristicNominal integer[], -- index into table SymmetryCharacteristicNominal 
	__ThicknessCharacteristicNominal integer[], -- index into table ThicknessCharacteristicNominal 
	__ThreadCharacteristicNominal integer[], -- index into table ThreadCharacteristicNominal 
	__TotalRunoutCharacteristicNominal integer[], -- index into table TotalRunoutCharacteristicNominal 
	__UserDefinedAngularCharacteristicNominal integer[], -- index into table UserDefinedAngularCharacteristicNominal 
	__UserDefinedAreaCharacteristicNominal integer[], -- index into table UserDefinedAreaCharacteristicNominal 
	__UserDefinedAttributeCharacteristicNominal integer[], -- index into table UserDefinedAttributeCharacteristicNominal 
	__UserDefinedForceCharacteristicNominal integer[], -- index into table UserDefinedForceCharacteristicNominal 
	__UserDefinedLinearCharacteristicNominal integer[], -- index into table UserDefinedLinearCharacteristicNominal 
	__UserDefinedMassCharacteristicNominal integer[], -- index into table UserDefinedMassCharacteristicNominal 
	__UserDefinedPressureCharacteristicNominal integer[], -- index into table UserDefinedPressureCharacteristicNominal 
	__UserDefinedSpeedCharacteristicNominal integer[], -- index into table UserDefinedSpeedCharacteristicNominal 
	__UserDefinedTemperatureCharacteristicNominal integer[], -- index into table UserDefinedTemperatureCharacteristicNominal 
	__UserDefinedTimeCharacteristicNominal integer[], -- index into table UserDefinedTimeCharacteristicNominal 
	__UserDefinedUnitCharacteristicNominal integer[], -- index into table UserDefinedUnitCharacteristicNominal 
	__WidthCharacteristicNominal integer[]  -- index into table WidthCharacteristicNominal 
) ;

CREATE TABLE CharacteristicRectangularZoneLimit (
	_index_  SERIAL PRIMARY KEY,
	Length text, 
	CornerPoint DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	Width text, 
	WidthDirection DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	LengthDirection DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE CharacteristicSimultaneityGroup (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_CharacteristicItemIds integer, -- index into table ArrayReferenceFull 
	Description text, -- element of text 
	Name text, -- element of text 
	TransformId text, -- element of text 
	_Units integer, -- index into table OtherUnits 
	_Scale integer  -- index into table Scale 
) ;

CREATE TABLE CharacteristicStatsEvalBase (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer  -- index into table DistributionTransformation 
) ;

CREATE TABLE CharacteristicStatus (
	_index_  SERIAL PRIMARY KEY,
	CharacteristicStatusEnum text, -- element of text 
	OtherCharacteristicStatus text  -- element of text 
) ;

CREATE TABLE CharacteristicsStats (
	_index_  SERIAL PRIMARY KEY,
	__AngleBetweenCharacteristicStats integer[], -- index into table AngleBetweenCharacteristicStatsEval 
	__AngleCharacteristicStats integer[], -- index into table AngleCharacteristicStatsEval 
	__AngleFromCharacteristicStats integer[], -- index into table AngleFromCharacteristicStatsEval 
	__AngularCharacteristicStats integer[], -- index into table AngularCharacteristicStatsEval 
	__AngularCoordinateCharacteristicStats integer[], -- index into table AngularCoordinateCharacteristicStatsEval 
	__AngularityCharacteristicStats integer[], -- index into table AngularityCharacteristicStatsEval 
	__CharacteristicStats integer[], -- index into table CharacteristicStatsEvalBase 
	__ChordCharacteristicStats integer[], -- index into table ChordCharacteristicStatsEval 
	__CircularRunoutCharacteristicStats integer[], -- index into table CircularRunoutCharacteristicStatsEval 
	__CircularityCharacteristicStats integer[], -- index into table CircularityCharacteristicStatsEval 
	__ConcentricityCharacteristicStats integer[], -- index into table ConcentricityCharacteristicStatsEval 
	__CurveLengthCharacteristicStats integer[], -- index into table CurveLengthCharacteristicStatsEval 
	__CylindricityCharacteristicStats integer[], -- index into table CylindricityCharacteristicStatsEval 
	__DepthCharacteristicStats integer[], -- index into table DepthCharacteristicStatsEval 
	__DiameterCharacteristicStats integer[], -- index into table DiameterCharacteristicStatsEval 
	__DistanceBetweenCharacteristicStats integer[], -- index into table DistanceBetweenCharacteristicStatsEval 
	__DistanceFromCharacteristicStats integer[], -- index into table DistanceFromCharacteristicStatsEval 
	__FlatnessCharacteristicStats integer[], -- index into table FlatnessCharacteristicStatsEval 
	__GeometricCharacteristicStats integer[], -- index into table GeometricCharacteristicStatsEval 
	__HeightCharacteristicStats integer[], -- index into table HeightCharacteristicStatsEval 
	__LengthCharacteristicStats integer[], -- index into table LengthCharacteristicStatsEval 
	__LineProfileCharacteristicStats integer[], -- index into table LineProfileCharacteristicStatsEval 
	__LinearCharacteristicStats integer[], -- index into table LinearCharacteristicStatsEval 
	__LinearCoordinateCharacteristicStats integer[], -- index into table LinearCoordinateCharacteristicStatsEval 
	__LocationCharacteristicStats integer[], -- index into table LocationCharacteristicStatsEval 
	__OrientationCharacteristicStats integer[], -- index into table OrientationCharacteristicStatsEval 
	__ParallelismCharacteristicStats integer[], -- index into table ParallelismCharacteristicStatsEval 
	__PerpendicularityCharacteristicStats integer[], -- index into table PerpendicularityCharacteristicStatsEval 
	__PointProfileCharacteristicStats integer[], -- index into table PointProfileCharacteristicStatsEval 
	__PositionCharacteristicStats integer[], -- index into table PositionCharacteristicStatsEval 
	__RadiusCharacteristicStats integer[], -- index into table RadiusCharacteristicStatsEval 
	__SquareCharacteristicStats integer[], -- index into table SquareCharacteristicStatsEval 
	__StraightnessCharacteristicStats integer[], -- index into table StraightnessCharacteristicStatsEval 
	__SurfaceProfileCharacteristicStats integer[], -- index into table SurfaceProfileCharacteristicStatsEval 
	__SurfaceProfileNonUniformCharacteristicStats integer[], -- index into table SurfaceProfileNonUniformCharacteristicStatsEval 
	__SurfaceTextureCharacteristicStats integer[], -- index into table SurfaceTextureCharacteristicStatsEval 
	__SymmetryCharacteristicStats integer[], -- index into table SymmetryCharacteristicStatsEval 
	__ThicknessCharacteristicStats integer[], -- index into table ThicknessCharacteristicStatsEval 
	__ThreadCharacteristicStats integer[], -- index into table ThreadCharacteristicStatsEval 
	__TotalRunoutCharacteristicStats integer[], -- index into table TotalRunoutCharacteristicStatsEval 
	__UserDefinedAngularCharacteristicStats integer[], -- index into table UserDefinedAngularCharacteristicStatsEval 
	__UserDefinedAreaCharacteristicStats integer[], -- index into table UserDefinedAreaCharacteristicStatsEval 
	__UserDefinedAttributeCharacteristicStats integer[], -- index into table UserDefinedAttributeCharacteristicStatsEval 
	__UserDefinedForceCharacteristicStats integer[], -- index into table UserDefinedForceCharacteristicStatsEval 
	__UserDefinedLinearCharacteristicStats integer[], -- index into table UserDefinedLinearCharacteristicStatsEval 
	__UserDefinedMassCharacteristicStats integer[], -- index into table UserDefinedMassCharacteristicStatsEval 
	__UserDefinedPressureCharacteristicStats integer[], -- index into table UserDefinedPressureCharacteristicStatsEval 
	__UserDefinedSpeedCharacteristicStats integer[], -- index into table UserDefinedSpeedCharacteristicStatsEval 
	__UserDefinedTemperatureCharacteristicStats integer[], -- index into table UserDefinedTemperatureCharacteristicStatsEval 
	__UserDefinedTimeCharacteristicStats integer[], -- index into table UserDefinedTimeCharacteristicStatsEval 
	__UserDefinedUnitCharacteristicStats integer[], -- index into table UserDefinedUnitCharacteristicStatsEval 
	__WidthCharacteristicStats integer[]  -- index into table WidthCharacteristicStatsEval 
) ;

CREATE TABLE ChordCharacteristicActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text  
) ;

CREATE TABLE ChordCharacteristicDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	Dimension text, -- element of text 
	_Tolerance integer, -- index into table LinearTolerance 
	NonTolerance text  -- element of text 
) ;

CREATE TABLE ChordCharacteristicItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE ChordCharacteristicNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	TargetValue text  
) ;

CREATE TABLE ChordCharacteristicStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_ValueStats integer, -- index into table StatsWithTolLinear 
	_MaxValueStats integer, -- index into table StatsLinear 
	_MinValueStats integer, -- index into table StatsLinear 
	_DeviationStats integer, -- index into table StatsWithTolLinear 
	_MaxDeviationStats integer, -- index into table StatsLinear 
	_MinDeviationStats integer  -- index into table StatsLinear 
) ;

CREATE TABLE CircleActualDetermination (
	_index_  SERIAL PRIMARY KEY,
	_Checked integer, -- index into table CircleCheckedFeature 
	_Set integer  -- index into table SetFeature 
) ;

CREATE TABLE CircleBestFit (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	__BaseFeature integer[]  -- index into table SequencedBaseFeature 
) ;

CREATE TABLE CircleCast (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseFeature integer  -- index into table BaseFeature 
) ;

CREATE TABLE CircleCheckedFeature (
	_index_  SERIAL PRIMARY KEY,
	_CheckDetails integer  -- index into table CircleChecked 
) ;

CREATE TABLE CircleChecked (
	_index_  SERIAL PRIMARY KEY,
	_Measured integer, -- index into table MeasuredFeature 
	_Constructed integer  -- index into table CircleConstructionMethod 
) ;

CREATE TABLE CircleConstructionMethod (
	_index_  SERIAL PRIMARY KEY,
	_BestFit integer, -- index into table CircleBestFit 
	_Recompensated integer, -- index into table CircleRecomp 
	_Intersection integer, -- index into table CircleIntersection 
	_Projection integer, -- index into table CircleProjection 
	_Copy integer, -- index into table CircleCopy 
	_Cast integer, -- index into table CircleCast 
	_Tangent integer, -- index into table CircleTangent 
	_TangentThrough integer, -- index into table CircleTangentThrough 
	_Transform integer, -- index into table CircleTransform 
	_FromCone integer, -- index into table CircleFromCone 
	_FromScan integer  -- index into table CircleFromScan 
) ;

CREATE TABLE CircleCopy (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseCircle integer  -- index into table BaseFeature 
) ;

CREATE TABLE CircleFeatureActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	_PointList integer, -- index into table PointListActual 
	FeatureItemId text, 
	ActualComponentId text, 
	ManufacturingProcessId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	Location text, 
	Normal text, 
	Diameter text, 
	DiameterMin text, 
	DiameterMax text, 
	Form text  
) ;

CREATE TABLE CircleFeatureDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	InternalExternal text, -- element of text 
	Diameter text  
) ;

CREATE TABLE CircleFeatureItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	FeatureNominalId text, 
	ParentFeatureItemId text, 
	FeatureName text, -- element of text 
	QPId text, -- element of text 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	CoordinateSystemId text, 
	_DeterminationMode integer, -- index into table CircleActualDetermination 
	_SubstituteFeatureAlgorithm integer  -- index into table FeatureOfSizeSubstituteFeatureAlgorithm 
) ;

CREATE TABLE CircleFeatureNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Name text, -- element of text 
	_PointList integer, -- index into table PointListNominal 
	FeatureDefinitionId text, -- element of text 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Location DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	Normal DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE CircleFromCone (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	Diameter text, 
	Distance text  
) ;

CREATE TABLE CircleFromScan (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_SurfaceFeature integer, -- index into table BaseFeature 
	SearchRadius text, 
	Depth text  
) ;

CREATE TABLE CircleIntersection (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_IntersectionPlane integer, -- index into table BaseFeature 
	_IntersectionFeature integer  -- index into table BaseFeature 
) ;

CREATE TABLE CirclePointSamplingStrategy (
	_index_  SERIAL PRIMARY KEY,
	PointSamplingStrategyEnum text, -- element of text 
	UserDefinedStrategy text  -- element of text 
) ;

CREATE TABLE CircleProjection (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_ProjectionCircle integer, -- index into table BaseFeature 
	_ProjectionPlane integer  -- index into table BaseFeature 
) ;

CREATE TABLE CircleRecomp (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseFeaturePointList integer  -- index into table BaseFeaturePointList 
) ;

CREATE TABLE CircleTangentThrough (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_TangentFeature integer, -- index into table BaseFeature 
	_PointFeature integer  -- index into table BaseFeature 
) ;

CREATE TABLE CircleTangent (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	__TangentFeature integer[]  -- index into table SequencedBaseFeature 
) ;

CREATE TABLE CircleTransform (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseCircle integer, -- index into table BaseFeature 
	_Transformation integer  -- index into table TransformationReference 
) ;

CREATE TABLE Circle (
	_index_  SERIAL PRIMARY KEY,
	CenterPoint DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	Diameter text, 
	Normal DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE CircularRunoutCharacteristicActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text, 
	DatumsOk BOOLEAN  -- element of BOOLEAN 
) ;

CREATE TABLE CircularRunoutCharacteristicDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	_DirectionFeature integer, -- index into table DirectionFeature 
	_CollectionPlane integer, -- index into table CollectionPlane 
	_IntersectionPlane integer, -- index into table IntersectionPlane 
	_OrientationPlane integer, -- index into table OrientationPlane 
	ToleranceValue text, 
	DatumReferenceFrameId text  
) ;

CREATE TABLE CircularRunoutCharacteristicItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE CircularRunoutCharacteristicNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_ZoneLimit integer, -- index into table CharacteristicDirectionalZoneLimit 
	ZoneDirection DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE CircularRunoutCharacteristicStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_ValueStats integer, -- index into table StatsWithTolLinear 
	_MaxValueStats integer, -- index into table StatsLinear 
	_MinValueStats integer, -- index into table StatsLinear 
	CapabilityCalculationMethod text, -- element of text 
	_DatumsOkStats integer  -- index into table StatsPassFail 
) ;

CREATE TABLE CircularUnitArea (
	_index_  SERIAL PRIMARY KEY,
	CircularUnitAreaDiameter text  
) ;

CREATE TABLE CircularityCharacteristicActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text, 
	MaxCircularity text, 
	_ZoneRadii integer, -- index into table ActualZoneRadii 
	_ZonePlane integer  -- index into table ActualPlane 
) ;

CREATE TABLE CircularityCharacteristicDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	_DirectionFeature integer, -- index into table DirectionFeature 
	_CollectionPlane integer, -- index into table CollectionPlane 
	_IntersectionPlane integer, -- index into table IntersectionPlane 
	_OrientationPlane integer, -- index into table OrientationPlane 
	ToleranceValue text, 
	_ToleranceZonePerUnitAngle integer, -- index into table ToleranceZonePerUnitAngle 
	_ToleranceZonePerUnitArcLength integer  -- index into table ToleranceZonePerUnitLength 
) ;

CREATE TABLE CircularityCharacteristicItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE CircularityCharacteristicNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_ZoneLimit integer  -- index into table CharacteristicDirectionalZoneLimit 
) ;

CREATE TABLE CircularityCharacteristicStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_ValueStats integer, -- index into table StatsWithTolLinear 
	_MaxValueStats integer, -- index into table StatsLinear 
	_MinValueStats integer, -- index into table StatsLinear 
	CapabilityCalculationMethod text, -- element of text 
	_MaxCircularityStats integer  -- index into table StatsLinear 
) ;

CREATE TABLE CoEdgeMesh (
	_index_  SERIAL PRIMARY KEY,
	_EdgeOriented integer, -- index into table EdgeOriented 
	_CurveMesh integer  -- index into table ElementReference 
) ;

CREATE TABLE CoEdge (
	_index_  SERIAL PRIMARY KEY,
	_EdgeOriented integer, -- index into table EdgeOriented 
	_Aggregate12 integer, -- index into table Aggregate12 
	_ArcCircular12 integer, -- index into table ArcCircular12 
	_ArcConic12 integer, -- index into table ArcConic12 
	_Curve12 integer, -- index into table Curve12Base 
	_Nurbs12 integer, -- index into table Nurbs12 
	_Polyline12 integer, -- index into table Polyline12 
	_Segment12 integer, -- index into table Segment12 
	_Spline12 integer  -- index into table Spline12 
) ;

CREATE TABLE CoEdgesMesh (
	_index_  SERIAL PRIMARY KEY,
	N text,-- attribute
	__CoEdgeMesh integer[]  -- index into table CoEdgeMesh 
) ;

CREATE TABLE CoEdges (
	_index_  SERIAL PRIMARY KEY,
	N text,-- attribute
	__CoEdge integer[]  -- index into table CoEdge 
) ;

CREATE TABLE CollectionPlane (
	_index_  SERIAL PRIMARY KEY,
	CollectionPlaneEnum text, -- element of text 
	DatumDefinitionId text  
) ;

CREATE TABLE Comparator (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	Name text, -- element of text 
	Description text, -- element of text 
	Manufacturer text, -- element of text 
	ModelNumber text, -- element of text 
	SerialNumber text, -- element of text 
	LocationId text, 
	_Location integer, -- index into table Location 
	_Calibrations integer, -- index into table Calibrations 
	_InspectionTemperatures integer, -- index into table Temperatures 
	_WorkingVolume integer, -- index into table WorkingVolume 
	_EffectiveWorkingVolume integer, -- index into table EffectiveWorkingVolume 
	_Resolution integer  -- index into table Resolution 
) ;

CREATE TABLE ComponentSet (
	_index_  SERIAL PRIMARY KEY,
	N text,-- attribute
	__Component integer[]  -- index into table Component 
) ;

CREATE TABLE Component (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	QPId text, -- element of text 
	_Transform integer, -- index into table ElementReference 
	_Traceability integer, -- index into table ProductTraceability 
	_Part integer, -- index into table ElementReference 
	_Assembly integer, -- index into table ElementReference 
	_DefinitionInternal integer  -- index into table InternalComponent 
) ;

CREATE TABLE CompositeFeatureActualBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	_PointList integer, -- index into table PointListActual 
	FeatureItemId text, 
	ActualComponentId text, 
	ManufacturingProcessId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	_NotedEventIds integer  -- index into table ArrayReferenceFull 
) ;

CREATE TABLE CompositeFeatureDefinitionBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer  -- index into table Attributes 
) ;

CREATE TABLE CompositeFeatureItemBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	FeatureNominalId text, 
	ParentFeatureItemId text, 
	FeatureName text, -- element of text 
	QPId text, -- element of text 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	CoordinateSystemId text  
) ;

CREATE TABLE CompositeFeatureNominalBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Name text, -- element of text 
	_PointList integer, -- index into table PointListNominal 
	FeatureDefinitionId text, -- element of text 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	_FeatureNominalIds integer  -- index into table ArrayReferenceFull 
) ;

CREATE TABLE CompositeSegmentActualBase (
	_index_  SERIAL PRIMARY KEY,
	Value text, 
	MaxValue text, 
	MinValue text, 
	_Status integer, -- index into table CharacteristicStatus 
	DRFTransformActualId text, 
	__ZoneData integer[]  -- index into table ZoneData 
) ;

CREATE TABLE CompositeSegmentDefinitionBase (
	_index_  SERIAL PRIMARY KEY,
	DatumReferenceFrameId text, 
	ToleranceValue text  
) ;

CREATE TABLE CompositeSegmentPositionActual (
	_index_  SERIAL PRIMARY KEY,
	Value text, 
	MaxValue text, 
	MinValue text, 
	_Status integer, -- index into table CharacteristicStatus 
	DRFTransformActualId text, 
	__ZoneData integer[]  -- index into table ZoneData 
) ;

CREATE TABLE CompositeSegmentPositionDefinition (
	_index_  SERIAL PRIMARY KEY,
	DatumReferenceFrameId text, 
	ToleranceValue text, 
	MaterialCondition text, -- element of text 
	_ZoneShape integer, -- index into table PositionZoneShape 
	ProjectedToleranceZone text  
) ;

CREATE TABLE CompositeSegmentPositionStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_ValueStats integer, -- index into table StatsWithTolLinear 
	_MaxValueStats integer, -- index into table StatsLinear 
	_MinValueStats integer  -- index into table StatsLinear 
) ;

CREATE TABLE CompositeSegmentProfileActual (
	_index_  SERIAL PRIMARY KEY,
	Value text, 
	MaxValue text, 
	MinValue text, 
	_Status integer, -- index into table CharacteristicStatus 
	DRFTransformActualId text, 
	__ZoneData integer[]  -- index into table ZoneData 
) ;

CREATE TABLE CompositeSegmentProfileDefinition (
	_index_  SERIAL PRIMARY KEY,
	DatumReferenceFrameId text, 
	ToleranceValue text, 
	OuterDisposition text  
) ;

CREATE TABLE CompositeSegmentProfileStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_ValueStats integer, -- index into table StatsWithTolLinear 
	_MaxValueStats integer, -- index into table StatsLinear 
	_MinValueStats integer  -- index into table StatsLinear 
) ;

CREATE TABLE CompositeSegmentStatsEvalBase (
	_index_  SERIAL PRIMARY KEY,
	_ValueStats integer, -- index into table StatsWithTolLinear 
	_MaxValueStats integer, -- index into table StatsLinear 
	_MinValueStats integer  -- index into table StatsLinear 
) ;

CREATE TABLE CompositeSegmentSymmetryActual (
	_index_  SERIAL PRIMARY KEY,
	Value text, 
	MaxValue text, 
	MinValue text, 
	_Status integer, -- index into table CharacteristicStatus 
	DRFTransformActualId text, 
	__ZoneData integer[]  -- index into table ZoneData 
) ;

CREATE TABLE CompositeSegmentSymmetryDefinition (
	_index_  SERIAL PRIMARY KEY,
	DatumReferenceFrameId text, 
	ToleranceValue text  
) ;

CREATE TABLE CompositeSegmentSymmetryStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_ValueStats integer, -- index into table StatsWithTolLinear 
	_MaxValueStats integer, -- index into table StatsLinear 
	_MinValueStats integer  -- index into table StatsLinear 
) ;

CREATE TABLE CompositeSegmentsPositionStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_SecondCompositeSegmentPositionStats integer, -- index into table CompositeSegmentPositionStatsEval 
	_ThirdCompositeSegmentPositionStats integer, -- index into table CompositeSegmentPositionStatsEval 
	_FourthCompositeSegmentPositionStats integer  -- index into table CompositeSegmentPositionStatsEval 
) ;

CREATE TABLE CompositeSegmentsProfileStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_SecondCompositeSegmentProfileStats integer, -- index into table CompositeSegmentProfileStatsEval 
	_ThirdCompositeSegmentProfileStats integer, -- index into table CompositeSegmentProfileStatsEval 
	_FourthCompositeSegmentProfileStats integer  -- index into table CompositeSegmentProfileStatsEval 
) ;

CREATE TABLE CompositeSegmentsSymmetryStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_SecondCompositeSegmentSymmetryStats integer, -- index into table CompositeSegmentSymmetryStatsEval 
	_ThirdCompositeSegmentSymmetryStats integer  -- index into table CompositeSegmentSymmetryStatsEval 
) ;

CREATE TABLE CompoundDatum (
	_index_  SERIAL PRIMARY KEY,
	__Datum integer[], -- index into table SequencedDatum 
	ReducedDatum text  -- element of text 
) ;

CREATE TABLE CompoundFeatureActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	_PointList integer, -- index into table PointListActual 
	FeatureItemId text, 
	ActualComponentId text, 
	ManufacturingProcessId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	Location text, 
	Direction text  
) ;

CREATE TABLE CompoundFeatureDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer  -- index into table Attributes 
) ;

CREATE TABLE CompoundFeatureItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	FeatureNominalId text, 
	ParentFeatureItemId text, 
	FeatureName text, -- element of text 
	QPId text, -- element of text 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	CoordinateSystemId text, 
	_SubstituteFeatureAlgorithm integer  -- index into table FeatureOfSizeSubstituteFeatureAlgorithm 
) ;

CREATE TABLE CompoundFeatureNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Name text, -- element of text 
	_PointList integer, -- index into table PointListNominal 
	FeatureDefinitionId text, -- element of text 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	Location DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	Direction DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	CompoundFeatureForm text  -- element of text 
) ;

CREATE TABLE ConcentricityCharacteristicActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text, 
	__ZoneData integer[], -- index into table ZoneData 
	DatumsOk BOOLEAN  -- element of BOOLEAN 
) ;

CREATE TABLE ConcentricityCharacteristicDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	_DirectionFeature integer, -- index into table DirectionFeature 
	_CollectionPlane integer, -- index into table CollectionPlane 
	_IntersectionPlane integer, -- index into table IntersectionPlane 
	_OrientationPlane integer, -- index into table OrientationPlane 
	ToleranceValue text, 
	DatumReferenceFrameId text, 
	_ZoneShape integer  -- index into table ConcentricityZoneShape 
) ;

CREATE TABLE ConcentricityCharacteristicItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE ConcentricityCharacteristicNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_ZoneLimit integer  -- index into table CharacteristicDirectionalZoneLimit 
) ;

CREATE TABLE ConcentricityCharacteristicStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_ValueStats integer, -- index into table StatsWithTolLinear 
	_MaxValueStats integer, -- index into table StatsLinear 
	_MinValueStats integer, -- index into table StatsLinear 
	_DatumsOkStats integer, -- index into table StatsPassFail 
	CapabilityCalculationMethod text  -- element of text 
) ;

CREATE TABLE ConcentricityDiametricalZone (
	_index_  SERIAL PRIMARY KEY 
) ;

CREATE TABLE ConcentricityNonDiametricalZone (
	_index_  SERIAL PRIMARY KEY 
) ;

CREATE TABLE ConcentricitySphericalZone (
	_index_  SERIAL PRIMARY KEY 
) ;

CREATE TABLE ConcentricityZoneShape (
	_index_  SERIAL PRIMARY KEY,
	_SphericalZone integer, -- index into table ConcentricitySphericalZone 
	_DiametricalZone integer, -- index into table ConcentricityDiametricalZone 
	_NonDiametricalZone integer  -- index into table ConcentricityNonDiametricalZone 
) ;

CREATE TABLE Cone23Core (
	_index_  SERIAL PRIMARY KEY,
	turnedV text NOT NULL,-- attribute
	scaleU text NOT NULL,-- attribute
	scaleV text NOT NULL,-- attribute
	form text NOT NULL,-- attribute
	DiameterBottom DOUBLE PRECISION, -- element of DOUBLE PRECISION 
	DiameterTop DOUBLE PRECISION, -- element of DOUBLE PRECISION 
	Length DOUBLE PRECISION, -- element of DOUBLE PRECISION 
	_Axis integer, -- index into table Axis 
	_Sweep integer  -- index into table Sweep 
) ;

CREATE TABLE Cone23 (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	_Cone23Core integer, -- index into table Cone23Core 
	_Transform integer  -- index into table ElementReference 
) ;

CREATE TABLE ConeActualDetermination (
	_index_  SERIAL PRIMARY KEY,
	_Checked integer, -- index into table ConeCheckedFeature 
	_Set integer  -- index into table SetFeature 
) ;

CREATE TABLE ConeBestFit (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	__BaseFeature integer[]  -- index into table SequencedBaseFeature 
) ;

CREATE TABLE ConeCast (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseFeature integer  -- index into table BaseFeature 
) ;

CREATE TABLE ConeCheckedFeature (
	_index_  SERIAL PRIMARY KEY,
	_CheckDetails integer  -- index into table ConeChecked 
) ;

CREATE TABLE ConeChecked (
	_index_  SERIAL PRIMARY KEY,
	_Measured integer, -- index into table MeasuredFeature 
	_Constructed integer  -- index into table ConeConstructionMethod 
) ;

CREATE TABLE ConeConstructionMethod (
	_index_  SERIAL PRIMARY KEY,
	_BestFit integer, -- index into table ConeBestFit 
	_Recompensated integer, -- index into table ConeRecomp 
	_Copy integer, -- index into table ConeCopy 
	_Cast integer, -- index into table ConeCast 
	_Transform integer, -- index into table ConeTransform 
	_FromScan integer  -- index into table ConeFromScan 
) ;

CREATE TABLE ConeCopy (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseCone integer  -- index into table BaseFeature 
) ;

CREATE TABLE ConeFeatureActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	_PointList integer, -- index into table PointListActual 
	FeatureItemId text, 
	ActualComponentId text, 
	ManufacturingProcessId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	_Axis integer, -- index into table ActualAxis 
	Diameter text, 
	DiameterMin text, 
	DiameterMax text, 
	HalfAngle text, 
	FullAngle text, 
	SmallEndDistance text, 
	LargeEndDistance text, 
	_Sweep integer, -- index into table Sweep 
	Form text  
) ;

CREATE TABLE ConeFeatureDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	InternalExternal text, -- element of text 
	Diameter text, 
	HalfAngle text, 
	FullAngle text, 
	LargeEndDistance text, 
	SmallEndDistance text  
) ;

CREATE TABLE ConeFeatureItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	FeatureNominalId text, 
	ParentFeatureItemId text, 
	FeatureName text, -- element of text 
	QPId text, -- element of text 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	CoordinateSystemId text, 
	_DeterminationMode integer, -- index into table ConeActualDetermination 
	_SubstituteFeatureAlgorithm integer  -- index into table FeatureOfSizeSubstituteFeatureAlgorithm 
) ;

CREATE TABLE ConeFeatureNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Name text, -- element of text 
	_PointList integer, -- index into table PointListNominal 
	FeatureDefinitionId text, -- element of text 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	_Axis integer, -- index into table Axis 
	_Sweep integer  -- index into table Sweep 
) ;

CREATE TABLE ConeFromScan (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_SurfaceFeature integer, -- index into table BaseFeature 
	SearchRadius text  
) ;

CREATE TABLE ConePointSamplingStrategy (
	_index_  SERIAL PRIMARY KEY,
	PointSamplingStrategyEnum text, -- element of text 
	UserDefinedStrategy text  -- element of text 
) ;

CREATE TABLE ConeRecomp (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseFeaturePointList integer  -- index into table BaseFeaturePointList 
) ;

CREATE TABLE ConeTransform (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseCone integer, -- index into table BaseFeature 
	_Transformation integer  -- index into table TransformationReference 
) ;

CREATE TABLE ConicalSegmentActualDetermination (
	_index_  SERIAL PRIMARY KEY,
	_Checked integer, -- index into table ConicalSegmentCheckedFeature 
	_Set integer  -- index into table SetFeature 
) ;

CREATE TABLE ConicalSegmentBestFit (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	__BaseFeature integer[]  -- index into table SequencedBaseFeature 
) ;

CREATE TABLE ConicalSegmentCast (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseFeature integer  -- index into table BaseFeature 
) ;

CREATE TABLE ConicalSegmentCheckedFeature (
	_index_  SERIAL PRIMARY KEY,
	_CheckDetails integer  -- index into table ConicalSegmentChecked 
) ;

CREATE TABLE ConicalSegmentChecked (
	_index_  SERIAL PRIMARY KEY,
	_Measured integer, -- index into table MeasuredFeature 
	_Constructed integer  -- index into table ConicalSegmentConstructionMethod 
) ;

CREATE TABLE ConicalSegmentConstructionMethod (
	_index_  SERIAL PRIMARY KEY,
	_BestFit integer, -- index into table ConicalSegmentBestFit 
	_Recompensated integer, -- index into table ConicalSegmentRecomp 
	_Copy integer, -- index into table ConicalSegmentCopy 
	_Cast integer, -- index into table ConicalSegmentCast 
	_Transform integer  -- index into table ConicalSegmentTransform 
) ;

CREATE TABLE ConicalSegmentCopy (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseConicalSegment integer  -- index into table BaseFeature 
) ;

CREATE TABLE ConicalSegmentFeatureActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	_PointList integer, -- index into table PointListActual 
	FeatureItemId text, 
	ActualComponentId text, 
	ManufacturingProcessId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	_Axis integer, -- index into table ActualAxis 
	Diameter text, 
	DiameterMin text, 
	DiameterMax text, 
	HalfAngle text, 
	FullAngle text, 
	SmallEndDistance text, 
	LargeEndDistance text, 
	_Sweep integer, -- index into table Sweep 
	Form text  
) ;

CREATE TABLE ConicalSegmentFeatureDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	InternalExternal text, -- element of text 
	Diameter text, 
	HalfAngle text, 
	FullAngle text, 
	LargeEndDistance text, 
	SmallEndDistance text  
) ;

CREATE TABLE ConicalSegmentFeatureItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	FeatureNominalId text, 
	ParentFeatureItemId text, 
	FeatureName text, -- element of text 
	QPId text, -- element of text 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	CoordinateSystemId text, 
	_DeterminationMode integer, -- index into table ConicalSegmentActualDetermination 
	_SubstituteFeatureAlgorithm integer  -- index into table NonFeatureOfSizeSubstituteFeatureAlgorithm 
) ;

CREATE TABLE ConicalSegmentFeatureNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Name text, -- element of text 
	_PointList integer, -- index into table PointListNominal 
	FeatureDefinitionId text, -- element of text 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	_Axis integer, -- index into table Axis 
	_Sweep integer  -- index into table Sweep 
) ;

CREATE TABLE ConicalSegmentPointSamplingStrategy (
	_index_  SERIAL PRIMARY KEY,
	PointSamplingStrategyEnum text, -- element of text 
	UserDefinedStrategy text  -- element of text 
) ;

CREATE TABLE ConicalSegmentRecomp (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseFeaturePointList integer  -- index into table BaseFeaturePointList 
) ;

CREATE TABLE ConicalSegmentTransform (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseConicalSegment integer, -- index into table BaseFeature 
	_Transformation integer  -- index into table TransformationReference 
) ;

CREATE TABLE ConstantIs (
	_index_  SERIAL PRIMARY KEY,
	val text -- attribute
) ;

CREATE TABLE ConstructionMethodBase (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN  -- element of BOOLEAN 
) ;

CREATE TABLE ControlIssueDetails (
	_index_  SERIAL PRIMARY KEY,
	_ControlIssue integer, -- index into table ControlIssue 
	ControlMethodId text, 
	StudyIssueId text  
) ;

CREATE TABLE ControlIssue (
	_index_  SERIAL PRIMARY KEY,
	ControlIssueEnum text, -- element of text 
	OtherControlIssue text  -- element of text 
) ;

CREATE TABLE ControlMethod (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	AssignableCauseId text[], 
	_NumOutOfTolerance integer, -- index into table CriterionInteger 
	_CpThreshold integer, -- index into table CriterionDecimal 
	_CpkThreshold integer, -- index into table CriterionDecimal 
	_PpThreshold integer, -- index into table CriterionDecimal 
	_PpkThreshold integer, -- index into table CriterionDecimal 
	_NumOutOfControl integer, -- index into table CriterionInteger 
	_TrendGrouping integer, -- index into table CriterionInteger 
	_SkewGrouping integer, -- index into table CriterionInteger 
	_OneThirdGrouping integer, -- index into table CriterionOutOf 
	_TwoThirdsGrouping integer, -- index into table CriterionOutOf 
	_Oscillation integer, -- index into table CriterionOutOf 
	_Stratification integer, -- index into table CriterionOutOf 
	_NumOutOfControlRng integer  -- index into table CriterionInteger 
) ;

CREATE TABLE CoordinateCharacteristicActualBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	_TypeOfCoordinates integer  -- index into table OfCoordinatesType 
) ;

CREATE TABLE CoordinateCharacteristicDefinitionBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	Dimension text  -- element of text 
) ;

CREATE TABLE CoordinateCharacteristicItemBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE CoordinateCharacteristicNominalBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer  -- index into table KeyCharacteristic 
) ;

CREATE TABLE CoordinateMeasureFeatureMethod (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_ChosenResourceIds integer, -- index into table ArrayReferenceFull 
	_WorkInstructionIds integer, -- index into table ArrayReferenceFull 
	NumberOfMeasurementPoints DECIMAL(10,2)  -- element of DECIMAL(10,2) 
) ;

CREATE TABLE CoordinateSystemActualTransform (
	_index_  SERIAL PRIMARY KEY,
	_ActualTransform integer, -- index into table TransformMatrix 
	CoordinateSystemId text  
) ;

CREATE TABLE CoordinateSystemActualTransforms (
	_index_  SERIAL PRIMARY KEY,
	__Transform integer[]  -- index into table CoordinateSystemActualTransform 
) ;

CREATE TABLE CoordinateSystemCore (
	_index_  SERIAL PRIMARY KEY,
	_Rotation integer, -- index into table TransformRotation 
	Origin DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE CoordinateSystemList (
	_index_  SERIAL PRIMARY KEY,
	__CoordinateSystem integer[], -- index into table CoordinateSystem 
	CommonCoordinateSystemId text, 
	MachineCoordinateSystemId text  
) ;

CREATE TABLE CoordinateSystemSet (
	_index_  SERIAL PRIMARY KEY,
	N text,-- attribute
	__CoordinateSystem integer[]  -- index into table CADCoordinateSystem 
) ;

CREATE TABLE CoordinateSystem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Name text, -- element of text 
	_NominalTransform integer, -- index into table TransformMatrix 
	InternalCADCoordinateSystemId text, 
	ExternalCADCoordinateSystemId text, 
	_AlignmentOperations integer, -- index into table AlignmentOperations 
	SequenceNumber DECIMAL(10,2)  -- element of DECIMAL(10,2) 
) ;

CREATE TABLE CorrectiveActionPlan (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_AssignableCauses integer, -- index into table AssignableCauses 
	_CorrectiveActions integer  -- index into table CorrectiveActions 
) ;

CREATE TABLE CorrectiveActionPlans (
	_index_  SERIAL PRIMARY KEY,
	__CorrectiveActionPlan integer[]  -- index into table CorrectiveActionPlan 
) ;

CREATE TABLE CorrectiveAction (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	ActionToTake text, -- element of text 
	ActionToTakeEnum text  -- element of text 
) ;

CREATE TABLE CorrectiveActions (
	_index_  SERIAL PRIMARY KEY,
	__CorrectiveAction integer[]  -- index into table CorrectiveAction 
) ;

CREATE TABLE CriterionAngular (
	_index_  SERIAL PRIMARY KEY,
	angularUnit text NOT NULL,-- attribute
	Limit_ DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_NumberAllowedExceptions integer, -- index into table LimitingNumber 
	ExtremeLimit DECIMAL(10,2)  -- element of DECIMAL(10,2) 
) ;

CREATE TABLE CriterionArea (
	_index_  SERIAL PRIMARY KEY,
	areaUnit text NOT NULL,-- attribute
	Limit_ DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_NumberAllowedExceptions integer, -- index into table LimitingNumber 
	ExtremeLimit DECIMAL(10,2)  -- element of DECIMAL(10,2) 
) ;

CREATE TABLE CriterionDecimal (
	_index_  SERIAL PRIMARY KEY,
	Limit_ DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_NumberAllowedExceptions integer, -- index into table LimitingNumber 
	ExtremeLimit DECIMAL(10,2)  -- element of DECIMAL(10,2) 
) ;

CREATE TABLE CriterionForce (
	_index_  SERIAL PRIMARY KEY,
	forceUnit text NOT NULL,-- attribute
	Limit_ DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_NumberAllowedExceptions integer, -- index into table LimitingNumber 
	ExtremeLimit DECIMAL(10,2)  -- element of DECIMAL(10,2) 
) ;

CREATE TABLE CriterionInteger (
	_index_  SERIAL PRIMARY KEY,
	Limit_ DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_NumberAllowedExceptions integer, -- index into table LimitingNumber 
	ExtremeLimit DECIMAL(10,2)  -- element of DECIMAL(10,2) 
) ;

CREATE TABLE CriterionLinear (
	_index_  SERIAL PRIMARY KEY,
	linearUnit text NOT NULL,-- attribute
	Limit_ DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_NumberAllowedExceptions integer, -- index into table LimitingNumber 
	ExtremeLimit DECIMAL(10,2)  -- element of DECIMAL(10,2) 
) ;

CREATE TABLE CriterionMass (
	_index_  SERIAL PRIMARY KEY,
	massUnit text NOT NULL,-- attribute
	Limit_ DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_NumberAllowedExceptions integer, -- index into table LimitingNumber 
	ExtremeLimit DECIMAL(10,2)  -- element of DECIMAL(10,2) 
) ;

CREATE TABLE CriterionOutOf (
	_index_  SERIAL PRIMARY KEY,
	Numerator DECIMAL(10,2), -- element of DECIMAL(10,2) 
	Denominator DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_NumberAllowedExceptions integer  -- index into table LimitingNumber 
) ;

CREATE TABLE CriterionPressure (
	_index_  SERIAL PRIMARY KEY,
	pressureUnit text NOT NULL,-- attribute
	Limit_ DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_NumberAllowedExceptions integer, -- index into table LimitingNumber 
	ExtremeLimit DECIMAL(10,2)  -- element of DECIMAL(10,2) 
) ;

CREATE TABLE CriterionSpeed (
	_index_  SERIAL PRIMARY KEY,
	speedUnit text NOT NULL,-- attribute
	Limit_ DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_NumberAllowedExceptions integer, -- index into table LimitingNumber 
	ExtremeLimit DECIMAL(10,2)  -- element of DECIMAL(10,2) 
) ;

CREATE TABLE CriterionTemperature (
	_index_  SERIAL PRIMARY KEY,
	temperatureUnit text NOT NULL,-- attribute
	Limit_ DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_NumberAllowedExceptions integer, -- index into table LimitingNumber 
	ExtremeLimit DECIMAL(10,2)  -- element of DECIMAL(10,2) 
) ;

CREATE TABLE CriterionTime (
	_index_  SERIAL PRIMARY KEY,
	timeUnit text NOT NULL,-- attribute
	Limit_ DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_NumberAllowedExceptions integer, -- index into table LimitingNumber 
	ExtremeLimit DECIMAL(10,2)  -- element of DECIMAL(10,2) 
) ;

CREATE TABLE CriterionUserDefinedUnit (
	_index_  SERIAL PRIMARY KEY,
	unitName text,-- attribute
	Limit_ DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_NumberAllowedExceptions integer, -- index into table LimitingNumber 
	ExtremeLimit DECIMAL(10,2)  -- element of DECIMAL(10,2) 
) ;

CREATE TABLE CuboidActualDetermination (
	_index_  SERIAL PRIMARY KEY,
	_Checked integer, -- index into table CuboidCheckedFeature 
	_Set integer  -- index into table SetFeature 
) ;

CREATE TABLE CuboidBestFit (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	__BaseFeature integer[]  -- index into table SequencedBaseFeature 
) ;

CREATE TABLE CuboidCast (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseFeature integer  -- index into table BaseFeature 
) ;

CREATE TABLE CuboidCheckedFeature (
	_index_  SERIAL PRIMARY KEY,
	_CheckDetails integer  -- index into table CuboidChecked 
) ;

CREATE TABLE CuboidChecked (
	_index_  SERIAL PRIMARY KEY,
	_Measured integer, -- index into table MeasuredFeature 
	_Constructed integer  -- index into table CuboidConstructionMethod 
) ;

CREATE TABLE CuboidConstructionMethod (
	_index_  SERIAL PRIMARY KEY,
	_BestFit integer, -- index into table CuboidBestFit 
	_Recompensated integer, -- index into table CuboidRecomp 
	_Copy integer, -- index into table CuboidCopy 
	_Cast integer, -- index into table CuboidCast 
	_Transform integer  -- index into table CuboidTransform 
) ;

CREATE TABLE CuboidCopy (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseCuboid integer  -- index into table BaseFeature 
) ;

CREATE TABLE CuboidFeatureActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	_PointList integer, -- index into table PointListActual 
	FeatureItemId text, 
	ActualComponentId text, 
	ManufacturingProcessId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	Location text, 
	Length text, 
	LengthMax text, 
	LengthMin text, 
	LengthVector text, 
	Width text, 
	WidthMax text, 
	WidthMin text, 
	Height text, 
	HeightMax text, 
	HeightMin text, 
	HeightVector text, 
	Form text  
) ;

CREATE TABLE CuboidFeatureDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	InternalExternal text, -- element of text 
	Length text, 
	Width text, 
	Height text  
) ;

CREATE TABLE CuboidFeatureItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	FeatureNominalId text, 
	ParentFeatureItemId text, 
	FeatureName text, -- element of text 
	QPId text, -- element of text 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	CoordinateSystemId text, 
	_DeterminationMode integer, -- index into table CuboidActualDetermination 
	_SubstituteFeatureAlgorithm integer  -- index into table FeatureOfSizeSubstituteFeatureAlgorithm 
) ;

CREATE TABLE CuboidFeatureNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Name text, -- element of text 
	_PointList integer, -- index into table PointListNominal 
	FeatureDefinitionId text, -- element of text 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Location DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	LengthVector DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	HeightVector DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE CuboidPointSamplingStrategy (
	_index_  SERIAL PRIMARY KEY,
	PointSamplingStrategyEnum text, -- element of text 
	UserDefinedStrategy text  -- element of text 
) ;

CREATE TABLE CuboidRecomp (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseFeaturePointList integer  -- index into table BaseFeaturePointList 
) ;

CREATE TABLE CuboidTransform (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseCuboid integer, -- index into table BaseFeature 
	_Transformation integer  -- index into table TransformationReference 
) ;

CREATE TABLE Curve12Base (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer  -- index into table Attributes 
) ;

CREATE TABLE Curve12Oriented (
	_index_  SERIAL PRIMARY KEY,
	turned text NOT NULL,-- attribute
	_Aggregate12Core integer, -- index into table Aggregate12Core 
	_ArcCircular12Core integer, -- index into table ArcCircular12Core 
	_ArcConic12Core integer, -- index into table ArcConic12Core 
	_Curve12Core integer, -- index into table CurveCoreBase 
	_Nurbs12Core integer, -- index into table Nurbs12Core 
	_Polyline12Core integer, -- index into table Polyline12Core 
	_Segment12Core integer, -- index into table Segment12Core 
	_Spline12Core integer  -- index into table Spline12Core 
) ;

CREATE TABLE Curve12Set (
	_index_  SERIAL PRIMARY KEY,
	N text,-- attribute
	__Aggregate12 integer[], -- index into table Aggregate12 
	__ArcCircular12 integer[], -- index into table ArcCircular12 
	__ArcConic12 integer[], -- index into table ArcConic12 
	__Curve12 integer[], -- index into table Curve12Base 
	__Nurbs12 integer[], -- index into table Nurbs12 
	__Polyline12 integer[], -- index into table Polyline12 
	__Segment12 integer[], -- index into table Segment12 
	__Spline12 integer[]  -- index into table Spline12 
) ;

CREATE TABLE Curve13Base (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer  -- index into table Attributes 
) ;

CREATE TABLE Curve13Core (
	_index_  SERIAL PRIMARY KEY,
	_Aggregate13Core integer, -- index into table Aggregate13Core 
	_ArcCircular13Core integer, -- index into table ArcCircular13Core 
	_ArcConic13Core integer, -- index into table ArcConic13Core 
	_Curve13Core integer, -- index into table CurveCoreBase 
	_Nurbs13Core integer, -- index into table Nurbs13Core 
	_Polyline13Core integer, -- index into table Polyline13Core 
	_Segment13Core integer, -- index into table Segment13Core 
	_Spline13Core integer  -- index into table Spline13Core 
) ;

CREATE TABLE Curve13Oriented (
	_index_  SERIAL PRIMARY KEY,
	turned text NOT NULL,-- attribute
	_Aggregate13Core integer, -- index into table Aggregate13Core 
	_ArcCircular13Core integer, -- index into table ArcCircular13Core 
	_ArcConic13Core integer, -- index into table ArcConic13Core 
	_Curve13Core integer, -- index into table CurveCoreBase 
	_Nurbs13Core integer, -- index into table Nurbs13Core 
	_Polyline13Core integer, -- index into table Polyline13Core 
	_Segment13Core integer, -- index into table Segment13Core 
	_Spline13Core integer  -- index into table Spline13Core 
) ;

CREATE TABLE Curve13Set (
	_index_  SERIAL PRIMARY KEY,
	N text,-- attribute
	__Aggregate13 integer[], -- index into table Aggregate13 
	__ArcCircular13 integer[], -- index into table ArcCircular13 
	__ArcConic13 integer[], -- index into table ArcConic13 
	__Curve13 integer[], -- index into table Curve13Base 
	__Nurbs13 integer[], -- index into table Nurbs13 
	__Polyline13 integer[], -- index into table Polyline13 
	__Segment13 integer[], -- index into table Segment13 
	__Spline13 integer[]  -- index into table Spline13 
) ;

CREATE TABLE CurveCoreBase (
	_index_  SERIAL PRIMARY KEY,
	domain text -- attribute
) ;

CREATE TABLE CurveLengthCharacteristicActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text  
) ;

CREATE TABLE CurveLengthCharacteristicDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	Dimension text, -- element of text 
	_Tolerance integer, -- index into table LinearTolerance 
	NonTolerance text  -- element of text 
) ;

CREATE TABLE CurveLengthCharacteristicItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE CurveLengthCharacteristicNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	TargetValue text  
) ;

CREATE TABLE CurveLengthCharacteristicStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_ValueStats integer, -- index into table StatsWithTolLinear 
	_MaxValueStats integer, -- index into table StatsLinear 
	_MinValueStats integer, -- index into table StatsLinear 
	_DeviationStats integer, -- index into table StatsWithTolLinear 
	_MaxDeviationStats integer, -- index into table StatsLinear 
	_MinDeviationStats integer  -- index into table StatsLinear 
) ;

CREATE TABLE CurveMeshSet (
	_index_  SERIAL PRIMARY KEY,
	N text,-- attribute
	__PathTriangulation integer[]  -- index into table PathTriangulation 
) ;

CREATE TABLE CurveSubstituteFeatureAlgorithm (
	_index_  SERIAL PRIMARY KEY,
	CurveSubstituteFeatureAlgorithmEnum text, -- element of text 
	OtherCurveSubstituteFeatureAlgorithm text  -- element of text 
) ;

CREATE TABLE CustomerOrganization (
	_index_  SERIAL PRIMARY KEY,
	Name text, -- element of text 
	_Address integer, -- index into table PhysicalAddress 
	CustomerNumber text  -- element of text 
) ;

CREATE TABLE Cylinder23Core (
	_index_  SERIAL PRIMARY KEY,
	turnedV text NOT NULL,-- attribute
	scaleU text NOT NULL,-- attribute
	scaleV text NOT NULL,-- attribute
	form text NOT NULL,-- attribute
	Diameter DOUBLE PRECISION, -- element of DOUBLE PRECISION 
	Length DOUBLE PRECISION, -- element of DOUBLE PRECISION 
	_Axis integer, -- index into table Axis 
	_Sweep integer  -- index into table Sweep 
) ;

CREATE TABLE Cylinder23 (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	_Cylinder23Core integer, -- index into table Cylinder23Core 
	_Transform integer  -- index into table ElementReference 
) ;

CREATE TABLE CylinderActualDetermination (
	_index_  SERIAL PRIMARY KEY,
	_Checked integer, -- index into table CylinderCheckedFeature 
	_Set integer  -- index into table SetFeature 
) ;

CREATE TABLE CylinderBestFit (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	__BaseFeature integer[]  -- index into table SequencedBaseFeature 
) ;

CREATE TABLE CylinderCast (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseFeature integer  -- index into table BaseFeature 
) ;

CREATE TABLE CylinderCheckedFeature (
	_index_  SERIAL PRIMARY KEY,
	_CheckDetails integer  -- index into table CylinderChecked 
) ;

CREATE TABLE CylinderChecked (
	_index_  SERIAL PRIMARY KEY,
	_Measured integer, -- index into table MeasuredFeature 
	_Constructed integer  -- index into table CylinderConstructionMethod 
) ;

CREATE TABLE CylinderConstructionMethod (
	_index_  SERIAL PRIMARY KEY,
	_BestFit integer, -- index into table CylinderBestFit 
	_Recompensated integer, -- index into table CylinderRecomp 
	_Copy integer, -- index into table CylinderCopy 
	_Cast integer, -- index into table CylinderCast 
	_Transform integer, -- index into table CylinderTransform 
	_FromScan integer  -- index into table CylinderFromScan 
) ;

CREATE TABLE CylinderCopy (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseCylinder integer  -- index into table BaseFeature 
) ;

CREATE TABLE CylinderFeatureActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	_PointList integer, -- index into table PointListActual 
	FeatureItemId text, 
	ActualComponentId text, 
	ManufacturingProcessId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	_Axis integer, -- index into table ActualAxis 
	Diameter text, 
	Length text, 
	DiameterMin text, 
	DiameterMax text, 
	_Sweep integer, -- index into table Sweep 
	Form text  
) ;

CREATE TABLE CylinderFeatureDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	InternalExternal text, -- element of text 
	Diameter text, 
	Length text, 
	_Bottom integer  -- index into table Bottom 
) ;

CREATE TABLE CylinderFeatureItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	FeatureNominalId text, 
	ParentFeatureItemId text, 
	FeatureName text, -- element of text 
	QPId text, -- element of text 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	CoordinateSystemId text, 
	_DeterminationMode integer, -- index into table CylinderActualDetermination 
	_SubstituteFeatureAlgorithm integer  -- index into table FeatureOfSizeSubstituteFeatureAlgorithm 
) ;

CREATE TABLE CylinderFeatureNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Name text, -- element of text 
	_PointList integer, -- index into table PointListNominal 
	FeatureDefinitionId text, -- element of text 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	_Axis integer, -- index into table Axis 
	_Sweep integer  -- index into table Sweep 
) ;

CREATE TABLE CylinderFromScan (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_SurfaceFeature integer, -- index into table BaseFeature 
	SearchRadius text  
) ;

CREATE TABLE CylinderPointSamplingStrategy (
	_index_  SERIAL PRIMARY KEY,
	PointSamplingStrategyEnum text, -- element of text 
	UserDefinedStrategy text  -- element of text 
) ;

CREATE TABLE CylinderRecomp (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseFeaturePointList integer  -- index into table BaseFeaturePointList 
) ;

CREATE TABLE CylinderTransform (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseCylinder integer, -- index into table BaseFeature 
	_Transformation integer  -- index into table TransformationReference 
) ;

CREATE TABLE Cylinder (
	_index_  SERIAL PRIMARY KEY,
	CenterPoint DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	Diameter text, 
	Axis DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	Length text  
) ;

CREATE TABLE CylindricalSegmentActualDetermination (
	_index_  SERIAL PRIMARY KEY,
	_Checked integer, -- index into table CylindricalSegmentCheckedFeature 
	_Set integer  -- index into table SetFeature 
) ;

CREATE TABLE CylindricalSegmentBestFit (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	__BaseFeature integer[]  -- index into table SequencedBaseFeature 
) ;

CREATE TABLE CylindricalSegmentCast (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseFeature integer  -- index into table BaseFeature 
) ;

CREATE TABLE CylindricalSegmentCheckedFeature (
	_index_  SERIAL PRIMARY KEY,
	_CheckDetails integer  -- index into table CylindricalSegmentChecked 
) ;

CREATE TABLE CylindricalSegmentChecked (
	_index_  SERIAL PRIMARY KEY,
	_Measured integer, -- index into table MeasuredFeature 
	_Constructed integer  -- index into table CylindricalSegmentConstructionMethod 
) ;

CREATE TABLE CylindricalSegmentConstructionMethod (
	_index_  SERIAL PRIMARY KEY,
	_BestFit integer, -- index into table CylindricalSegmentBestFit 
	_Recompensated integer, -- index into table CylindricalSegmentRecomp 
	_Copy integer, -- index into table CylindricalSegmentCopy 
	_Cast integer, -- index into table CylindricalSegmentCast 
	_Transform integer  -- index into table CylindricalSegmentTransform 
) ;

CREATE TABLE CylindricalSegmentCopy (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseCylindricalSegment integer  -- index into table BaseFeature 
) ;

CREATE TABLE CylindricalSegmentFeatureActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	_PointList integer, -- index into table PointListActual 
	FeatureItemId text, 
	ActualComponentId text, 
	ManufacturingProcessId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	_Axis integer, -- index into table ActualAxis 
	Diameter text, 
	Length text, 
	DiameterMin text, 
	DiameterMax text, 
	_Sweep integer, -- index into table Sweep 
	Form text  
) ;

CREATE TABLE CylindricalSegmentFeatureDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	InternalExternal text, -- element of text 
	Diameter text, 
	Length text, 
	_Bottom integer  -- index into table Bottom 
) ;

CREATE TABLE CylindricalSegmentFeatureItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	FeatureNominalId text, 
	ParentFeatureItemId text, 
	FeatureName text, -- element of text 
	QPId text, -- element of text 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	CoordinateSystemId text, 
	_DeterminationMode integer, -- index into table CylindricalSegmentActualDetermination 
	_SubstituteFeatureAlgorithm integer  -- index into table NonFeatureOfSizeSubstituteFeatureAlgorithm 
) ;

CREATE TABLE CylindricalSegmentFeatureNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Name text, -- element of text 
	_PointList integer, -- index into table PointListNominal 
	FeatureDefinitionId text, -- element of text 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	_Axis integer, -- index into table Axis 
	_Sweep integer  -- index into table Sweep 
) ;

CREATE TABLE CylindricalSegmentPointSamplingStrategy (
	_index_  SERIAL PRIMARY KEY,
	PointSamplingStrategyEnum text, -- element of text 
	UserDefinedStrategy text  -- element of text 
) ;

CREATE TABLE CylindricalSegmentRecomp (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseFeaturePointList integer  -- index into table BaseFeaturePointList 
) ;

CREATE TABLE CylindricalSegmentTransform (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseCylindricalSegment integer, -- index into table BaseFeature 
	_Transformation integer  -- index into table TransformationReference 
) ;

CREATE TABLE CylindricityCharacteristicActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text, 
	MaxCylindricity text, 
	_ZoneRadii integer, -- index into table ActualZoneRadii 
	_ZoneAxis integer  -- index into table ActualZoneAxis 
) ;

CREATE TABLE CylindricityCharacteristicDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	_DirectionFeature integer, -- index into table DirectionFeature 
	_CollectionPlane integer, -- index into table CollectionPlane 
	_IntersectionPlane integer, -- index into table IntersectionPlane 
	_OrientationPlane integer, -- index into table OrientationPlane 
	ToleranceValue text, 
	_ToleranceZonePerUnitAngle integer, -- index into table ToleranceZonePerUnitAngle 
	_ToleranceZonePerUnitArcLength integer, -- index into table ToleranceZonePerUnitLength 
	_ToleranceZonePerUnitPolarArea integer, -- index into table ToleranceZonePerUnitPolarArea 
	_ToleranceZonePerUnitArea integer, -- index into table ToleranceZonePerUnitArea 
	_ToleranceZonePerUnitLength integer  -- index into table ToleranceZonePerUnitLength 
) ;

CREATE TABLE CylindricityCharacteristicItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE CylindricityCharacteristicNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_ZoneLimit integer  -- index into table CharacteristicDirectionalZoneLimit 
) ;

CREATE TABLE CylindricityCharacteristicStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_ValueStats integer, -- index into table StatsWithTolLinear 
	_MaxValueStats integer, -- index into table StatsLinear 
	_MinValueStats integer, -- index into table StatsLinear 
	CapabilityCalculationMethod text, -- element of text 
	_MaxCylindricityStats integer  -- index into table StatsLinear 
) ;

CREATE TABLE DMESelectionRule (
	_index_  SERIAL PRIMARY KEY 
) ;

CREATE TABLE DMESelectionRules (
	_index_  SERIAL PRIMARY KEY,
	__DMESelectionRule integer[]  -- index into table DMESelectionRule 
) ;

CREATE TABLE DatumDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	DatumLabel text, -- element of text 
	_DatumTargetIds integer, -- index into table ArrayReferenceFull 
	_FeatureNominalIds integer  -- index into table ArrayReferenceFull 
) ;

CREATE TABLE DatumDefinitions (
	_index_  SERIAL PRIMARY KEY,
	__DatumDefinition integer[]  -- index into table DatumDefinition 
) ;

CREATE TABLE DatumFeatureBase (
	_index_  SERIAL PRIMARY KEY,
	FeatureItemId text  
) ;

CREATE TABLE DatumFeatureSimulatorModifier (
	_index_  SERIAL PRIMARY KEY,
	LinearSize text, 
	DiametricalSize text, 
	BasicSize text  -- element of text 
) ;

CREATE TABLE DatumPrecedenceAlignmentOperation (
	_index_  SERIAL PRIMARY KEY,
	SequenceNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	DatumReferenceFrameId text, 
	PrimaryAxis DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	SecondaryAxis DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE DatumReferenceFrame (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	__Datum integer[], -- index into table DatumWithPrecedence 
	Name text, -- element of text 
	Description text, -- element of text 
	CoordinateSystemId text  
) ;

CREATE TABLE DatumReferenceFrames (
	_index_  SERIAL PRIMARY KEY,
	__DatumReferenceFrame integer[]  -- index into table DatumReferenceFrame 
) ;

CREATE TABLE DatumTargetCircularAreaDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	DatumTargetLabel text, -- element of text 
	FeatureNominalId text, 
	_MovableDatumTarget integer, -- index into table MovableDatumTargetDirection 
	_Circle integer  -- index into table Circle 
) ;

CREATE TABLE DatumTargetCircularLineDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	DatumTargetLabel text, -- element of text 
	FeatureNominalId text, 
	_MovableDatumTarget integer, -- index into table MovableDatumTargetDirection 
	_Circle integer  -- index into table Circle 
) ;

CREATE TABLE DatumTargetCylindricalAreaDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	DatumTargetLabel text, -- element of text 
	FeatureNominalId text, 
	_MovableDatumTarget integer, -- index into table MovableDatumTargetDirection 
	_Cylinder integer  -- index into table Cylinder 
) ;

CREATE TABLE DatumTargetDefinitionBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	DatumTargetLabel text, -- element of text 
	FeatureNominalId text, 
	_MovableDatumTarget integer  -- index into table MovableDatumTargetDirection 
) ;

CREATE TABLE DatumTargetDefinitions (
	_index_  SERIAL PRIMARY KEY,
	N text,-- attribute
	__DatumTarget integer[], -- index into table DatumTargetDefinitionBase 
	__DatumTargetCircularAreaDefinition integer[], -- index into table DatumTargetCircularAreaDefinition 
	__DatumTargetCircularLineDefinition integer[], -- index into table DatumTargetCircularLineDefinition 
	__DatumTargetCylindricalAreaDefinition integer[], -- index into table DatumTargetCylindricalAreaDefinition 
	__DatumTargetIrregularAreaDefinition integer[], -- index into table DatumTargetIrregularAreaDefinition 
	__DatumTargetLineDefinition integer[], -- index into table DatumTargetLineDefinition 
	__DatumTargetPointDefinition integer[], -- index into table DatumTargetPointDefinition 
	__DatumTargetRectangularAreaDefinition integer[], -- index into table DatumTargetRectangularAreaDefinition 
	__DatumTargetSphereDefinition integer[]  -- index into table DatumTargetSphereDefinition 
) ;

CREATE TABLE DatumTargetIrregularAreaDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	DatumTargetLabel text, -- element of text 
	FeatureNominalId text, 
	_MovableDatumTarget integer, -- index into table MovableDatumTargetDirection 
	Boundary text  
) ;

CREATE TABLE DatumTargetLineDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	DatumTargetLabel text, -- element of text 
	FeatureNominalId text, 
	_MovableDatumTarget integer, -- index into table MovableDatumTargetDirection 
	_Line integer  -- index into table LineSegment 
) ;

CREATE TABLE DatumTargetPointDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	DatumTargetLabel text, -- element of text 
	FeatureNominalId text, 
	_MovableDatumTarget integer, -- index into table MovableDatumTargetDirection 
	Point DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE DatumTargetRectangularAreaDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	DatumTargetLabel text, -- element of text 
	FeatureNominalId text, 
	_MovableDatumTarget integer, -- index into table MovableDatumTargetDirection 
	_Rectangle integer  -- index into table Rectangle 
) ;

CREATE TABLE DatumTargetSphereDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	DatumTargetLabel text, -- element of text 
	FeatureNominalId text, 
	_MovableDatumTarget integer, -- index into table MovableDatumTargetDirection 
	_Sphere integer  -- index into table Sphere 
) ;

CREATE TABLE DatumTranslation (
	_index_  SERIAL PRIMARY KEY,
	DatumTranslationAllowed BOOLEAN  -- element of BOOLEAN 
) ;

CREATE TABLE Datum (
	_index_  SERIAL PRIMARY KEY,
	DatumDefinitionId text, 
	MaterialModifier text, -- element of text 
	ReferencedComponent text, -- element of text 
	_DatumFeatureSimulatorModifier integer, -- index into table DatumFeatureSimulatorModifier 
	_DatumTranslation integer, -- index into table DatumTranslation 
	_DegreesOfFreedom integer, -- index into table DegreesOfFreedom 
	ProjectedDatum text, 
	DiameterModifier text, -- element of text 
	SectionModifier text, -- element of text 
	ContactingFeature BOOLEAN, -- element of BOOLEAN 
	DistanceVariable BOOLEAN, -- element of BOOLEAN 
	DatumFixed BOOLEAN, -- element of BOOLEAN 
	ReducedDatum text, -- element of text 
	ConstrainOrientation BOOLEAN, -- element of BOOLEAN 
	ConstrainSubsequent BOOLEAN  -- element of BOOLEAN 
) ;

CREATE TABLE DatumWithPrecedence (
	_index_  SERIAL PRIMARY KEY,
	_SimpleDatum integer, -- index into table Datum 
	_NominalDatumFeature integer, -- index into table NominalDatumFeature 
	_ActualDatumFeature integer, -- index into table ActualDatumFeature 
	_CompoundDatum integer, -- index into table CompoundDatum 
	_Precedence integer  -- index into table Precedence 
) ;

CREATE TABLE DefinitionExternal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_PrintedDrawing integer, -- index into table PrintedDrawing 
	_DigitalDrawing integer, -- index into table DigitalDrawing 
	_DigitalModel integer, -- index into table DigitalModel 
	_PhysicalModel integer  -- index into table PhysicalModel 
) ;

CREATE TABLE DegreesOfFreedom (
	_index_  SERIAL PRIMARY KEY,
	DegreeOfFreedom text, -- element of text 
	ISODegreeOfFreedom text  -- element of text 
) ;

CREATE TABLE DepthCharacteristicActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text  
) ;

CREATE TABLE DepthCharacteristicDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	Dimension text, -- element of text 
	_Tolerance integer, -- index into table LinearTolerance 
	NonTolerance text  -- element of text 
) ;

CREATE TABLE DepthCharacteristicItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE DepthCharacteristicNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	TargetValue text  
) ;

CREATE TABLE DepthCharacteristicStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_ValueStats integer, -- index into table StatsWithTolLinear 
	_MaxValueStats integer, -- index into table StatsLinear 
	_MinValueStats integer, -- index into table StatsLinear 
	_DeviationStats integer, -- index into table StatsWithTolLinear 
	_MaxDeviationStats integer, -- index into table StatsLinear 
	_MinDeviationStats integer  -- index into table StatsLinear 
) ;

CREATE TABLE DiameterCharacteristicActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text  
) ;

CREATE TABLE DiameterCharacteristicDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	Dimension text, -- element of text 
	_Tolerance integer, -- index into table LinearTolerance 
	NonTolerance text  -- element of text 
) ;

CREATE TABLE DiameterCharacteristicItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE DiameterCharacteristicNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	TargetValue text  
) ;

CREATE TABLE DiameterCharacteristicStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_ValueStats integer, -- index into table StatsWithTolLinear 
	_MaxValueStats integer, -- index into table StatsLinear 
	_MinValueStats integer, -- index into table StatsLinear 
	_DeviationStats integer, -- index into table StatsWithTolLinear 
	_MaxDeviationStats integer, -- index into table StatsLinear 
	_MinDeviationStats integer  -- index into table StatsLinear 
) ;

CREATE TABLE DigitalDrawing (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	Name text, -- element of text 
	_File integer, -- index into table File 
	_Application integer, -- index into table Application 
	_Author integer, -- index into table Author 
	_ApplicationSource integer, -- index into table Application 
	Description text, -- element of text 
	_Entities integer  -- index into table EntitiesExternal 
) ;

CREATE TABLE DigitalModelFormat (
	_index_  SERIAL PRIMARY KEY,
	DigitalModelFormatEnum text, -- element of text 
	OtherDigitalModelFormat text  -- element of text 
) ;

CREATE TABLE DigitalModel (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	Name text, -- element of text 
	_File integer, -- index into table File 
	_Application integer, -- index into table Application 
	_Author integer, -- index into table Author 
	_ApplicationSource integer, -- index into table Application 
	Description text, -- element of text 
	_Units integer, -- index into table OtherUnits 
	GDT text, -- element of text 
	Topology text, -- element of text 
	_Entities integer  -- index into table EntitiesExternal 
) ;

CREATE TABLE DimensionalCharacteristicActualBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text  -- element of text 
) ;

CREATE TABLE DimensionalCharacteristicDefinitionBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	Dimension text  -- element of text 
) ;

CREATE TABLE DimensionalCharacteristicItemBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE DimensionalCharacteristicNominalBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer  -- index into table KeyCharacteristic 
) ;

CREATE TABLE DirectionFeature (
	_index_  SERIAL PRIMARY KEY,
	DirectionFeatureEnum text, -- element of text 
	DatumDefinitionId text  
) ;

CREATE TABLE DirectionalOffset (
	_index_  SERIAL PRIMARY KEY,
	Offset_ text, 
	NominalDirection DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	_FeatureDirection integer  -- index into table BaseFeature 
) ;

CREATE TABLE DistanceBetweenCharacteristicActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text, 
	AnalysisVector text  
) ;

CREATE TABLE DistanceBetweenCharacteristicDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	Dimension text, -- element of text 
	_Tolerance integer, -- index into table LinearTolerance 
	NonTolerance text  -- element of text 
) ;

CREATE TABLE DistanceBetweenCharacteristicItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE DistanceBetweenCharacteristicNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	TargetValue text, 
	AnalysisVector DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	AnalysisMode text, -- element of text 
	_MeasurementDirective integer, -- index into table MeasurementDirective 
	CoordinateSystemId text, 
	_ZoneLimit integer  -- index into table CharacteristicDirectionalZoneLimit 
) ;

CREATE TABLE DistanceBetweenCharacteristicStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_ValueStats integer, -- index into table StatsWithTolLinear 
	_MaxValueStats integer, -- index into table StatsLinear 
	_MinValueStats integer, -- index into table StatsLinear 
	_DeviationStats integer, -- index into table StatsWithTolLinear 
	_MaxDeviationStats integer, -- index into table StatsLinear 
	_MinDeviationStats integer  -- index into table StatsLinear 
) ;

CREATE TABLE DistanceFromCharacteristicActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text, 
	AnalysisVector text  
) ;

CREATE TABLE DistanceFromCharacteristicDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	Dimension text, -- element of text 
	_Tolerance integer, -- index into table LinearTolerance 
	NonTolerance text  -- element of text 
) ;

CREATE TABLE DistanceFromCharacteristicItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE DistanceFromCharacteristicNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	TargetValue text, 
	_OriginReference integer, -- index into table OriginReference 
	AnalysisVector DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	AnalysisMode text, -- element of text 
	_MeasurementDirective integer, -- index into table MeasurementDirective 
	CoordinateSystemId text, 
	_ZoneLimit integer  -- index into table CharacteristicDirectionalZoneLimit 
) ;

CREATE TABLE DistanceFromCharacteristicStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_ValueStats integer, -- index into table StatsWithTolLinear 
	_MaxValueStats integer, -- index into table StatsLinear 
	_MinValueStats integer, -- index into table StatsLinear 
	_DeviationStats integer, -- index into table StatsWithTolLinear 
	_MaxDeviationStats integer, -- index into table StatsLinear 
	_MinDeviationStats integer  -- index into table StatsLinear 
) ;

CREATE TABLE DistributionTransformation (
	_index_  SERIAL PRIMARY KEY,
	DistributionTransformationEnum text, -- element of text 
	BoxCoxTransformation DECIMAL(10,2), -- element of DECIMAL(10,2) 
	OtherDistributionTransformation text  -- element of text 
) ;

CREATE TABLE DividedBy (
	_index_  SERIAL PRIMARY KEY,
	__ArithmeticCharacteristicParameter integer[], -- index into table ArithmeticCharacteristicParameter 
	__ArithmeticConstant integer[], -- index into table ArithmeticConstant 
	__ArithmeticExpression integer[], -- index into table ArithmeticExpressionBase 
	__ArithmeticFeatureParameter integer[], -- index into table ArithmeticFeatureParameter 
	__DividedBy integer[], -- index into table DividedBy 
	__FeatureArea integer[], -- index into table FeatureArea 
	__FeatureLength integer[], -- index into table FeatureLength 
	__Minus integer[], -- index into table Minus 
	__Negate integer[], -- index into table Negate 
	__Plus integer[], -- index into table Plus 
	__Times integer[]  -- index into table Times 
) ;

CREATE TABLE DocumentFileInstruction (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_ExternalFile integer  -- index into table ExternalFileReference 
) ;

CREATE TABLE DrawableBase (
	_index_  SERIAL PRIMARY KEY,
	color text NOT NULL,-- attribute
	transparency text NOT NULL,-- attribute
	hidden text NOT NULL,-- attribute
	size text NOT NULL,-- attribute
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer  -- index into table Attributes 
) ;

CREATE TABLE EdgeOriented (
	_index_  SERIAL PRIMARY KEY,
	turned text NOT NULL,-- attribute
	Id text  -- element of text 
) ;

CREATE TABLE EdgePointActualDetermination (
	_index_  SERIAL PRIMARY KEY,
	_Checked integer, -- index into table EdgePointCheckedFeature 
	_Set integer  -- index into table SetFeature 
) ;

CREATE TABLE EdgePointCast (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseFeature integer  -- index into table BaseFeature 
) ;

CREATE TABLE EdgePointCheckedFeature (
	_index_  SERIAL PRIMARY KEY,
	_CheckDetails integer  -- index into table EdgePointChecked 
) ;

CREATE TABLE EdgePointChecked (
	_index_  SERIAL PRIMARY KEY,
	_Measured integer, -- index into table MeasuredFeature 
	_Constructed integer  -- index into table EdgePointConstructionMethod 
) ;

CREATE TABLE EdgePointConstructionMethod (
	_index_  SERIAL PRIMARY KEY,
	_Copy integer, -- index into table EdgePointCopy 
	_Cast integer, -- index into table EdgePointCast 
	_Transform integer, -- index into table EdgePointTransform 
	_FromScan integer  -- index into table EdgePointFromScan 
) ;

CREATE TABLE EdgePointCopy (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseEdgePoint integer  -- index into table BaseFeature 
) ;

CREATE TABLE EdgePointFeatureActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	_PointList integer, -- index into table PointListActual 
	FeatureItemId text, 
	ActualComponentId text, 
	ManufacturingProcessId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	Location text, 
	Normal text, 
	AdjacentNormal text  
) ;

CREATE TABLE EdgePointFeatureDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	InternalExternal text  -- element of text 
) ;

CREATE TABLE EdgePointFeatureItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	FeatureNominalId text, 
	ParentFeatureItemId text, 
	FeatureName text, -- element of text 
	QPId text, -- element of text 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	CoordinateSystemId text, 
	_DeterminationMode integer  -- index into table EdgePointActualDetermination 
) ;

CREATE TABLE EdgePointFeatureNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Name text, -- element of text 
	_PointList integer, -- index into table PointListNominal 
	FeatureDefinitionId text, -- element of text 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Location DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	Normal DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	AdjacentNormal DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE EdgePointFromScan (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_SurfaceFeature integer, -- index into table BaseFeature 
	SearchRadius text, 
	PatchRadius text, 
	Distance text, 
	Depth text, 
	RetrievalMethod text  -- element of text 
) ;

CREATE TABLE EdgePointTransform (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseEdgePoint integer, -- index into table BaseFeature 
	_Transformation integer  -- index into table TransformationReference 
) ;

CREATE TABLE EdgeSet (
	_index_  SERIAL PRIMARY KEY,
	N text,-- attribute
	__Edge integer[]  -- index into table Edge 
) ;

CREATE TABLE Edge (
	_index_  SERIAL PRIMARY KEY,
	tolerance text NOT NULL,-- attribute
	color text NOT NULL,-- attribute
	transparency text NOT NULL,-- attribute
	hidden text NOT NULL,-- attribute
	size text NOT NULL,-- attribute
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	_Curve integer, -- index into table ElementReference 
	_VertexBeg integer, -- index into table ElementReference 
	_VertexEnd integer  -- index into table ElementReference 
) ;

CREATE TABLE EffectiveWorkingVolume (
	_index_  SERIAL PRIMARY KEY,
	MinPoint DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	MaxPoint DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE ElementReferenceFull (
	_index_  SERIAL PRIMARY KEY,
	Id text  
) ;

CREATE TABLE ElementReference (
	_index_  SERIAL PRIMARY KEY,
	Id text  -- element of text 
) ;

CREATE TABLE EllipseActualDetermination (
	_index_  SERIAL PRIMARY KEY,
	_Checked integer, -- index into table EllipseCheckedFeature 
	_Set integer  -- index into table SetFeature 
) ;

CREATE TABLE EllipseBestFit (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	__BaseFeature integer[]  -- index into table SequencedBaseFeature 
) ;

CREATE TABLE EllipseCast (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseFeature integer  -- index into table BaseFeature 
) ;

CREATE TABLE EllipseCheckedFeature (
	_index_  SERIAL PRIMARY KEY,
	_CheckDetails integer  -- index into table EllipseChecked 
) ;

CREATE TABLE EllipseChecked (
	_index_  SERIAL PRIMARY KEY,
	_Measured integer, -- index into table MeasuredFeature 
	_Constructed integer  -- index into table EllipseConstructionMethod 
) ;

CREATE TABLE EllipseConstructionMethod (
	_index_  SERIAL PRIMARY KEY,
	_BestFit integer, -- index into table EllipseBestFit 
	_Recompensated integer, -- index into table EllipseRecomp 
	_Intersection integer, -- index into table EllipseIntersection 
	_Projection integer, -- index into table EllipseProjection 
	_Copy integer, -- index into table EllipseCopy 
	_Cast integer, -- index into table EllipseCast 
	_Transform integer, -- index into table EllipseTransform 
	_FromScan integer  -- index into table EllipseFromScan 
) ;

CREATE TABLE EllipseCopy (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseEllipse integer  -- index into table BaseFeature 
) ;

CREATE TABLE EllipseFeatureActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	_PointList integer, -- index into table PointListActual 
	FeatureItemId text, 
	ActualComponentId text, 
	ManufacturingProcessId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	_Axis integer, -- index into table ActualAxis 
	Normal text, 
	MajorDiameter text, 
	MinorDiameter text, 
	Form text  
) ;

CREATE TABLE EllipseFeatureDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	InternalExternal text, -- element of text 
	MajorDiameter text, 
	MinorDiameter text  
) ;

CREATE TABLE EllipseFeatureItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	FeatureNominalId text, 
	ParentFeatureItemId text, 
	FeatureName text, -- element of text 
	QPId text, -- element of text 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	CoordinateSystemId text, 
	_DeterminationMode integer, -- index into table EllipseActualDetermination 
	_SubstituteFeatureAlgorithm integer  -- index into table FeatureOfSizeSubstituteFeatureAlgorithm 
) ;

CREATE TABLE EllipseFeatureNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Name text, -- element of text 
	_PointList integer, -- index into table PointListNominal 
	FeatureDefinitionId text, -- element of text 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	_Axis integer, -- index into table Axis 
	Normal DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE EllipseFromScan (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_SurfaceFeature integer, -- index into table BaseFeature 
	SearchRadius text, 
	Depth text  
) ;

CREATE TABLE EllipseIntersection (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_IntersectionPlane integer, -- index into table BaseFeature 
	_IntersectionFeature integer  -- index into table BaseFeature 
) ;

CREATE TABLE EllipsePointSamplingStrategy (
	_index_  SERIAL PRIMARY KEY,
	PointSamplingStrategyEnum text, -- element of text 
	UserDefinedStrategy text  -- element of text 
) ;

CREATE TABLE EllipseProjection (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_ProjectionFeature integer, -- index into table BaseFeature 
	_ProjectionPlane integer  -- index into table BaseFeature 
) ;

CREATE TABLE EllipseRecomp (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseFeaturePointList integer  -- index into table BaseFeaturePointList 
) ;

CREATE TABLE EllipseTransform (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseEllipse integer, -- index into table BaseFeature 
	_Transformation integer  -- index into table TransformationReference 
) ;

CREATE TABLE ElongatedCylinderActualDetermination (
	_index_  SERIAL PRIMARY KEY,
	_Checked integer, -- index into table ElongatedCylinderCheckedFeature 
	_Set integer  -- index into table SetFeature 
) ;

CREATE TABLE ElongatedCylinderBestFit (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	__BaseFeature integer[]  -- index into table SequencedBaseFeature 
) ;

CREATE TABLE ElongatedCylinderCast (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseFeature integer  -- index into table BaseFeature 
) ;

CREATE TABLE ElongatedCylinderCheckedFeature (
	_index_  SERIAL PRIMARY KEY,
	_CheckDetails integer  -- index into table ElongatedCylinderChecked 
) ;

CREATE TABLE ElongatedCylinderChecked (
	_index_  SERIAL PRIMARY KEY,
	_Measured integer, -- index into table MeasuredFeature 
	_Constructed integer  -- index into table ElongatedCylinderConstructionMethod 
) ;

CREATE TABLE ElongatedCylinderConstructionMethod (
	_index_  SERIAL PRIMARY KEY,
	_BestFit integer, -- index into table ElongatedCylinderBestFit 
	_Recompensated integer, -- index into table ElongatedCylinderRecomp 
	_Copy integer, -- index into table ElongatedCylinderCopy 
	_Cast integer, -- index into table ElongatedCylinderCast 
	_Transform integer  -- index into table ElongatedCylinderTransform 
) ;

CREATE TABLE ElongatedCylinderCopy (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseElongatedCylinder integer  -- index into table BaseFeature 
) ;

CREATE TABLE ElongatedCylinderFeatureActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	_PointList integer, -- index into table PointListActual 
	FeatureItemId text, 
	ActualComponentId text, 
	ManufacturingProcessId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	Diameter text, 
	DiameterMin text, 
	DiameterMax text, 
	_CenterPlane integer, -- index into table ActualPlane 
	Length text, 
	LengthMax text, 
	LengthMin text, 
	Width text, 
	WidthMax text, 
	WidthMin text, 
	Depth text, 
	DepthMax text, 
	DepthMin text, 
	DepthVector text, 
	Form text  
) ;

CREATE TABLE ElongatedCylinderFeatureDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	InternalExternal text, -- element of text 
	Diameter text, 
	Length text, 
	Width text, 
	Depth text  
) ;

CREATE TABLE ElongatedCylinderFeatureItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	FeatureNominalId text, 
	ParentFeatureItemId text, 
	FeatureName text, -- element of text 
	QPId text, -- element of text 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	CoordinateSystemId text, 
	_DeterminationMode integer, -- index into table ElongatedCylinderActualDetermination 
	_SubstituteFeatureAlgorithm integer  -- index into table FeatureOfSizeSubstituteFeatureAlgorithm 
) ;

CREATE TABLE ElongatedCylinderFeatureNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Name text, -- element of text 
	_PointList integer, -- index into table PointListNominal 
	FeatureDefinitionId text, -- element of text 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	_CenterPlane integer, -- index into table Plane 
	DepthVector DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE ElongatedCylinderPointSamplingStrategy (
	_index_  SERIAL PRIMARY KEY,
	PointSamplingStrategyEnum text, -- element of text 
	UserDefinedStrategy text  -- element of text 
) ;

CREATE TABLE ElongatedCylinderRecomp (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseFeaturePointList integer  -- index into table BaseFeaturePointList 
) ;

CREATE TABLE ElongatedCylinderTransform (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseElongatedCylinder integer, -- index into table BaseFeature 
	_Transformation integer  -- index into table TransformationReference 
) ;

CREATE TABLE ElseRule (
	_index_  SERIAL PRIMARY KEY,
	name text NOT NULL,-- attribute
	_ThenPoints integer  -- index into table ThenPoints 
) ;

CREATE TABLE Employee (
	_index_  SERIAL PRIMARY KEY,
	Name text, -- element of text 
	EmployeeId text, -- element of text 
	Shift text  -- element of text 
) ;

CREATE TABLE EndRadius (
	_index_  SERIAL PRIMARY KEY,
	EndRadius text, 
	Expanded BOOLEAN  -- element of BOOLEAN 
) ;

CREATE TABLE EntitiesExternal (
	_index_  SERIAL PRIMARY KEY,
	__Entity integer[]  -- index into table EntityExternal 
) ;

CREATE TABLE EntityExternal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	EntityId text, -- element of text 
	Name text, -- element of text 
	Description text  -- element of text 
) ;

CREATE TABLE Environment (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	ObjectTemperature text, 
	AmbientTemperature text, 
	RelativeHumidity text, -- element of text 
	DateAndTime TIMESTAMP, -- element of TIMESTAMP 
	_TimeDescription integer  -- index into table TimeDescription 
) ;

CREATE TABLE Environments (
	_index_  SERIAL PRIMARY KEY,
	__Environment integer[]  -- index into table Environment 
) ;

CREATE TABLE Errors (
	_index_  SERIAL PRIMARY KEY,
	Error text  -- element of text 
) ;

CREATE TABLE EstablishDatumMeasurand (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	DatumDefinitionId text, 
	DatumReferenceFrameId text  
) ;

CREATE TABLE EvaluateCharacteristicMeasurand (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	CharacteristicItemId text  
) ;

CREATE TABLE EvaluateSpecifiedCharacteristicsAction (
	_index_  SERIAL PRIMARY KEY,
	_WorkInstructionIds integer, -- index into table ArrayReferenceFull 
	PreferredActionMethodId text, 
	_AlternativeActionMethodIds integer, -- index into table ArrayReferenceFull 
	_PreferredResourceIds integer, -- index into table ArrayReferenceFull 
	_CharacteristicItemIds integer  -- index into table ArrayReferenceFull 
) ;

CREATE TABLE EventBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	Description text  -- element of text 
) ;

CREATE TABLE ExclusionReason (
	_index_  SERIAL PRIMARY KEY,
	ExclusionReasonEnum text, -- element of text 
	OtherExclusionReason text  -- element of text 
) ;

CREATE TABLE Exclusion (
	_index_  SERIAL PRIMARY KEY,
	Id text, 
	_Reason integer  -- index into table ExclusionReason 
) ;

CREATE TABLE Extent (
	_index_  SERIAL PRIMARY KEY,
	ExtentEnum text, -- element of text 
	OtherExtent text  -- element of text 
) ;

CREATE TABLE ExternalFileReference (
	_index_  SERIAL PRIMARY KEY,
	URI text, -- element of text 
	_FileSpec integer, -- index into table FileSpec 
	Description text  -- element of text 
) ;

CREATE TABLE Extrude23Core (
	_index_  SERIAL PRIMARY KEY,
	form text NOT NULL,-- attribute
	TerminationPoint DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	_Curve integer  -- index into table Curve13Core 
) ;

CREATE TABLE Extrude23 (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	_Extrude23Core integer, -- index into table Extrude23Core 
	_Transform integer  -- index into table ElementReference 
) ;

CREATE TABLE ExtrudedCrossSectionActualDetermination (
	_index_  SERIAL PRIMARY KEY,
	_Checked integer, -- index into table ExtrudedCrossSectionCheckedFeature 
	_Set integer  -- index into table SetFeature 
) ;

CREATE TABLE ExtrudedCrossSectionBestFit (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	__BaseFeature integer[]  -- index into table SequencedBaseFeature 
) ;

CREATE TABLE ExtrudedCrossSectionCast (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseFeature integer  -- index into table BaseFeature 
) ;

CREATE TABLE ExtrudedCrossSectionCheckedFeature (
	_index_  SERIAL PRIMARY KEY,
	_CheckDetails integer  -- index into table ExtrudedCrossSectionChecked 
) ;

CREATE TABLE ExtrudedCrossSectionChecked (
	_index_  SERIAL PRIMARY KEY,
	_Measured integer, -- index into table MeasuredFeature 
	_Constructed integer  -- index into table ExtrudedCrossSectionConstructionMethod 
) ;

CREATE TABLE ExtrudedCrossSectionConstructionMethod (
	_index_  SERIAL PRIMARY KEY,
	_BestFit integer, -- index into table ExtrudedCrossSectionBestFit 
	_Recompensated integer, -- index into table ExtrudedCrossSectionRecomp 
	_Copy integer, -- index into table ExtrudedCrossSectionCopy 
	_Cast integer, -- index into table ExtrudedCrossSectionCast 
	_Transform integer  -- index into table ExtrudedCrossSectionTransform 
) ;

CREATE TABLE ExtrudedCrossSectionCopy (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseExtrudedCrossSection integer  -- index into table BaseFeature 
) ;

CREATE TABLE ExtrudedCrossSectionFeatureActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	_PointList integer, -- index into table PointListActual 
	FeatureItemId text, 
	ActualComponentId text, 
	ManufacturingProcessId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	Direction text, 
	Length text, 
	Form text  
) ;

CREATE TABLE ExtrudedCrossSectionFeatureDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	InternalExternal text, -- element of text 
	Length text  
) ;

CREATE TABLE ExtrudedCrossSectionFeatureItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	FeatureNominalId text, 
	ParentFeatureItemId text, 
	FeatureName text, -- element of text 
	QPId text, -- element of text 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	CoordinateSystemId text, 
	_DeterminationMode integer, -- index into table ExtrudedCrossSectionActualDetermination 
	_SubstituteFeatureAlgorithm integer  -- index into table CurveSubstituteFeatureAlgorithm 
) ;

CREATE TABLE ExtrudedCrossSectionFeatureNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Name text, -- element of text 
	_PointList integer, -- index into table PointListNominal 
	FeatureDefinitionId text, -- element of text 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Direction DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	CrossSectionReferenceFeatureId text  
) ;

CREATE TABLE ExtrudedCrossSectionPointSamplingStrategy (
	_index_  SERIAL PRIMARY KEY,
	PointSamplingStrategyEnum text, -- element of text 
	UserDefinedStrategy text  -- element of text 
) ;

CREATE TABLE ExtrudedCrossSectionRecomp (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseFeaturePointList integer  -- index into table BaseFeaturePointList 
) ;

CREATE TABLE ExtrudedCrossSectionTransform (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseExtrudedCrossSection integer, -- index into table BaseFeature 
	_Transformation integer  -- index into table TransformationReference 
) ;

CREATE TABLE FPSTest (
	_index_  SERIAL PRIMARY KEY,
	_XLinearity integer, -- index into table LengthFunctionDiscrete 
	_YLinearity integer, -- index into table LengthFunctionDiscrete 
	_ZLinearity integer, -- index into table LengthFunctionDiscrete 
	_XAxisRoll integer, -- index into table AngleFunctionDiscrete 
	_XAxisPitch integer, -- index into table AngleFunctionDiscrete 
	_XAxisYaw integer, -- index into table AngleFunctionDiscrete 
	_YAxisRoll integer, -- index into table AngleFunctionDiscrete 
	_YAxisPitch integer, -- index into table AngleFunctionDiscrete 
	_YAxisYaw integer, -- index into table AngleFunctionDiscrete 
	_ZAxisRoll integer, -- index into table AngleFunctionDiscrete 
	_ZAxisPitch integer, -- index into table AngleFunctionDiscrete 
	_ZAxisYaw integer, -- index into table AngleFunctionDiscrete 
	_XAxisStraightnessY integer, -- index into table LengthFunctionDiscrete 
	_XAxisStraightnessZ integer, -- index into table LengthFunctionDiscrete 
	_YAxisStraightnessX integer, -- index into table LengthFunctionDiscrete 
	_YAxisStraightnessZ integer, -- index into table LengthFunctionDiscrete 
	_ZAxisStraightnessX integer, -- index into table LengthFunctionDiscrete 
	_ZAxisStraightnessY integer, -- index into table LengthFunctionDiscrete 
	XYSquareness DOUBLE PRECISION, -- element of DOUBLE PRECISION 
	XZSquareness DOUBLE PRECISION, -- element of DOUBLE PRECISION 
	YZSquareness DOUBLE PRECISION  -- element of DOUBLE PRECISION 
) ;

CREATE TABLE FaceBase (
	_index_  SERIAL PRIMARY KEY,
	turned text NOT NULL,-- attribute
	area text NOT NULL,-- attribute
	volume text NOT NULL,-- attribute
	massCenter text NOT NULL,-- attribute
	color text NOT NULL,-- attribute
	transparency text NOT NULL,-- attribute
	hidden text NOT NULL,-- attribute
	size text NOT NULL,-- attribute
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	InertiaMatrix text  
) ;

CREATE TABLE FaceMesh (
	_index_  SERIAL PRIMARY KEY,
	turned text NOT NULL,-- attribute
	area text NOT NULL,-- attribute
	volume text NOT NULL,-- attribute
	massCenter text NOT NULL,-- attribute
	color text NOT NULL,-- attribute
	transparency text NOT NULL,-- attribute
	hidden text NOT NULL,-- attribute
	size text NOT NULL,-- attribute
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	InertiaMatrix text, 
	_Mesh integer, -- index into table ElementReference 
	_LoopIds integer, -- index into table ArrayReference 
	Triangles text, 
	TrianglesBinary text, 
	TrianglesVisible text, 
	TrianglesVisibleBinary text, 
	TrianglesHidden text, 
	TrianglesHiddenBinary text, 
	TrianglesColor text, 
	TrianglesColorBinary text  
) ;

CREATE TABLE FaceSet (
	_index_  SERIAL PRIMARY KEY,
	N text,-- attribute
	__Face integer[], -- index into table Face 
	__FaceBase integer[], -- index into table FaceBase 
	__FaceMesh integer[]  -- index into table FaceMesh 
) ;

CREATE TABLE Face (
	_index_  SERIAL PRIMARY KEY,
	hasOuter text NOT NULL,-- attribute
	turned text NOT NULL,-- attribute
	area text NOT NULL,-- attribute
	volume text NOT NULL,-- attribute
	massCenter text NOT NULL,-- attribute
	color text NOT NULL,-- attribute
	transparency text NOT NULL,-- attribute
	hidden text NOT NULL,-- attribute
	size text NOT NULL,-- attribute
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	InertiaMatrix text, 
	_Cone23 integer, -- index into table Cone23 
	_Cylinder23 integer, -- index into table Cylinder23 
	_Extrude23 integer, -- index into table Extrude23 
	_Nurbs23 integer, -- index into table Nurbs23 
	_Offset23 integer, -- index into table Offset23 
	_Plane23 integer, -- index into table Plane23 
	_Revolution23 integer, -- index into table Revolution23 
	_Ruled23 integer, -- index into table Ruled23 
	_Sphere23 integer, -- index into table Sphere23 
	_Spline23 integer, -- index into table Spline23 
	_Surface integer, -- index into table SurfaceBase 
	_Torus23 integer, -- index into table Torus23 
	_LoopIds integer  -- index into table ArrayReference 
) ;

CREATE TABLE FeatureActualBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	_PointList integer, -- index into table PointListActual 
	FeatureItemId text, 
	ActualComponentId text, 
	ManufacturingProcessId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	_NotedEventIds integer  -- index into table ArrayReferenceFull 
) ;

CREATE TABLE FeatureActuals (
	_index_  SERIAL PRIMARY KEY,
	__ArcFeatureActual integer[], -- index into table ArcFeatureActual 
	__CircleFeatureActual integer[], -- index into table CircleFeatureActual 
	__CompoundFeatureActual integer[], -- index into table CompoundFeatureActual 
	__ConeFeatureActual integer[], -- index into table ConeFeatureActual 
	__ConicalSegmentFeatureActual integer[], -- index into table ConicalSegmentFeatureActual 
	__CuboidFeatureActual integer[], -- index into table CuboidFeatureActual 
	__CylinderFeatureActual integer[], -- index into table CylinderFeatureActual 
	__CylindricalSegmentFeatureActual integer[], -- index into table CylindricalSegmentFeatureActual 
	__EdgePointFeatureActual integer[], -- index into table EdgePointFeatureActual 
	__EllipseFeatureActual integer[], -- index into table EllipseFeatureActual 
	__ElongatedCylinderFeatureActual integer[], -- index into table ElongatedCylinderFeatureActual 
	__ExtrudedCrossSectionFeatureActual integer[], -- index into table ExtrudedCrossSectionFeatureActual 
	__FeatureActual integer[], -- index into table FeatureActualBase 
	__GenericFeatureActual integer[], -- index into table GenericFeatureActual 
	__LineFeatureActual integer[], -- index into table LineFeatureActual 
	__OppositeLinesFeatureActual integer[], -- index into table OppositeLinesFeatureActual 
	__OppositePlanesFeatureActual integer[], -- index into table OppositePlanesFeatureActual 
	__PatternFeatureActual integer[], -- index into table PatternFeatureActual 
	__PlaneFeatureActual integer[], -- index into table PlaneFeatureActual 
	__PointDefinedCurveFeatureActual integer[], -- index into table PointDefinedCurveFeatureActual 
	__PointDefinedSurfaceFeatureActual integer[], -- index into table PointDefinedSurfaceFeatureActual 
	__PointFeatureActual integer[], -- index into table PointFeatureActual 
	__ProfileGroupFeatureActual integer[], -- index into table ProfileGroupFeatureActual 
	__RunoutGroupFeatureActual integer[], -- index into table RunoutGroupFeatureActual 
	__SphereFeatureActual integer[], -- index into table SphereFeatureActual 
	__SphericalSegmentFeatureActual integer[], -- index into table SphericalSegmentFeatureActual 
	__SurfaceOfRevolutionFeatureActual integer[], -- index into table SurfaceOfRevolutionFeatureActual 
	__ThreadedFeatureActual integer[], -- index into table ThreadedFeatureActual 
	__ToroidalSegmentFeatureActual integer[], -- index into table ToroidalSegmentFeatureActual 
	__TorusFeatureActual integer[]  -- index into table TorusFeatureActual 
) ;

CREATE TABLE FeatureArea (
	_index_  SERIAL PRIMARY KEY 
) ;

CREATE TABLE FeatureAspectsLists (
	_index_  SERIAL PRIMARY KEY,
	_FeatureDefinitions integer, -- index into table FeatureDefinitions 
	_FeatureNominals integer, -- index into table FeatureNominals 
	_FeatureItems integer  -- index into table FeatureItems 
) ;

CREATE TABLE FeatureBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer  -- index into table Attributes 
) ;

CREATE TABLE FeatureDefinitionBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer  -- index into table Attributes 
) ;

CREATE TABLE FeatureDefinitions (
	_index_  SERIAL PRIMARY KEY,
	__ArcFeatureDefinition integer[], -- index into table ArcFeatureDefinition 
	__CircleFeatureDefinition integer[], -- index into table CircleFeatureDefinition 
	__CompoundFeatureDefinition integer[], -- index into table CompoundFeatureDefinition 
	__ConeFeatureDefinition integer[], -- index into table ConeFeatureDefinition 
	__ConicalSegmentFeatureDefinition integer[], -- index into table ConicalSegmentFeatureDefinition 
	__CuboidFeatureDefinition integer[], -- index into table CuboidFeatureDefinition 
	__CylinderFeatureDefinition integer[], -- index into table CylinderFeatureDefinition 
	__CylindricalSegmentFeatureDefinition integer[], -- index into table CylindricalSegmentFeatureDefinition 
	__EdgePointFeatureDefinition integer[], -- index into table EdgePointFeatureDefinition 
	__EllipseFeatureDefinition integer[], -- index into table EllipseFeatureDefinition 
	__ElongatedCylinderFeatureDefinition integer[], -- index into table ElongatedCylinderFeatureDefinition 
	__ExtrudedCrossSectionFeatureDefinition integer[], -- index into table ExtrudedCrossSectionFeatureDefinition 
	__FeatureDefinition integer[], -- index into table FeatureDefinitionBase 
	__GenericFeatureDefinition integer[], -- index into table GenericFeatureDefinition 
	__LineFeatureDefinition integer[], -- index into table LineFeatureDefinition 
	__OppositeLinesFeatureDefinition integer[], -- index into table OppositeLinesFeatureDefinition 
	__OppositePlanesFeatureDefinition integer[], -- index into table OppositePlanesFeatureDefinition 
	__PatternFeatureDefinition integer[], -- index into table PatternFeatureDefinition 
	__PlaneFeatureDefinition integer[], -- index into table PlaneFeatureDefinition 
	__PointDefinedCurveFeatureDefinition integer[], -- index into table PointDefinedCurveFeatureDefinition 
	__PointDefinedSurfaceFeatureDefinition integer[], -- index into table PointDefinedSurfaceFeatureDefinition 
	__PointFeatureDefinition integer[], -- index into table PointFeatureDefinition 
	__ProfileGroupFeatureDefinition integer[], -- index into table ProfileGroupFeatureDefinition 
	__RunoutGroupFeatureDefinition integer[], -- index into table RunoutGroupFeatureDefinition 
	__SphereFeatureDefinition integer[], -- index into table SphereFeatureDefinition 
	__SphericalSegmentFeatureDefinition integer[], -- index into table SphericalSegmentFeatureDefinition 
	__SurfaceOfRevolutionFeatureDefinition integer[], -- index into table SurfaceOfRevolutionFeatureDefinition 
	__ThreadedFeatureDefinition integer[], -- index into table ThreadedFeatureDefinition 
	__ToroidalSegmentFeatureDefinition integer[], -- index into table ToroidalSegmentFeatureDefinition 
	__TorusFeatureDefinition integer[]  -- index into table TorusFeatureDefinition 
) ;

CREATE TABLE FeatureIsDatum (
	_index_  SERIAL PRIMARY KEY 
) ;

CREATE TABLE FeatureIsInternal (
	_index_  SERIAL PRIMARY KEY 
) ;

CREATE TABLE FeatureItemBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	FeatureNominalId text, 
	ParentFeatureItemId text, 
	FeatureName text, -- element of text 
	QPId text, -- element of text 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	CoordinateSystemId text  
) ;

CREATE TABLE FeatureItems (
	_index_  SERIAL PRIMARY KEY,
	__ArcFeatureItem integer[], -- index into table ArcFeatureItem 
	__CircleFeatureItem integer[], -- index into table CircleFeatureItem 
	__CompoundFeatureItem integer[], -- index into table CompoundFeatureItem 
	__ConeFeatureItem integer[], -- index into table ConeFeatureItem 
	__ConicalSegmentFeatureItem integer[], -- index into table ConicalSegmentFeatureItem 
	__CuboidFeatureItem integer[], -- index into table CuboidFeatureItem 
	__CylinderFeatureItem integer[], -- index into table CylinderFeatureItem 
	__CylindricalSegmentFeatureItem integer[], -- index into table CylindricalSegmentFeatureItem 
	__EdgePointFeatureItem integer[], -- index into table EdgePointFeatureItem 
	__EllipseFeatureItem integer[], -- index into table EllipseFeatureItem 
	__ElongatedCylinderFeatureItem integer[], -- index into table ElongatedCylinderFeatureItem 
	__ExtrudedCrossSectionFeatureItem integer[], -- index into table ExtrudedCrossSectionFeatureItem 
	__FeatureItem integer[], -- index into table FeatureItemBase 
	__GenericFeatureItem integer[], -- index into table GenericFeatureItem 
	__LineFeatureItem integer[], -- index into table LineFeatureItem 
	__OppositeLinesFeatureItem integer[], -- index into table OppositeLinesFeatureItem 
	__OppositePlanesFeatureItem integer[], -- index into table OppositePlanesFeatureItem 
	__PatternFeatureItem integer[], -- index into table PatternFeatureItem 
	__PlaneFeatureItem integer[], -- index into table PlaneFeatureItem 
	__PointDefinedCurveFeatureItem integer[], -- index into table PointDefinedCurveFeatureItem 
	__PointDefinedSurfaceFeatureItem integer[], -- index into table PointDefinedSurfaceFeatureItem 
	__PointFeatureItem integer[], -- index into table PointFeatureItem 
	__ProfileGroupFeatureItem integer[], -- index into table ProfileGroupFeatureItem 
	__RunoutGroupFeatureItem integer[], -- index into table RunoutGroupFeatureItem 
	__SphereFeatureItem integer[], -- index into table SphereFeatureItem 
	__SphericalSegmentFeatureItem integer[], -- index into table SphericalSegmentFeatureItem 
	__SurfaceOfRevolutionFeatureItem integer[], -- index into table SurfaceOfRevolutionFeatureItem 
	__ThreadedFeatureItem integer[], -- index into table ThreadedFeatureItem 
	__ToroidalSegmentFeatureItem integer[], -- index into table ToroidalSegmentFeatureItem 
	__TorusFeatureItem integer[]  -- index into table TorusFeatureItem 
) ;

CREATE TABLE FeatureLength (
	_index_  SERIAL PRIMARY KEY 
) ;

CREATE TABLE FeatureNominalBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Name text, -- element of text 
	_PointList integer, -- index into table PointListNominal 
	FeatureDefinitionId text, -- element of text 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer  -- index into table ArrayReferenceFull 
) ;

CREATE TABLE FeatureNominals (
	_index_  SERIAL PRIMARY KEY,
	__ArcFeatureNominal integer[], -- index into table ArcFeatureNominal 
	__CircleFeatureNominal integer[], -- index into table CircleFeatureNominal 
	__CompoundFeatureNominal integer[], -- index into table CompoundFeatureNominal 
	__ConeFeatureNominal integer[], -- index into table ConeFeatureNominal 
	__ConicalSegmentFeatureNominal integer[], -- index into table ConicalSegmentFeatureNominal 
	__CuboidFeatureNominal integer[], -- index into table CuboidFeatureNominal 
	__CylinderFeatureNominal integer[], -- index into table CylinderFeatureNominal 
	__CylindricalSegmentFeatureNominal integer[], -- index into table CylindricalSegmentFeatureNominal 
	__EdgePointFeatureNominal integer[], -- index into table EdgePointFeatureNominal 
	__EllipseFeatureNominal integer[], -- index into table EllipseFeatureNominal 
	__ElongatedCylinderFeatureNominal integer[], -- index into table ElongatedCylinderFeatureNominal 
	__ExtrudedCrossSectionFeatureNominal integer[], -- index into table ExtrudedCrossSectionFeatureNominal 
	__FeatureNominal integer[], -- index into table FeatureNominalBase 
	__GenericFeatureNominal integer[], -- index into table GenericFeatureNominal 
	__LineFeatureNominal integer[], -- index into table LineFeatureNominal 
	__OppositeLinesFeatureNominal integer[], -- index into table OppositeLinesFeatureNominal 
	__OppositePlanesFeatureNominal integer[], -- index into table OppositePlanesFeatureNominal 
	__PatternFeatureNominal integer[], -- index into table PatternFeatureNominal 
	__PlaneFeatureNominal integer[], -- index into table PlaneFeatureNominal 
	__PointDefinedCurveFeatureNominal integer[], -- index into table PointDefinedCurveFeatureNominal 
	__PointDefinedSurfaceFeatureNominal integer[], -- index into table PointDefinedSurfaceFeatureNominal 
	__PointFeatureNominal integer[], -- index into table PointFeatureNominal 
	__ProfileGroupFeatureNominal integer[], -- index into table ProfileGroupFeatureNominal 
	__RunoutGroupFeatureNominal integer[], -- index into table RunoutGroupFeatureNominal 
	__SphereFeatureNominal integer[], -- index into table SphereFeatureNominal 
	__SphericalSegmentFeatureNominal integer[], -- index into table SphericalSegmentFeatureNominal 
	__SurfaceOfRevolutionFeatureNominal integer[], -- index into table SurfaceOfRevolutionFeatureNominal 
	__ThreadedFeatureNominal integer[], -- index into table ThreadedFeatureNominal 
	__ToroidalSegmentFeatureNominal integer[], -- index into table ToroidalSegmentFeatureNominal 
	__TorusFeatureNominal integer[]  -- index into table TorusFeatureNominal 
) ;

CREATE TABLE FeatureOfSizeSubstituteFeatureAlgorithm (
	_index_  SERIAL PRIMARY KEY,
	FeatureOfSizeSubstituteFeatureAlgorithmEnum text, -- element of text 
	OtherFeatureOfSizeSubstituteFeatureAlgorithm text  -- element of text 
) ;

CREATE TABLE FeatureRules (
	_index_  SERIAL PRIMARY KEY,
	SamplingRigorMax DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_IfThenElseFeatureRules integer, -- index into table IfThenElseFeatureRules 
	_MaxFeatureRules integer  -- index into table MaxFeatureRules 
) ;

CREATE TABLE FileInternal (
	_index_  SERIAL PRIMARY KEY,
	Name text, -- element of text 
	_Version integer  -- index into table Version 
) ;

CREATE TABLE FileSpec (
	_index_  SERIAL PRIMARY KEY,
	CommonFileSpecEnum text, -- element of text 
	OtherFileSpec text  -- element of text 
) ;

CREATE TABLE File (
	_index_  SERIAL PRIMARY KEY,
	Name text, -- element of text 
	Version text, -- element of text 
	_Format integer  -- index into table DigitalModelFormat 
) ;

CREATE TABLE FileUnits (
	_index_  SERIAL PRIMARY KEY,
	_PrimaryUnits integer, -- index into table PrimaryUnits 
	_OtherUnits integer, -- index into table OtherUnits 
	_UserDefinedUnits integer  -- index into table UserDefinedUnits 
) ;

CREATE TABLE FirstArticleStudyPlan (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	ThisStatisticalStudyPlanInstanceQPId text, -- element of text 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	CalculateAverageFeatures BOOLEAN, -- element of BOOLEAN 
	_CharacteristicItemIds integer, -- index into table ArrayReferenceFull 
	StatsValuesPerChar StatsValuesEnumType, -- element of StatsValuesEnumType 
	StatsValuesPerSubgroup SubgroupStatsValuesEnumType, -- element of SubgroupStatsValuesEnumType 
	__StatsValuesSummary integer[], -- index into table SummaryStatsValues 
	_PreInspectionTraceability integer, -- index into table PreInspectionTraceability 
	Name text, -- element of text 
	Description text, -- element of text 
	PlanId text, 
	CorrectiveActionPlanId text, 
	InSpecRatio DECIMAL(10,2), -- element of DECIMAL(10,2) 
	LinearAbsoluteMaximum text, 
	AngularAbsoluteMaximum text, 
	AreaAbsoluteMaximum text, 
	ForceAbsoluteMaximum text, 
	MassAbsoluteMaximum text, 
	PressureAbsoluteMaximum text, 
	SpeedAbsoluteMaximum text, 
	TemperatureAbsoluteMaximum text, 
	TimeAbsoluteMaximum text, 
	UserDefinedUnitAbsoluteMaximum text[], 
	RelativeMaximum DECIMAL(10,2)  -- element of DECIMAL(10,2) 
) ;

CREATE TABLE FirstArticleStudyResults (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	ThisStatisticalStudyResultsInstanceQPId text, -- element of text 
	_Status integer, -- index into table StatsEvalStatus 
	__StudyIssue integer[], -- index into table StudyIssue 
	_InspectionTraceability integer, -- index into table InspectionTraceability 
	Name text, -- element of text 
	Description text, -- element of text 
	StudyId text, 
	ResultsId text[], 
	__ResultsQPId integer[], -- index into table QPIdFullReference 
	__ResultsFile integer[], -- index into table ExternalFileReference 
	__AverageFeature integer[], -- index into table AverageFeature 
	__CharacteristicsStats integer[], -- index into table CharacteristicsStats 
	__LinearStatsSummary integer[], -- index into table SummaryStatisticsLinear 
	__AngularStatsSummary integer[], -- index into table SummaryStatisticsAngular 
	__AreaStatsSummary integer[], -- index into table SummaryStatisticsArea 
	__ForceStatsSummary integer[], -- index into table SummaryStatisticsForce 
	__MassStatsSummary integer[], -- index into table SummaryStatisticsMass 
	__PressureStatsSummary integer[], -- index into table SummaryStatisticsPressure 
	__SpeedStatsSummary integer[], -- index into table SummaryStatisticsSpeed 
	__TemperatureStatsSummary integer[], -- index into table SummaryStatisticsTemperature 
	__TimeStatsSummary integer[], -- index into table SummaryStatisticsTime 
	__UserDefinedUnitStatsSummary integer[], -- index into table SummaryStatisticsUserDefinedUnit 
	__StatsSummary integer[], -- index into table SummaryStatistics 
	InSpecRatio DECIMAL(10,2), -- element of DECIMAL(10,2) 
	LinearAbsoluteMaximum text, 
	AngularAbsoluteMaximum text, 
	AreaAbsoluteMaximum text, 
	ForceAbsoluteMaximum text, 
	MassAbsoluteMaximum text, 
	PressureAbsoluteMaximum text, 
	SpeedAbsoluteMaximum text, 
	TemperatureAbsoluteMaximum text, 
	TimeAbsoluteMaximum text, 
	UserDefinedUnitAbsoluteMaximum text[], 
	RelativeMaximum text  -- element of text 
) ;

CREATE TABLE Fixture (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	Name text, -- element of text 
	Description text, -- element of text 
	Manufacturer text, -- element of text 
	ModelNumber text, -- element of text 
	SerialNumber text, -- element of text 
	LocationId text, 
	_Location integer  -- index into table Location 
) ;

CREATE TABLE Fixtures (
	_index_  SERIAL PRIMARY KEY,
	__Fixture integer[]  -- index into table Fixture 
) ;

CREATE TABLE FlatnessCharacteristicActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text, 
	MaxFlatness text, 
	_ZonePlane integer  -- index into table ActualPlane 
) ;

CREATE TABLE FlatnessCharacteristicDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	_DirectionFeature integer, -- index into table DirectionFeature 
	_CollectionPlane integer, -- index into table CollectionPlane 
	_IntersectionPlane integer, -- index into table IntersectionPlane 
	_OrientationPlane integer, -- index into table OrientationPlane 
	ToleranceValue text, 
	_ToleranceZonePerUnitArea integer, -- index into table ToleranceZonePerUnitArea 
	NotConvex BOOLEAN  -- element of BOOLEAN 
) ;

CREATE TABLE FlatnessCharacteristicItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE FlatnessCharacteristicNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_CircularZoneLimit integer, -- index into table CharacteristicCircularZoneLimit 
	_DirectionalZoneLimit integer, -- index into table CharacteristicDirectionalZoneLimit 
	_RectangularZoneLimit integer  -- index into table CharacteristicRectangularZoneLimit 
) ;

CREATE TABLE FlatnessCharacteristicStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_ValueStats integer, -- index into table StatsWithTolLinear 
	_MaxValueStats integer, -- index into table StatsLinear 
	_MinValueStats integer, -- index into table StatsLinear 
	CapabilityCalculationMethod text, -- element of text 
	_MaxFlatnessStats integer  -- index into table StatsLinear 
) ;

CREATE TABLE Font (
	_index_  SERIAL PRIMARY KEY,
	index text,-- attribute
	bold text NOT NULL,-- attribute
	italic text NOT NULL,-- attribute
	underline text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	Name text, -- element of text 
	Size DECIMAL(10,2)  -- element of DECIMAL(10,2) 
) ;

CREATE TABLE Fonts (
	_index_  SERIAL PRIMARY KEY,
	N text,-- attribute
	__Font integer[]  -- index into table Font 
) ;

CREATE TABLE ForceCharacteristicActualBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text  
) ;

CREATE TABLE ForceCharacteristicDefinitionBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	_Tolerance integer, -- index into table ForceTolerance 
	NonTolerance text  -- element of text 
) ;

CREATE TABLE ForceCharacteristicItemBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE ForceCharacteristicNominalBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	TargetValue text  
) ;

CREATE TABLE ForceTolerance (
	_index_  SERIAL PRIMARY KEY,
	MaxValue text, 
	MinValue text, 
	DefinedAsLimit BOOLEAN  -- element of BOOLEAN 
) ;

CREATE TABLE ForceUnit (
	_index_  SERIAL PRIMARY KEY,
	SIUnitName text, -- element of text 
	UnitName text, -- element of text 
	_UnitConversion integer  -- index into table UnitConversion 
) ;

CREATE TABLE FormCharacteristicActualBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text  
) ;

CREATE TABLE FormCharacteristicDefinitionBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	_DirectionFeature integer, -- index into table DirectionFeature 
	_CollectionPlane integer, -- index into table CollectionPlane 
	_IntersectionPlane integer, -- index into table IntersectionPlane 
	_OrientationPlane integer  -- index into table OrientationPlane 
) ;

CREATE TABLE FormCharacteristicItemBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE FormCharacteristicNominalBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer  -- index into table KeyCharacteristic 
) ;

CREATE TABLE FormCharacteristicStatsEvalBase (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_ValueStats integer, -- index into table StatsWithTolLinear 
	_MaxValueStats integer, -- index into table StatsLinear 
	_MinValueStats integer, -- index into table StatsLinear 
	CapabilityCalculationMethod text  -- element of text 
) ;

CREATE TABLE FormalStandard (
	_index_  SERIAL PRIMARY KEY,
	FormalStandardEnum text, -- element of text 
	OtherFormalStandard text  -- element of text 
) ;

CREATE TABLE FrameCircular (
	_index_  SERIAL PRIMARY KEY,
	crossed text NOT NULL,-- attribute
	XY DOUBLE PRECISION[2], -- list of DOUBLE PRECISION 
	Radius DOUBLE PRECISION  -- element of DOUBLE PRECISION 
) ;

CREATE TABLE FrameFlag (
	_index_  SERIAL PRIMARY KEY,
	right_ text NOT NULL,-- attribute
	XY DOUBLE PRECISION[2], -- list of DOUBLE PRECISION 
	Width DOUBLE PRECISION, -- element of DOUBLE PRECISION 
	Height DOUBLE PRECISION  -- element of DOUBLE PRECISION 
) ;

CREATE TABLE FrameIrregularForm (
	_index_  SERIAL PRIMARY KEY,
	XY DOUBLE PRECISION[2], -- list of DOUBLE PRECISION 
	Points text  
) ;

CREATE TABLE FrameRectangular (
	_index_  SERIAL PRIMARY KEY,
	XY DOUBLE PRECISION[2], -- list of DOUBLE PRECISION 
	Width DOUBLE PRECISION, -- element of DOUBLE PRECISION 
	Height DOUBLE PRECISION  -- element of DOUBLE PRECISION 
) ;

CREATE TABLE Frame (
	_index_  SERIAL PRIMARY KEY,
	XY DOUBLE PRECISION[2]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE Frames (
	_index_  SERIAL PRIMARY KEY,
	N text,-- attribute
	__Frame integer[], -- index into table Frame 
	__FrameCircular integer[], -- index into table FrameCircular 
	__FrameFlag integer[], -- index into table FrameFlag 
	__FrameIrregularForm integer[], -- index into table FrameIrregularForm 
	__FrameRectangular integer[]  -- index into table FrameRectangular 
) ;

CREATE TABLE FunctionDiscrete (
	_index_  SERIAL PRIMARY KEY,
	N text,-- attribute
	DomainValues DOUBLE PRECISION, -- element of DOUBLE PRECISION 
	RangeValues DOUBLE PRECISION  -- element of DOUBLE PRECISION 
) ;

CREATE TABLE GageDevice (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	Name text, -- element of text 
	Description text, -- element of text 
	Manufacturer text, -- element of text 
	ModelNumber text, -- element of text 
	SerialNumber text, -- element of text 
	LocationId text, 
	_Location integer, -- index into table Location 
	_Calibrations integer, -- index into table Calibrations 
	_InspectionTemperatures integer  -- index into table Temperatures 
) ;

CREATE TABLE GageMeasureFeatureMethod (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_ChosenResourceIds integer, -- index into table ArrayReferenceFull 
	_WorkInstructionIds integer  -- index into table ArrayReferenceFull 
) ;

CREATE TABLE GageRandRStudyPlan (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	ThisStatisticalStudyPlanInstanceQPId text, -- element of text 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	CalculateAverageFeatures BOOLEAN, -- element of BOOLEAN 
	_CharacteristicItemIds integer, -- index into table ArrayReferenceFull 
	StatsValuesPerChar StatsValuesEnumType, -- element of StatsValuesEnumType 
	StatsValuesPerSubgroup SubgroupStatsValuesEnumType, -- element of SubgroupStatsValuesEnumType 
	__StatsValuesSummary integer[], -- index into table SummaryStatsValues 
	_PreInspectionTraceability integer, -- index into table PreInspectionTraceability 
	Name text, -- element of text 
	Description text, -- element of text 
	PlanId text, 
	CorrectiveActionPlanId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	RandRStudy text, -- element of text 
	NumberOfAppraisers DECIMAL(10,2), -- element of DECIMAL(10,2) 
	NumberOfParts DECIMAL(10,2), -- element of DECIMAL(10,2) 
	NumberOfTrials DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_MaximumRelativeAppraiserVariation integer, -- index into table CriterionDecimal 
	_MaximumAbsoluteLinearAppraiserVariation integer, -- index into table CriterionLinear 
	_MaximumAbsoluteAngularAppraiserVariation integer, -- index into table CriterionAngular 
	_MaximumAbsoluteAreaAppraiserVariation integer, -- index into table CriterionArea 
	_MaximumAbsoluteForceAppraiserVariation integer, -- index into table CriterionForce 
	_MaximumAbsoluteMassAppraiserVariation integer, -- index into table CriterionMass 
	_MaximumAbsolutePressureAppraiserVariation integer, -- index into table CriterionPressure 
	_MaximumAbsoluteSpeedAppraiserVariation integer, -- index into table CriterionSpeed 
	_MaximumAbsoluteTemperatureAppraiserVariation integer, -- index into table CriterionTemperature 
	_MaximumAbsoluteTimeAppraiserVariation integer, -- index into table CriterionTime 
	__MaximumAbsoluteUserDefinedUnitAppraiserVariation integer[], -- index into table CriterionUserDefinedUnit 
	_MaximumRelativeEquipmentVariation integer, -- index into table CriterionDecimal 
	_MaximumAbsoluteLinearEquipmentVariation integer, -- index into table CriterionLinear 
	_MaximumAbsoluteAngularEquipmentVariation integer, -- index into table CriterionAngular 
	_MaximumAbsoluteAreaEquipmentVariation integer, -- index into table CriterionArea 
	_MaximumAbsoluteForceEquipmentVariation integer, -- index into table CriterionForce 
	_MaximumAbsoluteMassEquipmentVariation integer, -- index into table CriterionMass 
	_MaximumAbsolutePressureEquipmentVariation integer, -- index into table CriterionPressure 
	_MaximumAbsoluteSpeedEquipmentVariation integer, -- index into table CriterionSpeed 
	_MaximumAbsoluteTemperatureEquipmentVariation integer, -- index into table CriterionTemperature 
	_MaximumAbsoluteTimeEquipmentVariation integer, -- index into table CriterionTime 
	__MaximumAbsoluteUserDefinedUnitEquipmentVariation integer[], -- index into table CriterionUserDefinedUnit 
	_MaximumRelativeTotalRandR integer, -- index into table CriterionDecimal 
	_MaximumAbsoluteLinearTotalRandR integer, -- index into table CriterionLinear 
	_MaximumAbsoluteAngularTotalRandR integer, -- index into table CriterionAngular 
	_MaximumAbsoluteAreaTotalRandR integer, -- index into table CriterionArea 
	_MaximumAbsoluteForceTotalRandR integer, -- index into table CriterionForce 
	_MaximumAbsoluteMassTotalRandR integer, -- index into table CriterionMass 
	_MaximumAbsolutePressureTotalRandR integer, -- index into table CriterionPressure 
	_MaximumAbsoluteSpeedTotalRandR integer, -- index into table CriterionSpeed 
	_MaximumAbsoluteTemperatureTotalRandR integer, -- index into table CriterionTemperature 
	_MaximumAbsoluteTimeTotalRandR integer, -- index into table CriterionTime 
	__MaximumAbsoluteUserDefinedUnitTotalRandR integer[]  -- index into table CriterionUserDefinedUnit 
) ;

CREATE TABLE GageRandRStudyResults (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	ThisStatisticalStudyResultsInstanceQPId text, -- element of text 
	_Status integer, -- index into table StatsEvalStatus 
	__StudyIssue integer[], -- index into table StudyIssue 
	_InspectionTraceability integer, -- index into table InspectionTraceability 
	Name text, -- element of text 
	Description text, -- element of text 
	StudyId text, 
	ResultsId text[], 
	__ResultsQPId integer[], -- index into table QPIdFullReference 
	__ResultsFile integer[], -- index into table ExternalFileReference 
	__AverageFeature integer[], -- index into table AverageFeature 
	__CharacteristicsStats integer[], -- index into table CharacteristicsStats 
	__LinearStatsSummary integer[], -- index into table SummaryStatisticsLinear 
	__AngularStatsSummary integer[], -- index into table SummaryStatisticsAngular 
	__AreaStatsSummary integer[], -- index into table SummaryStatisticsArea 
	__ForceStatsSummary integer[], -- index into table SummaryStatisticsForce 
	__MassStatsSummary integer[], -- index into table SummaryStatisticsMass 
	__PressureStatsSummary integer[], -- index into table SummaryStatisticsPressure 
	__SpeedStatsSummary integer[], -- index into table SummaryStatisticsSpeed 
	__TemperatureStatsSummary integer[], -- index into table SummaryStatisticsTemperature 
	__TimeStatsSummary integer[], -- index into table SummaryStatisticsTime 
	__UserDefinedUnitStatsSummary integer[], -- index into table SummaryStatisticsUserDefinedUnit 
	__StatsSummary integer[], -- index into table SummaryStatistics 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	NumberOfAppraisers DECIMAL(10,2), -- element of DECIMAL(10,2) 
	NumberOfParts DECIMAL(10,2), -- element of DECIMAL(10,2) 
	NumberOfTrials DECIMAL(10,2)  -- element of DECIMAL(10,2) 
) ;

CREATE TABLE GenericFeatureActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	_PointList integer, -- index into table PointListActual 
	FeatureItemId text, 
	ActualComponentId text, 
	ManufacturingProcessId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	_NotedEventIds integer  -- index into table ArrayReferenceFull 
) ;

CREATE TABLE GenericFeatureDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer  -- index into table Attributes 
) ;

CREATE TABLE GenericFeatureItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	FeatureNominalId text, 
	ParentFeatureItemId text, 
	FeatureName text, -- element of text 
	QPId text, -- element of text 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	CoordinateSystemId text  
) ;

CREATE TABLE GenericFeatureNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Name text, -- element of text 
	_PointList integer, -- index into table PointListNominal 
	FeatureDefinitionId text, -- element of text 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Location DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	ReferenceFeatureNominalId text[]  
) ;

CREATE TABLE GeometricCharacteristicActualBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text  
) ;

CREATE TABLE GeometricCharacteristicDefinitionBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	_DirectionFeature integer, -- index into table DirectionFeature 
	_CollectionPlane integer, -- index into table CollectionPlane 
	_IntersectionPlane integer, -- index into table IntersectionPlane 
	_OrientationPlane integer  -- index into table OrientationPlane 
) ;

CREATE TABLE GeometricCharacteristicItemBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE GeometricCharacteristicNominalBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer  -- index into table KeyCharacteristic 
) ;

CREATE TABLE GeometricCharacteristicStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_ValueStats integer, -- index into table StatsWithTolLinear 
	_MaxValueStats integer, -- index into table StatsLinear 
	_MinValueStats integer  -- index into table StatsLinear 
) ;

CREATE TABLE GeometryBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer  -- index into table Attributes 
) ;

CREATE TABLE GeometrySet (
	_index_  SERIAL PRIMARY KEY,
	_PointSet integer, -- index into table PointSet 
	_Curve12Set integer, -- index into table Curve12Set 
	_Curve13Set integer, -- index into table Curve13Set 
	_SurfaceSet integer, -- index into table SurfaceSet 
	_CurveMeshSet integer, -- index into table CurveMeshSet 
	_SurfaceMeshSet integer  -- index into table SurfaceMeshSet 
) ;

CREATE TABLE GreaterOrEqual (
	_index_  SERIAL PRIMARY KEY,
	__ArithmeticCharacteristicParameter integer[], -- index into table ArithmeticCharacteristicParameter 
	__ArithmeticConstant integer[], -- index into table ArithmeticConstant 
	__ArithmeticExpression integer[], -- index into table ArithmeticExpressionBase 
	__ArithmeticFeatureParameter integer[], -- index into table ArithmeticFeatureParameter 
	__DividedBy integer[], -- index into table DividedBy 
	__FeatureArea integer[], -- index into table FeatureArea 
	__FeatureLength integer[], -- index into table FeatureLength 
	__Minus integer[], -- index into table Minus 
	__Negate integer[], -- index into table Negate 
	__Plus integer[], -- index into table Plus 
	__Times integer[]  -- index into table Times 
) ;

CREATE TABLE GreaterThan (
	_index_  SERIAL PRIMARY KEY,
	__ArithmeticCharacteristicParameter integer[], -- index into table ArithmeticCharacteristicParameter 
	__ArithmeticConstant integer[], -- index into table ArithmeticConstant 
	__ArithmeticExpression integer[], -- index into table ArithmeticExpressionBase 
	__ArithmeticFeatureParameter integer[], -- index into table ArithmeticFeatureParameter 
	__DividedBy integer[], -- index into table DividedBy 
	__FeatureArea integer[], -- index into table FeatureArea 
	__FeatureLength integer[], -- index into table FeatureLength 
	__Minus integer[], -- index into table Minus 
	__Negate integer[], -- index into table Negate 
	__Plus integer[], -- index into table Plus 
	__Times integer[]  -- index into table Times 
) ;

CREATE TABLE HeightCharacteristicActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text  
) ;

CREATE TABLE HeightCharacteristicDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	Dimension text, -- element of text 
	_Tolerance integer, -- index into table LinearTolerance 
	NonTolerance text  -- element of text 
) ;

CREATE TABLE HeightCharacteristicItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE HeightCharacteristicNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	TargetValue text  
) ;

CREATE TABLE HeightCharacteristicStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_ValueStats integer, -- index into table StatsWithTolLinear 
	_MaxValueStats integer, -- index into table StatsLinear 
	_MinValueStats integer, -- index into table StatsLinear 
	_DeviationStats integer, -- index into table StatsWithTolLinear 
	_MaxDeviationStats integer, -- index into table StatsLinear 
	_MinDeviationStats integer  -- index into table StatsLinear 
) ;

CREATE TABLE ISO10360Test (
	_index_  SERIAL PRIMARY KEY,
	MaxErrorConstant text, 
	_LinearError integer, -- index into table LinearError 
	_LesserError integer  -- index into table LesserError 
) ;

CREATE TABLE IfThenArcRule (
	_index_  SERIAL PRIMARY KEY,
	name text NOT NULL,-- attribute
	_And_ integer, -- index into table And 
	_ArithmeticEqual integer, -- index into table ArithmeticEqual 
	_BooleanEqual integer, -- index into table BooleanEqual 
	_BooleanExpression integer, -- index into table BooleanExpressionBase 
	_CharacteristicIs integer, -- index into table CharacteristicIs 
	_ConstantIs integer, -- index into table ConstantIs 
	_FeatureIsDatum integer, -- index into table FeatureIsDatum 
	_FeatureIsInternal integer, -- index into table FeatureIsInternal 
	_GreaterOrEqual integer, -- index into table GreaterOrEqual 
	_GreaterThan integer, -- index into table GreaterThan 
	_LessOrEqual integer, -- index into table LessOrEqual 
	_LessThan integer, -- index into table LessThan 
	_Not_ integer, -- index into table Not 
	_Or_ integer, -- index into table Or 
	_SamplingRigorIs integer, -- index into table SamplingRigorIs 
	_ShapeClassIs integer, -- index into table ShapeClassIs 
	_ThenPoints integer, -- index into table ThenPoints 
	_ThenPointStrategy integer, -- index into table ArcPointSamplingStrategy 
	_ThenFittingAlgorithm integer  -- index into table NonFeatureOfSizeSubstituteFeatureAlgorithm 
) ;

CREATE TABLE IfThenCircleRule (
	_index_  SERIAL PRIMARY KEY,
	name text NOT NULL,-- attribute
	_And_ integer, -- index into table And 
	_ArithmeticEqual integer, -- index into table ArithmeticEqual 
	_BooleanEqual integer, -- index into table BooleanEqual 
	_BooleanExpression integer, -- index into table BooleanExpressionBase 
	_CharacteristicIs integer, -- index into table CharacteristicIs 
	_ConstantIs integer, -- index into table ConstantIs 
	_FeatureIsDatum integer, -- index into table FeatureIsDatum 
	_FeatureIsInternal integer, -- index into table FeatureIsInternal 
	_GreaterOrEqual integer, -- index into table GreaterOrEqual 
	_GreaterThan integer, -- index into table GreaterThan 
	_LessOrEqual integer, -- index into table LessOrEqual 
	_LessThan integer, -- index into table LessThan 
	_Not_ integer, -- index into table Not 
	_Or_ integer, -- index into table Or 
	_SamplingRigorIs integer, -- index into table SamplingRigorIs 
	_ShapeClassIs integer, -- index into table ShapeClassIs 
	_ThenPoints integer, -- index into table ThenPoints 
	_ThenPointStrategy integer, -- index into table CirclePointSamplingStrategy 
	_ThenFittingAlgorithm integer  -- index into table FeatureOfSizeSubstituteFeatureAlgorithm 
) ;

CREATE TABLE IfThenConeRule (
	_index_  SERIAL PRIMARY KEY,
	name text NOT NULL,-- attribute
	_And_ integer, -- index into table And 
	_ArithmeticEqual integer, -- index into table ArithmeticEqual 
	_BooleanEqual integer, -- index into table BooleanEqual 
	_BooleanExpression integer, -- index into table BooleanExpressionBase 
	_CharacteristicIs integer, -- index into table CharacteristicIs 
	_ConstantIs integer, -- index into table ConstantIs 
	_FeatureIsDatum integer, -- index into table FeatureIsDatum 
	_FeatureIsInternal integer, -- index into table FeatureIsInternal 
	_GreaterOrEqual integer, -- index into table GreaterOrEqual 
	_GreaterThan integer, -- index into table GreaterThan 
	_LessOrEqual integer, -- index into table LessOrEqual 
	_LessThan integer, -- index into table LessThan 
	_Not_ integer, -- index into table Not 
	_Or_ integer, -- index into table Or 
	_SamplingRigorIs integer, -- index into table SamplingRigorIs 
	_ShapeClassIs integer, -- index into table ShapeClassIs 
	_ThenPoints integer, -- index into table ThenPoints 
	_ThenPointStrategy integer, -- index into table ConePointSamplingStrategy 
	_ThenFittingAlgorithm integer  -- index into table FeatureOfSizeSubstituteFeatureAlgorithm 
) ;

CREATE TABLE IfThenConicalSegmentRule (
	_index_  SERIAL PRIMARY KEY,
	name text NOT NULL,-- attribute
	_And_ integer, -- index into table And 
	_ArithmeticEqual integer, -- index into table ArithmeticEqual 
	_BooleanEqual integer, -- index into table BooleanEqual 
	_BooleanExpression integer, -- index into table BooleanExpressionBase 
	_CharacteristicIs integer, -- index into table CharacteristicIs 
	_ConstantIs integer, -- index into table ConstantIs 
	_FeatureIsDatum integer, -- index into table FeatureIsDatum 
	_FeatureIsInternal integer, -- index into table FeatureIsInternal 
	_GreaterOrEqual integer, -- index into table GreaterOrEqual 
	_GreaterThan integer, -- index into table GreaterThan 
	_LessOrEqual integer, -- index into table LessOrEqual 
	_LessThan integer, -- index into table LessThan 
	_Not_ integer, -- index into table Not 
	_Or_ integer, -- index into table Or 
	_SamplingRigorIs integer, -- index into table SamplingRigorIs 
	_ShapeClassIs integer, -- index into table ShapeClassIs 
	_ThenPoints integer, -- index into table ThenPoints 
	_ThenPointStrategy integer, -- index into table ConicalSegmentPointSamplingStrategy 
	_ThenFittingAlgorithm integer  -- index into table NonFeatureOfSizeSubstituteFeatureAlgorithm 
) ;

CREATE TABLE IfThenCuboidRule (
	_index_  SERIAL PRIMARY KEY,
	name text NOT NULL,-- attribute
	_And_ integer, -- index into table And 
	_ArithmeticEqual integer, -- index into table ArithmeticEqual 
	_BooleanEqual integer, -- index into table BooleanEqual 
	_BooleanExpression integer, -- index into table BooleanExpressionBase 
	_CharacteristicIs integer, -- index into table CharacteristicIs 
	_ConstantIs integer, -- index into table ConstantIs 
	_FeatureIsDatum integer, -- index into table FeatureIsDatum 
	_FeatureIsInternal integer, -- index into table FeatureIsInternal 
	_GreaterOrEqual integer, -- index into table GreaterOrEqual 
	_GreaterThan integer, -- index into table GreaterThan 
	_LessOrEqual integer, -- index into table LessOrEqual 
	_LessThan integer, -- index into table LessThan 
	_Not_ integer, -- index into table Not 
	_Or_ integer, -- index into table Or 
	_SamplingRigorIs integer, -- index into table SamplingRigorIs 
	_ShapeClassIs integer, -- index into table ShapeClassIs 
	_ThenPoints integer, -- index into table ThenPoints 
	_ThenPointStrategy integer, -- index into table CuboidPointSamplingStrategy 
	_ThenFittingAlgorithm integer  -- index into table FeatureOfSizeSubstituteFeatureAlgorithm 
) ;

CREATE TABLE IfThenCurveRule (
	_index_  SERIAL PRIMARY KEY,
	name text NOT NULL,-- attribute
	_And_ integer, -- index into table And 
	_ArithmeticEqual integer, -- index into table ArithmeticEqual 
	_BooleanEqual integer, -- index into table BooleanEqual 
	_BooleanExpression integer, -- index into table BooleanExpressionBase 
	_CharacteristicIs integer, -- index into table CharacteristicIs 
	_ConstantIs integer, -- index into table ConstantIs 
	_FeatureIsDatum integer, -- index into table FeatureIsDatum 
	_FeatureIsInternal integer, -- index into table FeatureIsInternal 
	_GreaterOrEqual integer, -- index into table GreaterOrEqual 
	_GreaterThan integer, -- index into table GreaterThan 
	_LessOrEqual integer, -- index into table LessOrEqual 
	_LessThan integer, -- index into table LessThan 
	_Not_ integer, -- index into table Not 
	_Or_ integer, -- index into table Or 
	_SamplingRigorIs integer, -- index into table SamplingRigorIs 
	_ShapeClassIs integer, -- index into table ShapeClassIs 
	_ThenPoints integer  -- index into table ThenPoints 
) ;

CREATE TABLE IfThenCylinderRule (
	_index_  SERIAL PRIMARY KEY,
	name text NOT NULL,-- attribute
	_And_ integer, -- index into table And 
	_ArithmeticEqual integer, -- index into table ArithmeticEqual 
	_BooleanEqual integer, -- index into table BooleanEqual 
	_BooleanExpression integer, -- index into table BooleanExpressionBase 
	_CharacteristicIs integer, -- index into table CharacteristicIs 
	_ConstantIs integer, -- index into table ConstantIs 
	_FeatureIsDatum integer, -- index into table FeatureIsDatum 
	_FeatureIsInternal integer, -- index into table FeatureIsInternal 
	_GreaterOrEqual integer, -- index into table GreaterOrEqual 
	_GreaterThan integer, -- index into table GreaterThan 
	_LessOrEqual integer, -- index into table LessOrEqual 
	_LessThan integer, -- index into table LessThan 
	_Not_ integer, -- index into table Not 
	_Or_ integer, -- index into table Or 
	_SamplingRigorIs integer, -- index into table SamplingRigorIs 
	_ShapeClassIs integer, -- index into table ShapeClassIs 
	_ThenPoints integer, -- index into table ThenPoints 
	_ThenPointStrategy integer, -- index into table CylinderPointSamplingStrategy 
	_ThenFittingAlgorithm integer  -- index into table FeatureOfSizeSubstituteFeatureAlgorithm 
) ;

CREATE TABLE IfThenCylindricalSegmentRule (
	_index_  SERIAL PRIMARY KEY,
	name text NOT NULL,-- attribute
	_And_ integer, -- index into table And 
	_ArithmeticEqual integer, -- index into table ArithmeticEqual 
	_BooleanEqual integer, -- index into table BooleanEqual 
	_BooleanExpression integer, -- index into table BooleanExpressionBase 
	_CharacteristicIs integer, -- index into table CharacteristicIs 
	_ConstantIs integer, -- index into table ConstantIs 
	_FeatureIsDatum integer, -- index into table FeatureIsDatum 
	_FeatureIsInternal integer, -- index into table FeatureIsInternal 
	_GreaterOrEqual integer, -- index into table GreaterOrEqual 
	_GreaterThan integer, -- index into table GreaterThan 
	_LessOrEqual integer, -- index into table LessOrEqual 
	_LessThan integer, -- index into table LessThan 
	_Not_ integer, -- index into table Not 
	_Or_ integer, -- index into table Or 
	_SamplingRigorIs integer, -- index into table SamplingRigorIs 
	_ShapeClassIs integer, -- index into table ShapeClassIs 
	_ThenPoints integer, -- index into table ThenPoints 
	_ThenPointStrategy integer, -- index into table CylindricalSegmentPointSamplingStrategy 
	_ThenFittingAlgorithm integer  -- index into table NonFeatureOfSizeSubstituteFeatureAlgorithm 
) ;

CREATE TABLE IfThenEllipseRule (
	_index_  SERIAL PRIMARY KEY,
	name text NOT NULL,-- attribute
	_And_ integer, -- index into table And 
	_ArithmeticEqual integer, -- index into table ArithmeticEqual 
	_BooleanEqual integer, -- index into table BooleanEqual 
	_BooleanExpression integer, -- index into table BooleanExpressionBase 
	_CharacteristicIs integer, -- index into table CharacteristicIs 
	_ConstantIs integer, -- index into table ConstantIs 
	_FeatureIsDatum integer, -- index into table FeatureIsDatum 
	_FeatureIsInternal integer, -- index into table FeatureIsInternal 
	_GreaterOrEqual integer, -- index into table GreaterOrEqual 
	_GreaterThan integer, -- index into table GreaterThan 
	_LessOrEqual integer, -- index into table LessOrEqual 
	_LessThan integer, -- index into table LessThan 
	_Not_ integer, -- index into table Not 
	_Or_ integer, -- index into table Or 
	_SamplingRigorIs integer, -- index into table SamplingRigorIs 
	_ShapeClassIs integer, -- index into table ShapeClassIs 
	_ThenPoints integer, -- index into table ThenPoints 
	_ThenPointStrategy integer, -- index into table EllipsePointSamplingStrategy 
	_ThenFittingAlgorithm integer  -- index into table FeatureOfSizeSubstituteFeatureAlgorithm 
) ;

CREATE TABLE IfThenElongatedCylinderRule (
	_index_  SERIAL PRIMARY KEY,
	name text NOT NULL,-- attribute
	_And_ integer, -- index into table And 
	_ArithmeticEqual integer, -- index into table ArithmeticEqual 
	_BooleanEqual integer, -- index into table BooleanEqual 
	_BooleanExpression integer, -- index into table BooleanExpressionBase 
	_CharacteristicIs integer, -- index into table CharacteristicIs 
	_ConstantIs integer, -- index into table ConstantIs 
	_FeatureIsDatum integer, -- index into table FeatureIsDatum 
	_FeatureIsInternal integer, -- index into table FeatureIsInternal 
	_GreaterOrEqual integer, -- index into table GreaterOrEqual 
	_GreaterThan integer, -- index into table GreaterThan 
	_LessOrEqual integer, -- index into table LessOrEqual 
	_LessThan integer, -- index into table LessThan 
	_Not_ integer, -- index into table Not 
	_Or_ integer, -- index into table Or 
	_SamplingRigorIs integer, -- index into table SamplingRigorIs 
	_ShapeClassIs integer, -- index into table ShapeClassIs 
	_ThenPoints integer, -- index into table ThenPoints 
	_ThenPointStrategy integer, -- index into table ElongatedCylinderPointSamplingStrategy 
	_ThenFittingAlgorithm integer  -- index into table FeatureOfSizeSubstituteFeatureAlgorithm 
) ;

CREATE TABLE IfThenElseFeatureRules (
	_index_  SERIAL PRIMARY KEY,
	__IfThenArcRule integer[], -- index into table IfThenArcRule 
	__IfThenCircleRule integer[], -- index into table IfThenCircleRule 
	__IfThenConeRule integer[], -- index into table IfThenConeRule 
	__IfThenConicalSegmentRule integer[], -- index into table IfThenConicalSegmentRule 
	__IfThenCuboidRule integer[], -- index into table IfThenCuboidRule 
	__IfThenCurveRule integer[], -- index into table IfThenCurveRule 
	__IfThenCylinderRule integer[], -- index into table IfThenCylinderRule 
	__IfThenCylindricalSegmentRule integer[], -- index into table IfThenCylindricalSegmentRule 
	__IfThenEllipseRule integer[], -- index into table IfThenEllipseRule 
	__IfThenElongatedCylinderRule integer[], -- index into table IfThenElongatedCylinderRule 
	__IfThenExtrudedCrossSectionRule integer[], -- index into table IfThenExtrudedCrossSectionRule 
	__IfThenFeatureRule integer[], -- index into table IfThenFeatureRule 
	__IfThenLineRule integer[], -- index into table IfThenLineRule 
	__IfThenOppositeLinesRule integer[], -- index into table IfThenOppositeLinesRule 
	__IfThenOppositePlanesRule integer[], -- index into table IfThenOppositePlanesRule 
	__IfThenPlaneRule integer[], -- index into table IfThenPlaneRule 
	__IfThenPointDefinedCurveRule integer[], -- index into table IfThenPointDefinedCurveRule 
	__IfThenPointDefinedSurfaceRule integer[], -- index into table IfThenPointDefinedSurfaceRule 
	__IfThenPointRule integer[], -- index into table IfThenPointRule 
	__IfThenSphereRule integer[], -- index into table IfThenSphereRule 
	__IfThenSphericalSegmentRule integer[], -- index into table IfThenSphericalSegmentRule 
	__IfThenSurfaceOfRevolutionRule integer[], -- index into table IfThenSurfaceOfRevolutionRule 
	__IfThenSurfaceRule integer[], -- index into table IfThenSurfaceRule 
	__IfThenToroidalSegmentRule integer[], -- index into table IfThenToroidalSegmentRule 
	__IfThenTorusRule integer[], -- index into table IfThenTorusRule 
	_Else integer  -- index into table ElseRule 
) ;

CREATE TABLE IfThenExtrudedCrossSectionRule (
	_index_  SERIAL PRIMARY KEY,
	name text NOT NULL,-- attribute
	_And_ integer, -- index into table And 
	_ArithmeticEqual integer, -- index into table ArithmeticEqual 
	_BooleanEqual integer, -- index into table BooleanEqual 
	_BooleanExpression integer, -- index into table BooleanExpressionBase 
	_CharacteristicIs integer, -- index into table CharacteristicIs 
	_ConstantIs integer, -- index into table ConstantIs 
	_FeatureIsDatum integer, -- index into table FeatureIsDatum 
	_FeatureIsInternal integer, -- index into table FeatureIsInternal 
	_GreaterOrEqual integer, -- index into table GreaterOrEqual 
	_GreaterThan integer, -- index into table GreaterThan 
	_LessOrEqual integer, -- index into table LessOrEqual 
	_LessThan integer, -- index into table LessThan 
	_Not_ integer, -- index into table Not 
	_Or_ integer, -- index into table Or 
	_SamplingRigorIs integer, -- index into table SamplingRigorIs 
	_ShapeClassIs integer, -- index into table ShapeClassIs 
	_ThenPoints integer, -- index into table ThenPoints 
	_ThenPointStrategy integer, -- index into table ExtrudedCrossSectionPointSamplingStrategy 
	_ThenFittingAlgorithm integer  -- index into table CurveSubstituteFeatureAlgorithm 
) ;

CREATE TABLE IfThenFeatureRule (
	_index_  SERIAL PRIMARY KEY,
	name text NOT NULL,-- attribute
	_And_ integer, -- index into table And 
	_ArithmeticEqual integer, -- index into table ArithmeticEqual 
	_BooleanEqual integer, -- index into table BooleanEqual 
	_BooleanExpression integer, -- index into table BooleanExpressionBase 
	_CharacteristicIs integer, -- index into table CharacteristicIs 
	_ConstantIs integer, -- index into table ConstantIs 
	_FeatureIsDatum integer, -- index into table FeatureIsDatum 
	_FeatureIsInternal integer, -- index into table FeatureIsInternal 
	_GreaterOrEqual integer, -- index into table GreaterOrEqual 
	_GreaterThan integer, -- index into table GreaterThan 
	_LessOrEqual integer, -- index into table LessOrEqual 
	_LessThan integer, -- index into table LessThan 
	_Not_ integer, -- index into table Not 
	_Or_ integer, -- index into table Or 
	_SamplingRigorIs integer, -- index into table SamplingRigorIs 
	_ShapeClassIs integer, -- index into table ShapeClassIs 
	_ThenPoints integer  -- index into table ThenPoints 
) ;

CREATE TABLE IfThenLineRule (
	_index_  SERIAL PRIMARY KEY,
	name text NOT NULL,-- attribute
	_And_ integer, -- index into table And 
	_ArithmeticEqual integer, -- index into table ArithmeticEqual 
	_BooleanEqual integer, -- index into table BooleanEqual 
	_BooleanExpression integer, -- index into table BooleanExpressionBase 
	_CharacteristicIs integer, -- index into table CharacteristicIs 
	_ConstantIs integer, -- index into table ConstantIs 
	_FeatureIsDatum integer, -- index into table FeatureIsDatum 
	_FeatureIsInternal integer, -- index into table FeatureIsInternal 
	_GreaterOrEqual integer, -- index into table GreaterOrEqual 
	_GreaterThan integer, -- index into table GreaterThan 
	_LessOrEqual integer, -- index into table LessOrEqual 
	_LessThan integer, -- index into table LessThan 
	_Not_ integer, -- index into table Not 
	_Or_ integer, -- index into table Or 
	_SamplingRigorIs integer, -- index into table SamplingRigorIs 
	_ShapeClassIs integer, -- index into table ShapeClassIs 
	_ThenPoints integer, -- index into table ThenPoints 
	_ThenPointStrategy integer, -- index into table LinePointSamplingStrategy 
	_ThenFittingAlgorithm integer  -- index into table NonFeatureOfSizeSubstituteFeatureAlgorithm 
) ;

CREATE TABLE IfThenOppositeLinesRule (
	_index_  SERIAL PRIMARY KEY,
	name text NOT NULL,-- attribute
	_And_ integer, -- index into table And 
	_ArithmeticEqual integer, -- index into table ArithmeticEqual 
	_BooleanEqual integer, -- index into table BooleanEqual 
	_BooleanExpression integer, -- index into table BooleanExpressionBase 
	_CharacteristicIs integer, -- index into table CharacteristicIs 
	_ConstantIs integer, -- index into table ConstantIs 
	_FeatureIsDatum integer, -- index into table FeatureIsDatum 
	_FeatureIsInternal integer, -- index into table FeatureIsInternal 
	_GreaterOrEqual integer, -- index into table GreaterOrEqual 
	_GreaterThan integer, -- index into table GreaterThan 
	_LessOrEqual integer, -- index into table LessOrEqual 
	_LessThan integer, -- index into table LessThan 
	_Not_ integer, -- index into table Not 
	_Or_ integer, -- index into table Or 
	_SamplingRigorIs integer, -- index into table SamplingRigorIs 
	_ShapeClassIs integer, -- index into table ShapeClassIs 
	_ThenPoints integer, -- index into table ThenPoints 
	_ThenPointStrategy integer, -- index into table OppositeLinesPointSamplingStrategy 
	_ThenFittingAlgorithm integer  -- index into table FeatureOfSizeSubstituteFeatureAlgorithm 
) ;

CREATE TABLE IfThenOppositePlanesRule (
	_index_  SERIAL PRIMARY KEY,
	name text NOT NULL,-- attribute
	_And_ integer, -- index into table And 
	_ArithmeticEqual integer, -- index into table ArithmeticEqual 
	_BooleanEqual integer, -- index into table BooleanEqual 
	_BooleanExpression integer, -- index into table BooleanExpressionBase 
	_CharacteristicIs integer, -- index into table CharacteristicIs 
	_ConstantIs integer, -- index into table ConstantIs 
	_FeatureIsDatum integer, -- index into table FeatureIsDatum 
	_FeatureIsInternal integer, -- index into table FeatureIsInternal 
	_GreaterOrEqual integer, -- index into table GreaterOrEqual 
	_GreaterThan integer, -- index into table GreaterThan 
	_LessOrEqual integer, -- index into table LessOrEqual 
	_LessThan integer, -- index into table LessThan 
	_Not_ integer, -- index into table Not 
	_Or_ integer, -- index into table Or 
	_SamplingRigorIs integer, -- index into table SamplingRigorIs 
	_ShapeClassIs integer, -- index into table ShapeClassIs 
	_ThenPoints integer, -- index into table ThenPoints 
	_ThenPointStrategy integer, -- index into table OppositePlanesPointSamplingStrategy 
	_ThenFittingAlgorithm integer  -- index into table FeatureOfSizeSubstituteFeatureAlgorithm 
) ;

CREATE TABLE IfThenPlaneRule (
	_index_  SERIAL PRIMARY KEY,
	name text NOT NULL,-- attribute
	_And_ integer, -- index into table And 
	_ArithmeticEqual integer, -- index into table ArithmeticEqual 
	_BooleanEqual integer, -- index into table BooleanEqual 
	_BooleanExpression integer, -- index into table BooleanExpressionBase 
	_CharacteristicIs integer, -- index into table CharacteristicIs 
	_ConstantIs integer, -- index into table ConstantIs 
	_FeatureIsDatum integer, -- index into table FeatureIsDatum 
	_FeatureIsInternal integer, -- index into table FeatureIsInternal 
	_GreaterOrEqual integer, -- index into table GreaterOrEqual 
	_GreaterThan integer, -- index into table GreaterThan 
	_LessOrEqual integer, -- index into table LessOrEqual 
	_LessThan integer, -- index into table LessThan 
	_Not_ integer, -- index into table Not 
	_Or_ integer, -- index into table Or 
	_SamplingRigorIs integer, -- index into table SamplingRigorIs 
	_ShapeClassIs integer, -- index into table ShapeClassIs 
	_ThenPoints integer, -- index into table ThenPoints 
	_ThenPointStrategy integer, -- index into table PlanePointSamplingStrategy 
	_ThenFittingAlgorithm integer  -- index into table NonFeatureOfSizeSubstituteFeatureAlgorithm 
) ;

CREATE TABLE IfThenPointDefinedCurveRule (
	_index_  SERIAL PRIMARY KEY,
	name text NOT NULL,-- attribute
	_And_ integer, -- index into table And 
	_ArithmeticEqual integer, -- index into table ArithmeticEqual 
	_BooleanEqual integer, -- index into table BooleanEqual 
	_BooleanExpression integer, -- index into table BooleanExpressionBase 
	_CharacteristicIs integer, -- index into table CharacteristicIs 
	_ConstantIs integer, -- index into table ConstantIs 
	_FeatureIsDatum integer, -- index into table FeatureIsDatum 
	_FeatureIsInternal integer, -- index into table FeatureIsInternal 
	_GreaterOrEqual integer, -- index into table GreaterOrEqual 
	_GreaterThan integer, -- index into table GreaterThan 
	_LessOrEqual integer, -- index into table LessOrEqual 
	_LessThan integer, -- index into table LessThan 
	_Not_ integer, -- index into table Not 
	_Or_ integer, -- index into table Or 
	_SamplingRigorIs integer, -- index into table SamplingRigorIs 
	_ShapeClassIs integer, -- index into table ShapeClassIs 
	_ThenPoints integer, -- index into table ThenPoints 
	_ThenPointStrategy integer, -- index into table PointDefinedCurvePointSamplingStrategy 
	_ThenFittingAlgorithm integer  -- index into table CurveSubstituteFeatureAlgorithm 
) ;

CREATE TABLE IfThenPointDefinedSurfaceRule (
	_index_  SERIAL PRIMARY KEY,
	name text NOT NULL,-- attribute
	_And_ integer, -- index into table And 
	_ArithmeticEqual integer, -- index into table ArithmeticEqual 
	_BooleanEqual integer, -- index into table BooleanEqual 
	_BooleanExpression integer, -- index into table BooleanExpressionBase 
	_CharacteristicIs integer, -- index into table CharacteristicIs 
	_ConstantIs integer, -- index into table ConstantIs 
	_FeatureIsDatum integer, -- index into table FeatureIsDatum 
	_FeatureIsInternal integer, -- index into table FeatureIsInternal 
	_GreaterOrEqual integer, -- index into table GreaterOrEqual 
	_GreaterThan integer, -- index into table GreaterThan 
	_LessOrEqual integer, -- index into table LessOrEqual 
	_LessThan integer, -- index into table LessThan 
	_Not_ integer, -- index into table Not 
	_Or_ integer, -- index into table Or 
	_SamplingRigorIs integer, -- index into table SamplingRigorIs 
	_ShapeClassIs integer, -- index into table ShapeClassIs 
	_ThenPoints integer, -- index into table ThenPoints 
	_ThenPointStrategy integer, -- index into table PointDefinedSurfacePointSamplingStrategy 
	_ThenFittingAlgorithm integer  -- index into table SurfaceSubstituteFeatureAlgorithm 
) ;

CREATE TABLE IfThenPointRule (
	_index_  SERIAL PRIMARY KEY,
	name text NOT NULL,-- attribute
	_And_ integer, -- index into table And 
	_ArithmeticEqual integer, -- index into table ArithmeticEqual 
	_BooleanEqual integer, -- index into table BooleanEqual 
	_BooleanExpression integer, -- index into table BooleanExpressionBase 
	_CharacteristicIs integer, -- index into table CharacteristicIs 
	_ConstantIs integer, -- index into table ConstantIs 
	_FeatureIsDatum integer, -- index into table FeatureIsDatum 
	_FeatureIsInternal integer, -- index into table FeatureIsInternal 
	_GreaterOrEqual integer, -- index into table GreaterOrEqual 
	_GreaterThan integer, -- index into table GreaterThan 
	_LessOrEqual integer, -- index into table LessOrEqual 
	_LessThan integer, -- index into table LessThan 
	_Not_ integer, -- index into table Not 
	_Or_ integer, -- index into table Or 
	_SamplingRigorIs integer, -- index into table SamplingRigorIs 
	_ShapeClassIs integer, -- index into table ShapeClassIs 
	_ThenPoints integer, -- index into table ThenPoints 
	_ThenPointStrategy integer  -- index into table PointPointSamplingStrategy 
) ;

CREATE TABLE IfThenSphereRule (
	_index_  SERIAL PRIMARY KEY,
	name text NOT NULL,-- attribute
	_And_ integer, -- index into table And 
	_ArithmeticEqual integer, -- index into table ArithmeticEqual 
	_BooleanEqual integer, -- index into table BooleanEqual 
	_BooleanExpression integer, -- index into table BooleanExpressionBase 
	_CharacteristicIs integer, -- index into table CharacteristicIs 
	_ConstantIs integer, -- index into table ConstantIs 
	_FeatureIsDatum integer, -- index into table FeatureIsDatum 
	_FeatureIsInternal integer, -- index into table FeatureIsInternal 
	_GreaterOrEqual integer, -- index into table GreaterOrEqual 
	_GreaterThan integer, -- index into table GreaterThan 
	_LessOrEqual integer, -- index into table LessOrEqual 
	_LessThan integer, -- index into table LessThan 
	_Not_ integer, -- index into table Not 
	_Or_ integer, -- index into table Or 
	_SamplingRigorIs integer, -- index into table SamplingRigorIs 
	_ShapeClassIs integer, -- index into table ShapeClassIs 
	_ThenPoints integer, -- index into table ThenPoints 
	_ThenPointStrategy integer, -- index into table SpherePointSamplingStrategy 
	_ThenFittingAlgorithm integer  -- index into table FeatureOfSizeSubstituteFeatureAlgorithm 
) ;

CREATE TABLE IfThenSphericalSegmentRule (
	_index_  SERIAL PRIMARY KEY,
	name text NOT NULL,-- attribute
	_And_ integer, -- index into table And 
	_ArithmeticEqual integer, -- index into table ArithmeticEqual 
	_BooleanEqual integer, -- index into table BooleanEqual 
	_BooleanExpression integer, -- index into table BooleanExpressionBase 
	_CharacteristicIs integer, -- index into table CharacteristicIs 
	_ConstantIs integer, -- index into table ConstantIs 
	_FeatureIsDatum integer, -- index into table FeatureIsDatum 
	_FeatureIsInternal integer, -- index into table FeatureIsInternal 
	_GreaterOrEqual integer, -- index into table GreaterOrEqual 
	_GreaterThan integer, -- index into table GreaterThan 
	_LessOrEqual integer, -- index into table LessOrEqual 
	_LessThan integer, -- index into table LessThan 
	_Not_ integer, -- index into table Not 
	_Or_ integer, -- index into table Or 
	_SamplingRigorIs integer, -- index into table SamplingRigorIs 
	_ShapeClassIs integer, -- index into table ShapeClassIs 
	_ThenPoints integer, -- index into table ThenPoints 
	_ThenPointStrategy integer, -- index into table SphericalSegmentPointSamplingStrategy 
	_ThenFittingAlgorithm integer  -- index into table NonFeatureOfSizeSubstituteFeatureAlgorithm 
) ;

CREATE TABLE IfThenSurfaceOfRevolutionRule (
	_index_  SERIAL PRIMARY KEY,
	name text NOT NULL,-- attribute
	_And_ integer, -- index into table And 
	_ArithmeticEqual integer, -- index into table ArithmeticEqual 
	_BooleanEqual integer, -- index into table BooleanEqual 
	_BooleanExpression integer, -- index into table BooleanExpressionBase 
	_CharacteristicIs integer, -- index into table CharacteristicIs 
	_ConstantIs integer, -- index into table ConstantIs 
	_FeatureIsDatum integer, -- index into table FeatureIsDatum 
	_FeatureIsInternal integer, -- index into table FeatureIsInternal 
	_GreaterOrEqual integer, -- index into table GreaterOrEqual 
	_GreaterThan integer, -- index into table GreaterThan 
	_LessOrEqual integer, -- index into table LessOrEqual 
	_LessThan integer, -- index into table LessThan 
	_Not_ integer, -- index into table Not 
	_Or_ integer, -- index into table Or 
	_SamplingRigorIs integer, -- index into table SamplingRigorIs 
	_ShapeClassIs integer, -- index into table ShapeClassIs 
	_ThenPoints integer, -- index into table ThenPoints 
	_ThenPointStrategy integer, -- index into table SurfaceOfRevolutionPointSamplingStrategy 
	_ThenFittingAlgorithm integer  -- index into table CurveSubstituteFeatureAlgorithm 
) ;

CREATE TABLE IfThenSurfaceRule (
	_index_  SERIAL PRIMARY KEY,
	name text NOT NULL,-- attribute
	_And_ integer, -- index into table And 
	_ArithmeticEqual integer, -- index into table ArithmeticEqual 
	_BooleanEqual integer, -- index into table BooleanEqual 
	_BooleanExpression integer, -- index into table BooleanExpressionBase 
	_CharacteristicIs integer, -- index into table CharacteristicIs 
	_ConstantIs integer, -- index into table ConstantIs 
	_FeatureIsDatum integer, -- index into table FeatureIsDatum 
	_FeatureIsInternal integer, -- index into table FeatureIsInternal 
	_GreaterOrEqual integer, -- index into table GreaterOrEqual 
	_GreaterThan integer, -- index into table GreaterThan 
	_LessOrEqual integer, -- index into table LessOrEqual 
	_LessThan integer, -- index into table LessThan 
	_Not_ integer, -- index into table Not 
	_Or_ integer, -- index into table Or 
	_SamplingRigorIs integer, -- index into table SamplingRigorIs 
	_ShapeClassIs integer, -- index into table ShapeClassIs 
	_ThenPoints integer  -- index into table ThenPoints 
) ;

CREATE TABLE IfThenToroidalSegmentRule (
	_index_  SERIAL PRIMARY KEY,
	name text NOT NULL,-- attribute
	_And_ integer, -- index into table And 
	_ArithmeticEqual integer, -- index into table ArithmeticEqual 
	_BooleanEqual integer, -- index into table BooleanEqual 
	_BooleanExpression integer, -- index into table BooleanExpressionBase 
	_CharacteristicIs integer, -- index into table CharacteristicIs 
	_ConstantIs integer, -- index into table ConstantIs 
	_FeatureIsDatum integer, -- index into table FeatureIsDatum 
	_FeatureIsInternal integer, -- index into table FeatureIsInternal 
	_GreaterOrEqual integer, -- index into table GreaterOrEqual 
	_GreaterThan integer, -- index into table GreaterThan 
	_LessOrEqual integer, -- index into table LessOrEqual 
	_LessThan integer, -- index into table LessThan 
	_Not_ integer, -- index into table Not 
	_Or_ integer, -- index into table Or 
	_SamplingRigorIs integer, -- index into table SamplingRigorIs 
	_ShapeClassIs integer, -- index into table ShapeClassIs 
	_ThenPoints integer, -- index into table ThenPoints 
	_ThenPointStrategy integer, -- index into table ToroidalSegmentPointSamplingStrategy 
	_ThenFittingAlgorithm integer  -- index into table NonFeatureOfSizeSubstituteFeatureAlgorithm 
) ;

CREATE TABLE IfThenTorusRule (
	_index_  SERIAL PRIMARY KEY,
	name text NOT NULL,-- attribute
	_And_ integer, -- index into table And 
	_ArithmeticEqual integer, -- index into table ArithmeticEqual 
	_BooleanEqual integer, -- index into table BooleanEqual 
	_BooleanExpression integer, -- index into table BooleanExpressionBase 
	_CharacteristicIs integer, -- index into table CharacteristicIs 
	_ConstantIs integer, -- index into table ConstantIs 
	_FeatureIsDatum integer, -- index into table FeatureIsDatum 
	_FeatureIsInternal integer, -- index into table FeatureIsInternal 
	_GreaterOrEqual integer, -- index into table GreaterOrEqual 
	_GreaterThan integer, -- index into table GreaterThan 
	_LessOrEqual integer, -- index into table LessOrEqual 
	_LessThan integer, -- index into table LessThan 
	_Not_ integer, -- index into table Not 
	_Or_ integer, -- index into table Or 
	_SamplingRigorIs integer, -- index into table SamplingRigorIs 
	_ShapeClassIs integer, -- index into table ShapeClassIs 
	_ThenPoints integer, -- index into table ThenPoints 
	_ThenPointStrategy integer, -- index into table TorusPointSamplingStrategy 
	_ThenFittingAlgorithm integer  -- index into table FeatureOfSizeSubstituteFeatureAlgorithm 
) ;

CREATE TABLE ImageInstruction (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_ExternalFile integer  -- index into table ExternalFileReference 
) ;

CREATE TABLE InspectionProgram (
	_index_  SERIAL PRIMARY KEY,
	_File integer, -- index into table File 
	Description text, -- element of text 
	_FormalStandard integer, -- index into table FormalStandard 
	_Author integer  -- index into table Employee 
) ;

CREATE TABLE InspectionSoftwareItems (
	_index_  SERIAL PRIMARY KEY,
	__InspectionProgramGenerationSoftware integer[], -- index into table Software 
	__InspectionProgramExecutionSoftware integer[], -- index into table Software 
	__AnalysisSoftware integer[], -- index into table Software 
	__CADSoftware integer[], -- index into table Software 
	__DMESoftware integer[]  -- index into table Software 
) ;

CREATE TABLE InspectionStatus (
	_index_  SERIAL PRIMARY KEY,
	InspectionStatusEnum text, -- element of text 
	OtherInspectionStatus text  -- element of text 
) ;

CREATE TABLE InspectionTraceability (
	_index_  SERIAL PRIMARY KEY,
	_InspectingOrganization integer, -- index into table Organization 
	_CustomerOrganization integer, -- index into table CustomerOrganization 
	SupplierCode text, -- element of text 
	PurchaseOrderNumber text, -- element of text 
	OrderNumber text, -- element of text 
	ReportNumber text, -- element of text 
	InspectionScope text, -- element of text 
	InspectionMode text, -- element of text 
	_PartialInspection integer, -- index into table PartialInspection 
	_NotableEvents integer, -- index into table NotableEvents 
	_NotedEvents integer, -- index into table NotedEvents 
	InspectionStart TIMESTAMP, -- element of TIMESTAMP 
	InspectionEnd TIMESTAMP, -- element of TIMESTAMP 
	_InspectionSoftwareItems integer, -- index into table InspectionSoftwareItems 
	_InspectionProgram integer, -- index into table InspectionProgram 
	_InspectionOperator integer, -- index into table Employee 
	_ReportPreparer integer, -- index into table Employee 
	ReportPreparationDate TIMESTAMP, -- element of TIMESTAMP 
	Report text, -- element of text 
	_SecurityClassification integer, -- index into table SecurityClassification 
	_PlantLocation integer, -- index into table Location 
	_ReferencedQIFPlanInstance integer, -- index into table QPIdFullReference 
	ReferencedQIFPlan text, -- element of text 
	_Errors integer  -- index into table Errors 
) ;

CREATE TABLE InternalComponent (
	_index_  SERIAL PRIMARY KEY,
	color text NOT NULL,-- attribute
	transparency text NOT NULL,-- attribute
	hidden text NOT NULL,-- attribute
	size text NOT NULL,-- attribute
	label text NOT NULL -- attribute
) ;

CREATE TABLE InternalHeader (
	_index_  SERIAL PRIMARY KEY,
	Name text, -- element of text 
	_File integer, -- index into table FileInternal 
	_Application integer, -- index into table Application 
	_Author integer, -- index into table Author 
	_ApplicationSource integer, -- index into table Application 
	Description text, -- element of text 
	_Units integer, -- index into table OtherUnits 
	ScaleCoefficient DOUBLE PRECISION, -- element of DOUBLE PRECISION 
	ModelTolerance DOUBLE PRECISION, -- element of DOUBLE PRECISION 
	MassPropertyTolerance DOUBLE PRECISION  -- element of DOUBLE PRECISION 
) ;

CREATE TABLE InternalPartAssembly (
	_index_  SERIAL PRIMARY KEY,
	color text NOT NULL,-- attribute
	transparency text NOT NULL,-- attribute
	hidden text NOT NULL,-- attribute
	size text NOT NULL,-- attribute
	originMassProperty text,-- attribute
	label text NOT NULL,-- attribute
	_Header integer, -- index into table InternalHeader 
	_BodyIds integer, -- index into table ArrayReference 
	_CoordinateSystemIds integer, -- index into table ArrayReference 
	_AuxiliaryIds integer, -- index into table ArrayReference 
	_ViewIds integer, -- index into table ArrayReference 
	_PointCloudIds integer  -- index into table ArrayReference 
) ;

CREATE TABLE IntersectionPlane (
	_index_  SERIAL PRIMARY KEY,
	IntersectionPlaneEnum text, -- element of text 
	DatumDefinitionId text  
) ;

CREATE TABLE KeyCharacteristic (
	_index_  SERIAL PRIMARY KEY,
	Designator text, -- element of text 
	Criticality text  -- element of text 
) ;

CREATE TABLE LatitudeLongitudeSweep (
	_index_  SERIAL PRIMARY KEY,
	DirMeridianPrime DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	DomainLatitude text, 
	DomainLongitude text  
) ;

CREATE TABLE LayerSet (
	_index_  SERIAL PRIMARY KEY,
	N text,-- attribute
	__Layer integer[]  -- index into table Layer 
) ;

CREATE TABLE Layer (
	_index_  SERIAL PRIMARY KEY,
	applyColor text NOT NULL,-- attribute
	index text,-- attribute
	color text NOT NULL,-- attribute
	transparency text NOT NULL,-- attribute
	hidden text NOT NULL,-- attribute
	size text NOT NULL,-- attribute
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	_ElementIds integer  -- index into table ArrayReferenceFull 
) ;

CREATE TABLE LeaderCircular (
	_index_  SERIAL PRIMARY KEY,
	StartPoint DOUBLE PRECISION[2], -- list of DOUBLE PRECISION 
	EndPoint DOUBLE PRECISION[2], -- list of DOUBLE PRECISION 
	HeadForm text, -- element of text 
	HeadHeight DOUBLE PRECISION, -- element of DOUBLE PRECISION 
	Center DOUBLE PRECISION[2]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE LeaderDoubleHeadCircular (
	_index_  SERIAL PRIMARY KEY,
	StartPoint DOUBLE PRECISION[2], -- list of DOUBLE PRECISION 
	EndPoint DOUBLE PRECISION[2], -- list of DOUBLE PRECISION 
	HeadForm text, -- element of text 
	HeadHeight DOUBLE PRECISION, -- element of DOUBLE PRECISION 
	HeadForm2 text, -- element of text 
	PointConnection DOUBLE PRECISION[2], -- list of DOUBLE PRECISION 
	Center DOUBLE PRECISION[2]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE LeaderDoubleHeadExtend (
	_index_  SERIAL PRIMARY KEY,
	StartPoint DOUBLE PRECISION[2], -- list of DOUBLE PRECISION 
	EndPoint DOUBLE PRECISION[2], -- list of DOUBLE PRECISION 
	HeadForm text, -- element of text 
	HeadHeight DOUBLE PRECISION, -- element of DOUBLE PRECISION 
	HeadForm2 text, -- element of text 
	PointConnection DOUBLE PRECISION[2], -- list of DOUBLE PRECISION 
	PointExtension DOUBLE PRECISION[2]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE LeaderDoubleHead (
	_index_  SERIAL PRIMARY KEY,
	StartPoint DOUBLE PRECISION[2], -- list of DOUBLE PRECISION 
	EndPoint DOUBLE PRECISION[2], -- list of DOUBLE PRECISION 
	HeadForm text, -- element of text 
	HeadHeight DOUBLE PRECISION, -- element of DOUBLE PRECISION 
	HeadForm2 text, -- element of text 
	PointConnection DOUBLE PRECISION[2]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE LeaderExtend (
	_index_  SERIAL PRIMARY KEY,
	StartPoint DOUBLE PRECISION[2], -- list of DOUBLE PRECISION 
	EndPoint DOUBLE PRECISION[2], -- list of DOUBLE PRECISION 
	HeadForm text, -- element of text 
	HeadHeight DOUBLE PRECISION, -- element of DOUBLE PRECISION 
	PointExtension DOUBLE PRECISION[2]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE Leader (
	_index_  SERIAL PRIMARY KEY,
	StartPoint DOUBLE PRECISION[2], -- list of DOUBLE PRECISION 
	EndPoint DOUBLE PRECISION[2], -- list of DOUBLE PRECISION 
	HeadForm text, -- element of text 
	HeadHeight DOUBLE PRECISION  -- element of DOUBLE PRECISION 
) ;

CREATE TABLE LengthCharacteristicActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text  
) ;

CREATE TABLE LengthCharacteristicDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	Dimension text, -- element of text 
	_Tolerance integer, -- index into table LinearTolerance 
	NonTolerance text  -- element of text 
) ;

CREATE TABLE LengthCharacteristicItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE LengthCharacteristicNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	TargetValue text  
) ;

CREATE TABLE LengthCharacteristicStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_ValueStats integer, -- index into table StatsWithTolLinear 
	_MaxValueStats integer, -- index into table StatsLinear 
	_MinValueStats integer, -- index into table StatsLinear 
	_DeviationStats integer, -- index into table StatsWithTolLinear 
	_MaxDeviationStats integer, -- index into table StatsLinear 
	_MinDeviationStats integer  -- index into table StatsLinear 
) ;

CREATE TABLE LengthFunctionDiscrete (
	_index_  SERIAL PRIMARY KEY,
	N text,-- attribute
	DomainValues DOUBLE PRECISION, -- element of DOUBLE PRECISION 
	RangeValues DOUBLE PRECISION, -- element of DOUBLE PRECISION 
	DomainLinearUnit text, -- element of text 
	RangeLinearUnit text  -- element of text 
) ;

CREATE TABLE LessOrEqual (
	_index_  SERIAL PRIMARY KEY,
	__ArithmeticCharacteristicParameter integer[], -- index into table ArithmeticCharacteristicParameter 
	__ArithmeticConstant integer[], -- index into table ArithmeticConstant 
	__ArithmeticExpression integer[], -- index into table ArithmeticExpressionBase 
	__ArithmeticFeatureParameter integer[], -- index into table ArithmeticFeatureParameter 
	__DividedBy integer[], -- index into table DividedBy 
	__FeatureArea integer[], -- index into table FeatureArea 
	__FeatureLength integer[], -- index into table FeatureLength 
	__Minus integer[], -- index into table Minus 
	__Negate integer[], -- index into table Negate 
	__Plus integer[], -- index into table Plus 
	__Times integer[]  -- index into table Times 
) ;

CREATE TABLE LessThan (
	_index_  SERIAL PRIMARY KEY,
	__ArithmeticCharacteristicParameter integer[], -- index into table ArithmeticCharacteristicParameter 
	__ArithmeticConstant integer[], -- index into table ArithmeticConstant 
	__ArithmeticExpression integer[], -- index into table ArithmeticExpressionBase 
	__ArithmeticFeatureParameter integer[], -- index into table ArithmeticFeatureParameter 
	__DividedBy integer[], -- index into table DividedBy 
	__FeatureArea integer[], -- index into table FeatureArea 
	__FeatureLength integer[], -- index into table FeatureLength 
	__Minus integer[], -- index into table Minus 
	__Negate integer[], -- index into table Negate 
	__Plus integer[], -- index into table Plus 
	__Times integer[]  -- index into table Times 
) ;

CREATE TABLE LesserError (
	_index_  SERIAL PRIMARY KEY,
	MaxErrorConstant text, 
	_LinearError integer  -- index into table LinearError 
) ;

CREATE TABLE LimitingNumber (
	_index_  SERIAL PRIMARY KEY,
	Count DECIMAL(10,2), -- element of DECIMAL(10,2) 
	Fraction DECIMAL(10,2)  -- element of DECIMAL(10,2) 
) ;

CREATE TABLE LineActualDetermination (
	_index_  SERIAL PRIMARY KEY,
	_Checked integer, -- index into table LineCheckedFeature 
	_Set integer  -- index into table SetFeature 
) ;

CREATE TABLE LineAuxiliary (
	_index_  SERIAL PRIMARY KEY,
	color text NOT NULL,-- attribute
	transparency text NOT NULL,-- attribute
	hidden text NOT NULL,-- attribute
	size text NOT NULL,-- attribute
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	StartPoint DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	EndPoint DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE LineBestFit (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	__BaseFeature integer[]  -- index into table SequencedBaseFeature 
) ;

CREATE TABLE LineCast (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseFeature integer  -- index into table BaseFeature 
) ;

CREATE TABLE LineCheckedFeature (
	_index_  SERIAL PRIMARY KEY,
	_CheckDetails integer  -- index into table LineChecked 
) ;

CREATE TABLE LineChecked (
	_index_  SERIAL PRIMARY KEY,
	_Measured integer, -- index into table MeasuredFeature 
	_Constructed integer  -- index into table LineConstructionMethod 
) ;

CREATE TABLE LineConstructionMethod (
	_index_  SERIAL PRIMARY KEY,
	_BestFit integer, -- index into table LineBestFit 
	_Recompensated integer, -- index into table LineRecomp 
	_Midline integer, -- index into table LineMidline 
	_Intersection integer, -- index into table LineIntersection 
	_Projection integer, -- index into table LineProjection 
	_Perpendicular integer, -- index into table LinePerpendicular 
	_Parallel integer, -- index into table LineParallel 
	_Copy integer, -- index into table LineCopy 
	_Cast integer, -- index into table LineCast 
	_TangentThrough integer, -- index into table LineTangentThrough 
	_Transform integer, -- index into table LineTransform 
	_Extract integer, -- index into table LineExtract 
	_FromScan integer  -- index into table LineFromScan 
) ;

CREATE TABLE LineCopy (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseLine integer  -- index into table BaseFeature 
) ;

CREATE TABLE LineExtract (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_CurveFeature integer  -- index into table BaseFeature 
) ;

CREATE TABLE LineFeatureActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	_PointList integer, -- index into table PointListActual 
	FeatureItemId text, 
	ActualComponentId text, 
	ManufacturingProcessId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	Location text, 
	Direction text, 
	Length text, 
	Normal text, 
	Form text  
) ;

CREATE TABLE LineFeatureDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer  -- index into table Attributes 
) ;

CREATE TABLE LineFeatureItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	FeatureNominalId text, 
	ParentFeatureItemId text, 
	FeatureName text, -- element of text 
	QPId text, -- element of text 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	CoordinateSystemId text, 
	_DeterminationMode integer, -- index into table LineActualDetermination 
	_SubstituteFeatureAlgorithm integer  -- index into table NonFeatureOfSizeSubstituteFeatureAlgorithm 
) ;

CREATE TABLE LineFeatureNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Name text, -- element of text 
	_PointList integer, -- index into table PointListNominal 
	FeatureDefinitionId text, -- element of text 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Location DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	Direction DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	Length text, 
	Normal DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE LineFromScan (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_SurfaceFeature integer, -- index into table BaseFeature 
	SearchRadius text  
) ;

CREATE TABLE LineIntersection (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	__BasePlane integer[]  -- index into table SequencedBaseFeature 
) ;

CREATE TABLE LineMidline (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	__BaseLine integer[]  -- index into table SequencedBaseFeature 
) ;

CREATE TABLE LineParallel (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_ParallelFeature integer, -- index into table BaseFeature 
	_PointFeature integer  -- index into table BaseFeature 
) ;

CREATE TABLE LinePerpendicular (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_PerpendicularFeature integer, -- index into table BaseFeature 
	_PointFeature integer  -- index into table BaseFeature 
) ;

CREATE TABLE LinePointSamplingStrategy (
	_index_  SERIAL PRIMARY KEY,
	PointSamplingStrategyEnum text, -- element of text 
	UserDefinedStrategy text  -- element of text 
) ;

CREATE TABLE LineProfileCharacteristicActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text, 
	WorstPositiveDeviation text, 
	WorstNegativeDeviation text, 
	_PointDeviations integer, -- index into table PointDeviations 
	DatumsOk BOOLEAN, -- element of BOOLEAN 
	DRFTransformActualId text, 
	_SecondCompositeSegmentProfileActual integer, -- index into table CompositeSegmentProfileActual 
	_ThirdCompositeSegmentProfileActual integer, -- index into table CompositeSegmentProfileActual 
	_FourthCompositeSegmentProfileActual integer  -- index into table CompositeSegmentProfileActual 
) ;

CREATE TABLE LineProfileCharacteristicDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	_DirectionFeature integer, -- index into table DirectionFeature 
	_CollectionPlane integer, -- index into table CollectionPlane 
	_IntersectionPlane integer, -- index into table IntersectionPlane 
	_OrientationPlane integer, -- index into table OrientationPlane 
	ToleranceValue text, 
	OuterDisposition text, 
	UnequallyDisposedZone text, 
	OffsetZone BOOLEAN, -- element of BOOLEAN 
	_SecondCompositeSegmentProfileDefinition integer, -- index into table CompositeSegmentProfileDefinition 
	_ThirdCompositeSegmentProfileDefinition integer, -- index into table CompositeSegmentProfileDefinition 
	_FourthCompositeSegmentProfileDefinition integer, -- index into table CompositeSegmentProfileDefinition 
	DatumReferenceFrameId text, 
	OrientationOnly BOOLEAN, -- element of BOOLEAN 
	_Extent integer  -- index into table Extent 
) ;

CREATE TABLE LineProfileCharacteristicItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE LineProfileCharacteristicNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	TargetValue text, 
	Vector DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	_ZoneLimit integer  -- index into table CharacteristicDirectionalZoneLimit 
) ;

CREATE TABLE LineProfileCharacteristicStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_ValueStats integer, -- index into table StatsWithTolLinear 
	_MaxValueStats integer, -- index into table StatsLinear 
	_MinValueStats integer, -- index into table StatsLinear 
	CapabilityCalculationMethod text, -- element of text 
	_WorstPositiveDeviationStats integer, -- index into table StatsLinear 
	_WorstNegativeDeviationStats integer, -- index into table StatsLinear 
	_PointDeviationsStats integer, -- index into table PointDeviationsStatsEval 
	_DatumsOkStats integer, -- index into table StatsPassFail 
	_CompositeSegmentsStats integer  -- index into table CompositeSegmentsProfileStatsEval 
) ;

CREATE TABLE LineProjection (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_ProjectionPlane integer, -- index into table BaseFeature 
	_ProjectionLine integer  -- index into table BaseFeature 
) ;

CREATE TABLE LineRecomp (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseFeaturePointList integer  -- index into table BaseFeaturePointList 
) ;

CREATE TABLE LineSegment2d (
	_index_  SERIAL PRIMARY KEY,
	StartPoint DOUBLE PRECISION[2], -- list of DOUBLE PRECISION 
	EndPoint DOUBLE PRECISION[2]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE LineSegment (
	_index_  SERIAL PRIMARY KEY,
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
	StartPoint DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	EndPoint DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE LineTangentThrough (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_TangentFeature integer, -- index into table BaseFeature 
	_PointFeature integer  -- index into table BaseFeature 
) ;

CREATE TABLE LineTransform (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseLine integer, -- index into table BaseFeature 
	_Transformation integer  -- index into table TransformationReference 
) ;

CREATE TABLE LinearCharacteristicActualBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text  
) ;

CREATE TABLE LinearCharacteristicDefinitionBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	Dimension text, -- element of text 
	_Tolerance integer, -- index into table LinearTolerance 
	NonTolerance text  -- element of text 
) ;

CREATE TABLE LinearCharacteristicItemBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE LinearCharacteristicNominalBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	TargetValue text  
) ;

CREATE TABLE LinearCharacteristicStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_ValueStats integer, -- index into table StatsWithTolLinear 
	_MaxValueStats integer, -- index into table StatsLinear 
	_MinValueStats integer, -- index into table StatsLinear 
	_DeviationStats integer, -- index into table StatsWithTolLinear 
	_MaxDeviationStats integer, -- index into table StatsLinear 
	_MinDeviationStats integer  -- index into table StatsLinear 
) ;

CREATE TABLE LinearCoordinateCharacteristicActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	_TypeOfCoordinates integer, -- index into table OfCoordinatesType 
	Value text, 
	MaxValue text, 
	MinValue text  
) ;

CREATE TABLE LinearCoordinateCharacteristicDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	Dimension text, -- element of text 
	_Tolerance integer, -- index into table LinearTolerance 
	NonTolerance text  -- element of text 
) ;

CREATE TABLE LinearCoordinateCharacteristicItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE LinearCoordinateCharacteristicNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	TargetValue text, 
	Direction text, -- element of text 
	CoordinateSystemId text  
) ;

CREATE TABLE LinearCoordinateCharacteristicStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_ValueStats integer, -- index into table StatsWithTolLinear 
	_MaxValueStats integer, -- index into table StatsLinear 
	_MinValueStats integer, -- index into table StatsLinear 
	_DeviationStats integer, -- index into table StatsWithTolLinear 
	_MaxDeviationStats integer, -- index into table StatsLinear 
	_MinDeviationStats integer  -- index into table StatsLinear 
) ;

CREATE TABLE LinearError (
	_index_  SERIAL PRIMARY KEY,
	BaseError text, 
	ErrorRate DECIMAL(10,2)  -- element of DECIMAL(10,2) 
) ;

CREATE TABLE LinearToleranceDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	MaxValue text, 
	MinValue text  
) ;

CREATE TABLE LinearTolerance (
	_index_  SERIAL PRIMARY KEY,
	MaxValue text, 
	MinValue text, 
	DefinitionId text, 
	DefinedAsLimit BOOLEAN  -- element of BOOLEAN 
) ;

CREATE TABLE LinearUnit (
	_index_  SERIAL PRIMARY KEY,
	SIUnitName text, -- element of text 
	UnitName text, -- element of text 
	_UnitConversion integer  -- index into table UnitConversion 
) ;

CREATE TABLE LinearityStudyPlan (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	ThisStatisticalStudyPlanInstanceQPId text, -- element of text 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	CalculateAverageFeatures BOOLEAN, -- element of BOOLEAN 
	_CharacteristicItemIds integer, -- index into table ArrayReferenceFull 
	StatsValuesPerChar StatsValuesEnumType, -- element of StatsValuesEnumType 
	StatsValuesPerSubgroup SubgroupStatsValuesEnumType, -- element of SubgroupStatsValuesEnumType 
	__StatsValuesSummary integer[], -- index into table SummaryStatsValues 
	_PreInspectionTraceability integer, -- index into table PreInspectionTraceability 
	Name text, -- element of text 
	Description text, -- element of text 
	PlanId text, 
	CorrectiveActionPlanId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	GoodnessOfFitThreshold DECIMAL(10,2), -- element of DECIMAL(10,2) 
	LinearAbsoluteLinearityMinimum text, 
	AngularAbsoluteLinearityMinimum text, 
	AreaAbsoluteLinearityMinimum text, 
	ForceAbsoluteLinearityMinimum text, 
	MassAbsoluteLinearityMinimum text, 
	PressureAbsoluteLinearityMinimum text, 
	SpeedAbsoluteLinearityMinimum text, 
	TemperatureAbsoluteLinearityMinimum text, 
	TimeAbsoluteLinearityMinimum text, 
	UserDefinedUnitAbsoluteLinearityMinimum text[], 
	RelativeLinearityMinimum DECIMAL(10,2)  -- element of DECIMAL(10,2) 
) ;

CREATE TABLE LinearityStudyResults (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	ThisStatisticalStudyResultsInstanceQPId text, -- element of text 
	_Status integer, -- index into table StatsEvalStatus 
	__StudyIssue integer[], -- index into table StudyIssue 
	_InspectionTraceability integer, -- index into table InspectionTraceability 
	Name text, -- element of text 
	Description text, -- element of text 
	StudyId text, 
	ResultsId text[], 
	__ResultsQPId integer[], -- index into table QPIdFullReference 
	__ResultsFile integer[], -- index into table ExternalFileReference 
	__AverageFeature integer[], -- index into table AverageFeature 
	__CharacteristicsStats integer[], -- index into table CharacteristicsStats 
	__LinearStatsSummary integer[], -- index into table SummaryStatisticsLinear 
	__AngularStatsSummary integer[], -- index into table SummaryStatisticsAngular 
	__AreaStatsSummary integer[], -- index into table SummaryStatisticsArea 
	__ForceStatsSummary integer[], -- index into table SummaryStatisticsForce 
	__MassStatsSummary integer[], -- index into table SummaryStatisticsMass 
	__PressureStatsSummary integer[], -- index into table SummaryStatisticsPressure 
	__SpeedStatsSummary integer[], -- index into table SummaryStatisticsSpeed 
	__TemperatureStatsSummary integer[], -- index into table SummaryStatisticsTemperature 
	__TimeStatsSummary integer[], -- index into table SummaryStatisticsTime 
	__UserDefinedUnitStatsSummary integer[], -- index into table SummaryStatisticsUserDefinedUnit 
	__StatsSummary integer[], -- index into table SummaryStatistics 
	SampleSize DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	GoodnessOfFit text, -- element of text 
	LinearAbsoluteLinearity text, 
	AngularAbsoluteLinearity text, 
	AreaAbsoluteLinearity text, 
	ForceAbsoluteLinearity text, 
	MassAbsoluteLinearity text, 
	PressureAbsoluteLinearity text, 
	SpeedAbsoluteLinearity text, 
	TemperatureAbsoluteLinearity text, 
	TimeAbsoluteLinearity text, 
	UserDefinedUnitAbsoluteLinearity text, 
	RelativeLinearity text  -- element of text 
) ;

CREATE TABLE LocationCharacteristicActualBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text, 
	__ZoneData integer[], -- index into table ZoneData 
	DatumsOk BOOLEAN  -- element of BOOLEAN 
) ;

CREATE TABLE LocationCharacteristicDefinitionBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	_DirectionFeature integer, -- index into table DirectionFeature 
	_CollectionPlane integer, -- index into table CollectionPlane 
	_IntersectionPlane integer, -- index into table IntersectionPlane 
	_OrientationPlane integer, -- index into table OrientationPlane 
	ToleranceValue text, 
	DatumReferenceFrameId text  
) ;

CREATE TABLE LocationCharacteristicItemBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE LocationCharacteristicNominalBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer  -- index into table KeyCharacteristic 
) ;

CREATE TABLE LocationCharacteristicStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_ValueStats integer, -- index into table StatsWithTolLinear 
	_MaxValueStats integer, -- index into table StatsLinear 
	_MinValueStats integer, -- index into table StatsLinear 
	_DatumsOkStats integer  -- index into table StatsPassFail 
) ;

CREATE TABLE LocationOnDrawing (
	_index_  SERIAL PRIMARY KEY,
	DrawingId text, 
	SheetNumber text, -- element of text 
	DrawingZone text, -- element of text 
	ModelId text, 
	View text, -- element of text 
	ViewId text  
) ;

CREATE TABLE Location (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	LocationDescription text, -- element of text 
	_Address integer  -- index into table PhysicalAddress 
) ;

CREATE TABLE LoopBase (
	_index_  SERIAL PRIMARY KEY,
	color text NOT NULL,-- attribute
	transparency text NOT NULL,-- attribute
	hidden text NOT NULL,-- attribute
	size text NOT NULL,-- attribute
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer  -- index into table Attributes 
) ;

CREATE TABLE LoopMesh (
	_index_  SERIAL PRIMARY KEY,
	color text NOT NULL,-- attribute
	transparency text NOT NULL,-- attribute
	hidden text NOT NULL,-- attribute
	size text NOT NULL,-- attribute
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	_CoEdgesMesh integer  -- index into table CoEdgesMesh 
) ;

CREATE TABLE LoopSet (
	_index_  SERIAL PRIMARY KEY,
	N text,-- attribute
	__Loop integer[], -- index into table Loop 
	__LoopBase integer[], -- index into table LoopBase 
	__LoopMesh integer[]  -- index into table LoopMesh 
) ;

CREATE TABLE Loop (
	_index_  SERIAL PRIMARY KEY,
	form text NOT NULL,-- attribute
	color text NOT NULL,-- attribute
	transparency text NOT NULL,-- attribute
	hidden text NOT NULL,-- attribute
	size text NOT NULL,-- attribute
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	_CoEdges integer  -- index into table CoEdges 
) ;

CREATE TABLE MachineCoordinateSystemOperation (
	_index_  SERIAL PRIMARY KEY,
	SequenceNumber DECIMAL(10,2)  -- element of DECIMAL(10,2) 
) ;

CREATE TABLE ManualDevice (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	Name text, -- element of text 
	Description text, -- element of text 
	Manufacturer text, -- element of text 
	ModelNumber text, -- element of text 
	SerialNumber text, -- element of text 
	LocationId text, 
	_Location integer, -- index into table Location 
	_Calibrations integer, -- index into table Calibrations 
	_InspectionTemperatures integer  -- index into table Temperatures 
) ;

CREATE TABLE ManualMeasureFeatureMethod (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_ChosenResourceIds integer, -- index into table ArrayReferenceFull 
	_WorkInstructionIds integer  -- index into table ArrayReferenceFull 
) ;

CREATE TABLE ManufacturingMethod (
	_index_  SERIAL PRIMARY KEY,
	ManufacturingMethodEnum text, -- element of text 
	OtherManufacturingMethod text  -- element of text 
) ;

CREATE TABLE ManufacturingProcessTraceabilities (
	_index_  SERIAL PRIMARY KEY,
	__ManufacturingProcessTraceability integer[]  -- index into table ManufacturingProcessTraceability 
) ;

CREATE TABLE ManufacturingProcessTraceability (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Job text, -- element of text 
	Revision text, -- element of text 
	PreviousOperationId text, 
	Path text, -- element of text 
	MachineManufacturerName text, -- element of text 
	MachineIdentifier text, -- element of text 
	OperatorIdentifier text, -- element of text 
	Shift text, -- element of text 
	Department text, -- element of text 
	ResponsibilityIdentifier text, -- element of text 
	PlantSector text, -- element of text 
	__ProcessParameter integer[], -- index into table ProcessParameter 
	AssociatedTraceabilityId text  
) ;

CREATE TABLE MassCharacteristicActualBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text  
) ;

CREATE TABLE MassCharacteristicDefinitionBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	_Tolerance integer, -- index into table MassTolerance 
	NonTolerance text  -- element of text 
) ;

CREATE TABLE MassCharacteristicItemBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE MassCharacteristicNominalBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	TargetValue text  
) ;

CREATE TABLE MassTolerance (
	_index_  SERIAL PRIMARY KEY,
	MaxValue text, 
	MinValue text, 
	DefinedAsLimit BOOLEAN  -- element of BOOLEAN 
) ;

CREATE TABLE MassUnit (
	_index_  SERIAL PRIMARY KEY,
	SIUnitName text, -- element of text 
	UnitName text, -- element of text 
	_UnitConversion integer  -- index into table UnitConversion 
) ;

CREATE TABLE MaxFeatureRules (
	_index_  SERIAL PRIMARY KEY,
	__IfThenArcRule integer[], -- index into table IfThenArcRule 
	__IfThenCircleRule integer[], -- index into table IfThenCircleRule 
	__IfThenConeRule integer[], -- index into table IfThenConeRule 
	__IfThenConicalSegmentRule integer[], -- index into table IfThenConicalSegmentRule 
	__IfThenCuboidRule integer[], -- index into table IfThenCuboidRule 
	__IfThenCurveRule integer[], -- index into table IfThenCurveRule 
	__IfThenCylinderRule integer[], -- index into table IfThenCylinderRule 
	__IfThenCylindricalSegmentRule integer[], -- index into table IfThenCylindricalSegmentRule 
	__IfThenEllipseRule integer[], -- index into table IfThenEllipseRule 
	__IfThenElongatedCylinderRule integer[], -- index into table IfThenElongatedCylinderRule 
	__IfThenExtrudedCrossSectionRule integer[], -- index into table IfThenExtrudedCrossSectionRule 
	__IfThenFeatureRule integer[], -- index into table IfThenFeatureRule 
	__IfThenLineRule integer[], -- index into table IfThenLineRule 
	__IfThenOppositeLinesRule integer[], -- index into table IfThenOppositeLinesRule 
	__IfThenOppositePlanesRule integer[], -- index into table IfThenOppositePlanesRule 
	__IfThenPlaneRule integer[], -- index into table IfThenPlaneRule 
	__IfThenPointDefinedCurveRule integer[], -- index into table IfThenPointDefinedCurveRule 
	__IfThenPointDefinedSurfaceRule integer[], -- index into table IfThenPointDefinedSurfaceRule 
	__IfThenPointRule integer[], -- index into table IfThenPointRule 
	__IfThenSphereRule integer[], -- index into table IfThenSphereRule 
	__IfThenSphericalSegmentRule integer[], -- index into table IfThenSphericalSegmentRule 
	__IfThenSurfaceOfRevolutionRule integer[], -- index into table IfThenSurfaceOfRevolutionRule 
	__IfThenSurfaceRule integer[], -- index into table IfThenSurfaceRule 
	__IfThenToroidalSegmentRule integer[], -- index into table IfThenToroidalSegmentRule 
	__IfThenTorusRule integer[], -- index into table IfThenTorusRule 
	_Else integer  -- index into table ElseRule 
) ;

CREATE TABLE MeasurandBase (
	_index_  SERIAL PRIMARY KEY,
	id text -- attribute
) ;

CREATE TABLE Measurands (
	_index_  SERIAL PRIMARY KEY,
	__EstablishDatumMeasurand integer[], -- index into table EstablishDatumMeasurand 
	__EvaluateCharacteristicMeasurand integer[], -- index into table EvaluateCharacteristicMeasurand 
	__Measurand integer[]  -- index into table MeasurandBase 
) ;

CREATE TABLE MeasureActionGroupFunction (
	_index_  SERIAL PRIMARY KEY,
	MeasureActionGroupFunctionEnum text, -- element of text 
	OtherMeasureActionGroupFunction text  -- element of text 
) ;

CREATE TABLE MeasureEvaluateAllAction (
	_index_  SERIAL PRIMARY KEY,
	_WorkInstructionIds integer, -- index into table ArrayReferenceFull 
	PreferredActionMethodId text, 
	_AlternativeActionMethodIds integer, -- index into table ArrayReferenceFull 
	_PreferredResourceIds integer  -- index into table ArrayReferenceFull 
) ;

CREATE TABLE MeasureEvaluateSpecifiedAction (
	_index_  SERIAL PRIMARY KEY,
	_WorkInstructionIds integer, -- index into table ArrayReferenceFull 
	PreferredActionMethodId text, 
	_AlternativeActionMethodIds integer, -- index into table ArrayReferenceFull 
	_PreferredResourceIds integer, -- index into table ArrayReferenceFull 
	_CharacteristicItemIds integer  -- index into table ArrayReferenceFull 
) ;

CREATE TABLE MeasureFeatureMethodBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_ChosenResourceIds integer, -- index into table ArrayReferenceFull 
	_WorkInstructionIds integer  -- index into table ArrayReferenceFull 
) ;

CREATE TABLE MeasurePointActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	Point text, 
	Normal text, 
	Compensated BOOLEAN, -- element of BOOLEAN 
	ProbeRadius text, 
	MeasurementDeviceId text, 
	SensorId text, 
	MeasurePointNominalId text  
) ;

CREATE TABLE MeasurePointNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	Point DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	Normal DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	MeasurementDeviceId text, 
	SensorId text  
) ;

CREATE TABLE MeasureSpecifiedFeaturesAction (
	_index_  SERIAL PRIMARY KEY,
	_WorkInstructionIds integer, -- index into table ArrayReferenceFull 
	PreferredActionMethodId text, 
	_AlternativeActionMethodIds integer, -- index into table ArrayReferenceFull 
	_PreferredResourceIds integer, -- index into table ArrayReferenceFull 
	_FeatureItemIds integer  -- index into table ArrayReferenceFull 
) ;

CREATE TABLE MeasureSpecifiedMeasurandsAction (
	_index_  SERIAL PRIMARY KEY,
	_WorkInstructionIds integer, -- index into table ArrayReferenceFull 
	PreferredActionMethodId text, 
	_AlternativeActionMethodIds integer, -- index into table ArrayReferenceFull 
	_PreferredResourceIds integer, -- index into table ArrayReferenceFull 
	_MeasurandIds integer  -- index into table ArrayReferenceFull 
) ;

CREATE TABLE MeasuredCharacteristics (
	_index_  SERIAL PRIMARY KEY,
	_CharacteristicActuals integer, -- index into table CharacteristicActuals 
	_CharacteristicGroupStatuses integer  -- index into table CharacteristicGroupStatuses 
) ;

CREATE TABLE MeasuredFeature (
	_index_  SERIAL PRIMARY KEY,
	_PointList integer  -- index into table PointListNominal 
) ;

CREATE TABLE MeasuredFeatures (
	_index_  SERIAL PRIMARY KEY,
	_FeatureActuals integer  -- index into table FeatureActuals 
) ;

CREATE TABLE MeasurementDeviceAccuracyBase (
	_index_  SERIAL PRIMARY KEY 
) ;

CREATE TABLE MeasurementDevice (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	Name text, -- element of text 
	Description text, -- element of text 
	Manufacturer text, -- element of text 
	ModelNumber text, -- element of text 
	SerialNumber text, -- element of text 
	LocationId text, 
	_Location integer, -- index into table Location 
	_Calibrations integer, -- index into table Calibrations 
	_InspectionTemperatures integer  -- index into table Temperatures 
) ;

CREATE TABLE MeasurementDevices (
	_index_  SERIAL PRIMARY KEY,
	__CMM integer[], -- index into table CMM 
	__Caliper integer[], -- index into table Caliper 
	__Comparator integer[], -- index into table Comparator 
	__GageDevice integer[], -- index into table GageDevice 
	__MeasurementDevice integer[]  -- index into table MeasurementDevice 
) ;

CREATE TABLE MeasurementDirective (
	_index_  SERIAL PRIMARY KEY,
	MeasurementDirectiveEnum text, -- element of text 
	OtherMeasurementDirective text  -- element of text 
) ;

CREATE TABLE MeasurementPlan (
	_index_  SERIAL PRIMARY KEY,
	_Version integer, -- index into table Version 
	_RulesUsedQPId integer, -- index into table QPIdFullReference 
	_RulesToUseQPId integer, -- index into table QPIdFullReference 
	_WorkInstructions integer, -- index into table WorkInstructions 
	_ActionMethods integer, -- index into table ActionMethods 
	_Measurands integer, -- index into table Measurands 
	_OneOfPlanRoot integer, -- index into table OneOfActionGroup 
	_OrderedPlanRoot integer, -- index into table OrderedActionGroup 
	_PartiallyOrderedPlanRoot integer, -- index into table PartiallyOrderedActionGroup 
	_PickSomePlanRoot integer, -- index into table PickSomeActionGroup 
	_PlanRoot integer, -- index into table ActionGroupBase 
	_UnorderedPlanRoot integer  -- index into table UnorderedActionGroup 
) ;

CREATE TABLE MeasurementResourceBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	Name text, -- element of text 
	Description text, -- element of text 
	Manufacturer text, -- element of text 
	ModelNumber text, -- element of text 
	SerialNumber text, -- element of text 
	LocationId text, 
	_Location integer  -- index into table Location 
) ;

CREATE TABLE MeasurementResources (
	_index_  SERIAL PRIMARY KEY,
	_Version integer, -- index into table Version 
	_Carriages integer, -- index into table Carriages 
	_Fixtures integer, -- index into table Fixtures 
	_MeasurementDevices integer, -- index into table MeasurementDevices 
	_Sensors integer, -- index into table Sensors 
	_Tools integer  -- index into table Tools 
) ;

CREATE TABLE MeasurementResults (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_InspectionTraceability integer, -- index into table InspectionTraceability 
	ThisResultsInstanceQPId text, -- element of text 
	__ExternalFileReference integer[], -- index into table ExternalFileReference 
	_MeasuredFeatures integer, -- index into table MeasuredFeatures 
	_MeasuredCharacteristics integer, -- index into table MeasuredCharacteristics 
	_CoordinateSystemActualTransforms integer, -- index into table CoordinateSystemActualTransforms 
	_InspectionStatus integer, -- index into table InspectionStatus 
	_ActualComponentIds integer  -- index into table ArrayReference 
) ;

CREATE TABLE MeasurementsResults (
	_index_  SERIAL PRIMARY KEY,
	_Version integer, -- index into table Version 
	__MeasurementResults integer[], -- index into table MeasurementResults 
	__ActualComponentSet integer[], -- index into table ActualComponentSet 
	_InspectionTraceability integer  -- index into table InspectionTraceability 
) ;

CREATE TABLE MeshTriangleCore (
	_index_  SERIAL PRIMARY KEY,
	Triangles text, 
	TrianglesBinary text, 
	Neighbours text, 
	NeighboursBinary text, 
	Vertices DOUBLE PRECISION, -- element of DOUBLE PRECISION 
	VerticesBinary text, 
	Normals text, 
	NormalsBinary text  
) ;

CREATE TABLE MeshTriangle (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	_MeshTriangleCore integer  -- index into table MeshTriangleCore 
) ;

CREATE TABLE Minus (
	_index_  SERIAL PRIMARY KEY,
	__ArithmeticCharacteristicParameter integer[], -- index into table ArithmeticCharacteristicParameter 
	__ArithmeticConstant integer[], -- index into table ArithmeticConstant 
	__ArithmeticExpression integer[], -- index into table ArithmeticExpressionBase 
	__ArithmeticFeatureParameter integer[], -- index into table ArithmeticFeatureParameter 
	__DividedBy integer[], -- index into table DividedBy 
	__FeatureArea integer[], -- index into table FeatureArea 
	__FeatureLength integer[], -- index into table FeatureLength 
	__Minus integer[], -- index into table Minus 
	__Negate integer[], -- index into table Negate 
	__Plus integer[], -- index into table Plus 
	__Times integer[]  -- index into table Times 
) ;

CREATE TABLE MovableDatumTargetDirection (
	_index_  SERIAL PRIMARY KEY,
	DatumTargetTranslationDirection DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE MultiLeadThreadSpecification (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	Diameter text, 
	_ThreadSeries integer, -- index into table ThreadSeries 
	_ThreadToleranceClass integer, -- index into table ThreadClass 
	_CrestDiameterToleranceClass integer, -- index into table ThreadClass 
	LeftHanded BOOLEAN, -- element of BOOLEAN 
	ModifiedThread BOOLEAN, -- element of BOOLEAN 
	ThreadLengthEngagement text, 
	ThreadPitch text, 
	ThreadLeadDistance text, 
	ThreadLeadStarts DECIMAL(10,2)  -- element of DECIMAL(10,2) 
) ;

CREATE TABLE MultipleProductInstanceStudyPlanBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	ThisStatisticalStudyPlanInstanceQPId text, -- element of text 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	CalculateAverageFeatures BOOLEAN, -- element of BOOLEAN 
	_CharacteristicItemIds integer, -- index into table ArrayReferenceFull 
	StatsValuesPerChar StatsValuesEnumType, -- element of StatsValuesEnumType 
	StatsValuesPerSubgroup SubgroupStatsValuesEnumType, -- element of SubgroupStatsValuesEnumType 
	__StatsValuesSummary integer[], -- index into table SummaryStatsValues 
	_PreInspectionTraceability integer, -- index into table PreInspectionTraceability 
	Name text, -- element of text 
	Description text, -- element of text 
	PlanId text, 
	CorrectiveActionPlanId text, 
	NumberOfSamples DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupSize DECIMAL(10,2)  -- element of DECIMAL(10,2) 
) ;

CREATE TABLE MultipleProductInstanceStudyResultsBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	ThisStatisticalStudyResultsInstanceQPId text, -- element of text 
	_Status integer, -- index into table StatsEvalStatus 
	__StudyIssue integer[], -- index into table StudyIssue 
	_InspectionTraceability integer, -- index into table InspectionTraceability 
	Name text, -- element of text 
	Description text, -- element of text 
	StudyId text, 
	ResultsId text[], 
	__ResultsQPId integer[], -- index into table QPIdFullReference 
	__ResultsFile integer[], -- index into table ExternalFileReference 
	__AverageFeature integer[], -- index into table AverageFeature 
	__CharacteristicsStats integer[], -- index into table CharacteristicsStats 
	__LinearStatsSummary integer[], -- index into table SummaryStatisticsLinear 
	__AngularStatsSummary integer[], -- index into table SummaryStatisticsAngular 
	__AreaStatsSummary integer[], -- index into table SummaryStatisticsArea 
	__ForceStatsSummary integer[], -- index into table SummaryStatisticsForce 
	__MassStatsSummary integer[], -- index into table SummaryStatisticsMass 
	__PressureStatsSummary integer[], -- index into table SummaryStatisticsPressure 
	__SpeedStatsSummary integer[], -- index into table SummaryStatisticsSpeed 
	__TemperatureStatsSummary integer[], -- index into table SummaryStatisticsTemperature 
	__TimeStatsSummary integer[], -- index into table SummaryStatisticsTime 
	__UserDefinedUnitStatsSummary integer[], -- index into table SummaryStatisticsUserDefinedUnit 
	__StatsSummary integer[], -- index into table SummaryStatistics 
	NumberOfSamples DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupSize DECIMAL(10,2)  -- element of DECIMAL(10,2) 
) ;

CREATE TABLE Negate (
	_index_  SERIAL PRIMARY KEY,
	_ArithmeticCharacteristicParameter integer, -- index into table ArithmeticCharacteristicParameter 
	_ArithmeticConstant integer, -- index into table ArithmeticConstant 
	_ArithmeticExpression integer, -- index into table ArithmeticExpressionBase 
	_ArithmeticFeatureParameter integer, -- index into table ArithmeticFeatureParameter 
	_DividedBy integer, -- index into table DividedBy 
	_FeatureArea integer, -- index into table FeatureArea 
	_FeatureLength integer, -- index into table FeatureLength 
	_Minus integer, -- index into table Minus 
	_Negate integer, -- index into table Negate 
	_Plus integer, -- index into table Plus 
	_Times integer  -- index into table Times 
) ;

CREATE TABLE NodeBase (
	_index_  SERIAL PRIMARY KEY,
	label text NOT NULL -- attribute
) ;

CREATE TABLE NodeWithIdBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer  -- index into table Attributes 
) ;

CREATE TABLE NominalDatumFeature (
	_index_  SERIAL PRIMARY KEY,
	FeatureItemId text  
) ;

CREATE TABLE NominalOffsetAlignmentOperation (
	_index_  SERIAL PRIMARY KEY,
	SequenceNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	Offset_ text  
) ;

CREATE TABLE NominalRotationAlignmentOperation (
	_index_  SERIAL PRIMARY KEY,
	SequenceNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	RotationAxis DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	Angle text  
) ;

CREATE TABLE NonFeatureOfSizeSubstituteFeatureAlgorithm (
	_index_  SERIAL PRIMARY KEY,
	NonFeatureOfSizeSubstituteFeatureAlgorithmEnum text, -- element of text 
	OtherNonFeatureOfSizeSubstituteFeatureAlgorithm text  -- element of text 
) ;

CREATE TABLE Not_ (
	_index_  SERIAL PRIMARY KEY,
	_And_ integer, -- index into table And 
	_ArithmeticEqual integer, -- index into table ArithmeticEqual 
	_BooleanEqual integer, -- index into table BooleanEqual 
	_BooleanExpression integer, -- index into table BooleanExpressionBase 
	_CharacteristicIs integer, -- index into table CharacteristicIs 
	_ConstantIs integer, -- index into table ConstantIs 
	_FeatureIsDatum integer, -- index into table FeatureIsDatum 
	_FeatureIsInternal integer, -- index into table FeatureIsInternal 
	_GreaterOrEqual integer, -- index into table GreaterOrEqual 
	_GreaterThan integer, -- index into table GreaterThan 
	_LessOrEqual integer, -- index into table LessOrEqual 
	_LessThan integer, -- index into table LessThan 
	_Not_ integer, -- index into table Not 
	_Or_ integer, -- index into table Or 
	_SamplingRigorIs integer, -- index into table SamplingRigorIs 
	_ShapeClassIs integer  -- index into table ShapeClassIs 
) ;

CREATE TABLE NotableEvent (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	Description text, -- element of text 
	Active BOOLEAN  -- element of BOOLEAN 
) ;

CREATE TABLE NotableEvents (
	_index_  SERIAL PRIMARY KEY,
	__NotableEvent integer[]  -- index into table NotableEvent 
) ;

CREATE TABLE NoteFlagSet (
	_index_  SERIAL PRIMARY KEY,
	N text,-- attribute
	__NoteFlag integer[]  -- index into table NoteFlag 
) ;

CREATE TABLE NoteFlag (
	_index_  SERIAL PRIMARY KEY,
	form text NOT NULL,-- attribute
	color text NOT NULL,-- attribute
	transparency text NOT NULL,-- attribute
	hidden text NOT NULL,-- attribute
	size text NOT NULL,-- attribute
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Text text, -- element of text 
	TextHidden text, -- element of text 
	URI text  -- element of text 
) ;

CREATE TABLE NoteSet (
	_index_  SERIAL PRIMARY KEY,
	N text,-- attribute
	__Note integer[]  -- index into table Note 
) ;

CREATE TABLE Note (
	_index_  SERIAL PRIMARY KEY,
	form text NOT NULL,-- attribute
	color text NOT NULL,-- attribute
	transparency text NOT NULL,-- attribute
	hidden text NOT NULL,-- attribute
	size text NOT NULL,-- attribute
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Text text  -- element of text 
) ;

CREATE TABLE NotedEvent (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	Description text, -- element of text 
	SequenceNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	TimeOccurred TIMESTAMP, -- element of TIMESTAMP 
	NotableEventId text  
) ;

CREATE TABLE NotedEvents (
	_index_  SERIAL PRIMARY KEY,
	__NotedEvent integer[]  -- index into table NotedEvent 
) ;

CREATE TABLE NumberedPlanElement (
	_index_  SERIAL PRIMARY KEY,
	SequenceNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_EvaluateSpecifiedCharacteristics integer, -- index into table EvaluateSpecifiedCharacteristicsAction 
	_MeasureEvaluateAll integer, -- index into table MeasureEvaluateAllAction 
	_MeasureEvaluateSpecified integer, -- index into table MeasureEvaluateSpecifiedAction 
	_MeasureSpecifiedFeatures integer, -- index into table MeasureSpecifiedFeaturesAction 
	_MeasureSpecifiedMeasurands integer, -- index into table MeasureSpecifiedMeasurandsAction 
	_OneOfActionGroup integer, -- index into table OneOfActionGroup 
	_OrderedActionGroup integer, -- index into table OrderedActionGroup 
	_PartiallyOrderedActionGroup integer, -- index into table PartiallyOrderedActionGroup 
	_PickSomeActionGroup integer, -- index into table PickSomeActionGroup 
	_PlanElement integer, -- index into table PlanElementBase 
	_UnorderedActionGroup integer  -- index into table UnorderedActionGroup 
) ;

CREATE TABLE NumberedPlanElements (
	_index_  SERIAL PRIMARY KEY,
	__NumberedPlanElement integer[]  -- index into table NumberedPlanElement 
) ;

CREATE TABLE NumericalLengthAccuracy (
	_index_  SERIAL PRIMARY KEY,
	AccuracyValue text  
) ;

CREATE TABLE Nurbs12Core (
	_index_  SERIAL PRIMARY KEY,
	domain text,-- attribute
	Order_ DECIMAL(10,2), -- element of DECIMAL(10,2) 
	Knots text, 
	CPs text, 
	CPsBinary text, 
	Weights text  
) ;

CREATE TABLE Nurbs12 (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	_Nurbs12Core integer  -- index into table Nurbs12Core 
) ;

CREATE TABLE Nurbs13Core (
	_index_  SERIAL PRIMARY KEY,
	domain text,-- attribute
	Order_ DECIMAL(10,2), -- element of DECIMAL(10,2) 
	Knots text, 
	CPs DOUBLE PRECISION, -- element of DOUBLE PRECISION 
	CPsBinary text, 
	Weights text  
) ;

CREATE TABLE Nurbs13 (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	_Nurbs13Core integer, -- index into table Nurbs13Core 
	_Transform integer  -- index into table ElementReference 
) ;

CREATE TABLE Nurbs23Core (
	_index_  SERIAL PRIMARY KEY,
	form text NOT NULL,-- attribute
	OrderU DECIMAL(10,2), -- element of DECIMAL(10,2) 
	OrderV DECIMAL(10,2), -- element of DECIMAL(10,2) 
	KnotsU text, 
	KnotsV text, 
	CPs DOUBLE PRECISION, -- element of DOUBLE PRECISION 
	CPsBinary text, 
	Weights text  
) ;

CREATE TABLE Nurbs23 (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	_Nurbs23Core integer, -- index into table Nurbs23Core 
	_Transform integer  -- index into table ElementReference 
) ;

CREATE TABLE Offset23Core (
	_index_  SERIAL PRIMARY KEY,
	form text NOT NULL,-- attribute
	Distance DOUBLE PRECISION, -- element of DOUBLE PRECISION 
	_Cone23 integer, -- index into table Cone23 
	_Cylinder23 integer, -- index into table Cylinder23 
	_Extrude23 integer, -- index into table Extrude23 
	_Nurbs23 integer, -- index into table Nurbs23 
	_Offset23 integer, -- index into table Offset23 
	_Plane23 integer, -- index into table Plane23 
	_Revolution23 integer, -- index into table Revolution23 
	_Ruled23 integer, -- index into table Ruled23 
	_Sphere23 integer, -- index into table Sphere23 
	_Spline23 integer, -- index into table Spline23 
	_Surface integer, -- index into table SurfaceBase 
	_Torus23 integer  -- index into table Torus23 
) ;

CREATE TABLE Offset23 (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	_Offset23Core integer, -- index into table Offset23Core 
	_Transform integer  -- index into table ElementReference 
) ;

CREATE TABLE OneOfActionGroup (
	_index_  SERIAL PRIMARY KEY,
	_WorkInstructionIds integer, -- index into table ArrayReferenceFull 
	_MeasureActionGroupFunction integer, -- index into table MeasureActionGroupFunction 
	_Steps integer  -- index into table NumberedPlanElements 
) ;

CREATE TABLE OppositeLinesActualDetermination (
	_index_  SERIAL PRIMARY KEY,
	_Checked integer, -- index into table OppositeLinesCheckedFeature 
	_Set integer  -- index into table SetFeature 
) ;

CREATE TABLE OppositeLinesBestFit (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	__BaseFeature integer[]  -- index into table SequencedBaseFeature 
) ;

CREATE TABLE OppositeLinesCast (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseFeature integer  -- index into table BaseFeature 
) ;

CREATE TABLE OppositeLinesCheckedFeature (
	_index_  SERIAL PRIMARY KEY,
	_CheckDetails integer  -- index into table OppositeLinesChecked 
) ;

CREATE TABLE OppositeLinesChecked (
	_index_  SERIAL PRIMARY KEY,
	_Measured integer, -- index into table MeasuredFeature 
	_Constructed integer  -- index into table OppositeLinesConstructionMethod 
) ;

CREATE TABLE OppositeLinesConstructionMethod (
	_index_  SERIAL PRIMARY KEY,
	_BestFit integer, -- index into table OppositeLinesBestFit 
	_Recompensated integer, -- index into table OppositeLinesRecomp 
	_Projection integer, -- index into table OppositeLinesProjection 
	_Copy integer, -- index into table OppositeLinesCopy 
	_Cast integer, -- index into table OppositeLinesCast 
	_Transform integer, -- index into table OppositeLinesTransform 
	_FromScan integer  -- index into table OppositeLinesFromScan 
) ;

CREATE TABLE OppositeLinesCopy (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseOppositeLines integer  -- index into table BaseFeature 
) ;

CREATE TABLE OppositeLinesFeatureActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	_PointList integer, -- index into table PointListActual 
	FeatureItemId text, 
	ActualComponentId text, 
	ManufacturingProcessId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	_CenterLine integer, -- index into table ActualPointAndVector 
	Normal text, 
	Width text, 
	WidthMin text, 
	WidthMax text, 
	Length text, 
	LengthMin text, 
	LengthMax text, 
	TaperAngle text, 
	_EndRadius1 integer, -- index into table ActualEndRadius 
	_EndRadius2 integer, -- index into table ActualEndRadius 
	Form text  
) ;

CREATE TABLE OppositeLinesFeatureDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	InternalExternal text, -- element of text 
	Width text, 
	Length text, 
	_EndType integer, -- index into table SlotEnd 
	TaperAngle text, 
	SingleOpenEnd BOOLEAN, -- element of BOOLEAN 
	_EndRadius1 integer, -- index into table EndRadius 
	_EndRadius2 integer  -- index into table EndRadius 
) ;

CREATE TABLE OppositeLinesFeatureItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	FeatureNominalId text, 
	ParentFeatureItemId text, 
	FeatureName text, -- element of text 
	QPId text, -- element of text 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	CoordinateSystemId text, 
	_DeterminationMode integer, -- index into table OppositeLinesActualDetermination 
	_SubstituteFeatureAlgorithm integer  -- index into table FeatureOfSizeSubstituteFeatureAlgorithm 
) ;

CREATE TABLE OppositeLinesFeatureNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Name text, -- element of text 
	_PointList integer, -- index into table PointListNominal 
	FeatureDefinitionId text, -- element of text 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	_CenterLine integer, -- index into table PointAndVector 
	Normal DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE OppositeLinesFromScan (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_SurfaceFeature integer, -- index into table BaseFeature 
	SearchRadius text, 
	Depth text  
) ;

CREATE TABLE OppositeLinesPointSamplingStrategy (
	_index_  SERIAL PRIMARY KEY,
	PointSamplingStrategyEnum text, -- element of text 
	UserDefinedStrategy text  -- element of text 
) ;

CREATE TABLE OppositeLinesProjection (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_ProjectionPlane integer, -- index into table BaseFeature 
	_ProjectionOppositeLines integer  -- index into table BaseFeature 
) ;

CREATE TABLE OppositeLinesRecomp (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseFeaturePointList integer  -- index into table BaseFeaturePointList 
) ;

CREATE TABLE OppositeLinesTransform (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseOppositeLines integer, -- index into table BaseFeature 
	_Transformation integer  -- index into table TransformationReference 
) ;

CREATE TABLE OppositePlanesActualDetermination (
	_index_  SERIAL PRIMARY KEY,
	_Checked integer, -- index into table OppositePlanesCheckedFeature 
	_Set integer  -- index into table SetFeature 
) ;

CREATE TABLE OppositePlanesBestFit (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	__BaseFeature integer[]  -- index into table SequencedBaseFeature 
) ;

CREATE TABLE OppositePlanesCast (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseFeature integer  -- index into table BaseFeature 
) ;

CREATE TABLE OppositePlanesCheckedFeature (
	_index_  SERIAL PRIMARY KEY,
	_CheckDetails integer  -- index into table OppositePlanesChecked 
) ;

CREATE TABLE OppositePlanesChecked (
	_index_  SERIAL PRIMARY KEY,
	_Measured integer, -- index into table MeasuredFeature 
	_Constructed integer  -- index into table OppositePlanesConstructionMethod 
) ;

CREATE TABLE OppositePlanesConstructionMethod (
	_index_  SERIAL PRIMARY KEY,
	_BestFit integer, -- index into table OppositePlanesBestFit 
	_Recompensated integer, -- index into table OppositePlanesRecomp 
	_Copy integer, -- index into table OppositePlanesCopy 
	_Cast integer, -- index into table OppositePlanesCast 
	_Transform integer, -- index into table OppositePlanesTransform 
	_FromScan integer  -- index into table OppositePlanesFromScan 
) ;

CREATE TABLE OppositePlanesCopy (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseOppositePlanes integer  -- index into table BaseFeature 
) ;

CREATE TABLE OppositePlanesFeatureActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	_PointList integer, -- index into table PointListActual 
	FeatureItemId text, 
	ActualComponentId text, 
	ManufacturingProcessId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	_CenterPlane integer, -- index into table ActualPlane 
	LengthVector text, 
	DepthVector text, 
	Width text, 
	WidthMin text, 
	WidthMax text, 
	Length text, 
	LengthMin text, 
	LengthMax text, 
	Depth text, 
	TaperAngle text, 
	DraftAngle text, 
	_EndRadius1 integer, -- index into table ActualEndRadius 
	_EndRadius2 integer, -- index into table ActualEndRadius 
	Form text  
) ;

CREATE TABLE OppositePlanesFeatureDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	InternalExternal text, -- element of text 
	Width text, 
	Length text, 
	_EndType integer, -- index into table SlotEnd 
	Depth text, 
	_Bottom integer, -- index into table Bottom 
	SingleOpenEnd BOOLEAN, -- element of BOOLEAN 
	_EndRadius1 integer, -- index into table EndRadius 
	_EndRadius2 integer, -- index into table EndRadius 
	TaperAngle text, 
	DraftAngle text  
) ;

CREATE TABLE OppositePlanesFeatureItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	FeatureNominalId text, 
	ParentFeatureItemId text, 
	FeatureName text, -- element of text 
	QPId text, -- element of text 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	CoordinateSystemId text, 
	_DeterminationMode integer, -- index into table OppositePlanesActualDetermination 
	_SubstituteFeatureAlgorithm integer  -- index into table FeatureOfSizeSubstituteFeatureAlgorithm 
) ;

CREATE TABLE OppositePlanesFeatureNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Name text, -- element of text 
	_PointList integer, -- index into table PointListNominal 
	FeatureDefinitionId text, -- element of text 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	_CenterPlane integer, -- index into table Plane 
	LengthVector DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	DepthVector DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	DraftVector DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE OppositePlanesFromScan (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_SurfaceFeature integer, -- index into table BaseFeature 
	SearchRadius text  
) ;

CREATE TABLE OppositePlanesPointSamplingStrategy (
	_index_  SERIAL PRIMARY KEY,
	PointSamplingStrategyEnum text, -- element of text 
	UserDefinedStrategy text  -- element of text 
) ;

CREATE TABLE OppositePlanesRecomp (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseFeaturePointList integer  -- index into table BaseFeaturePointList 
) ;

CREATE TABLE OppositePlanesTransform (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseOppositePlanes integer, -- index into table BaseFeature 
	_Transformation integer  -- index into table TransformationReference 
) ;

CREATE TABLE Or_ (
	_index_  SERIAL PRIMARY KEY,
	__And_ integer[], -- index into table And 
	__ArithmeticEqual integer[], -- index into table ArithmeticEqual 
	__BooleanEqual integer[], -- index into table BooleanEqual 
	__BooleanExpression integer[], -- index into table BooleanExpressionBase 
	__CharacteristicIs integer[], -- index into table CharacteristicIs 
	__ConstantIs integer[], -- index into table ConstantIs 
	__FeatureIsDatum integer[], -- index into table FeatureIsDatum 
	__FeatureIsInternal integer[], -- index into table FeatureIsInternal 
	__GreaterOrEqual integer[], -- index into table GreaterOrEqual 
	__GreaterThan integer[], -- index into table GreaterThan 
	__LessOrEqual integer[], -- index into table LessOrEqual 
	__LessThan integer[], -- index into table LessThan 
	__Not_ integer[], -- index into table Not 
	__Or_ integer[], -- index into table Or 
	__SamplingRigorIs integer[], -- index into table SamplingRigorIs 
	__ShapeClassIs integer[]  -- index into table ShapeClassIs 
) ;

CREATE TABLE OrderedActionGroup (
	_index_  SERIAL PRIMARY KEY,
	_WorkInstructionIds integer, -- index into table ArrayReferenceFull 
	_MeasureActionGroupFunction integer, -- index into table MeasureActionGroupFunction 
	_Steps integer  -- index into table NumberedPlanElements 
) ;

CREATE TABLE Organization (
	_index_  SERIAL PRIMARY KEY,
	Name text, -- element of text 
	_Address integer  -- index into table PhysicalAddress 
) ;

CREATE TABLE OrientationCharacteristicActualBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text, 
	DatumsOk BOOLEAN, -- element of BOOLEAN 
	Bonus text, 
	ReferenceLength text, 
	DRFTransformActualId text  
) ;

CREATE TABLE OrientationCharacteristicDefinitionBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	_DirectionFeature integer, -- index into table DirectionFeature 
	_CollectionPlane integer, -- index into table CollectionPlane 
	_IntersectionPlane integer, -- index into table IntersectionPlane 
	_OrientationPlane integer, -- index into table OrientationPlane 
	ToleranceValue text, 
	DatumReferenceFrameId text, 
	MaterialCondition text, -- element of text 
	_ZoneShape integer, -- index into table OrientationZoneShape 
	TangentPlane BOOLEAN, -- element of BOOLEAN 
	MaximumToleranceValue text, 
	ProjectedToleranceZoneValue text, 
	EachRadialElement BOOLEAN, -- element of BOOLEAN 
	EachElement BOOLEAN  -- element of BOOLEAN 
) ;

CREATE TABLE OrientationCharacteristicItemBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE OrientationCharacteristicNominalBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_CircularZoneLimit integer, -- index into table CharacteristicCircularZoneLimit 
	_DirectionalZoneLimit integer, -- index into table CharacteristicDirectionalZoneLimit 
	_RectangularZoneLimit integer  -- index into table CharacteristicRectangularZoneLimit 
) ;

CREATE TABLE OrientationCharacteristicStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_ValueStats integer, -- index into table StatsWithTolLinear 
	_MaxValueStats integer, -- index into table StatsLinear 
	_MinValueStats integer, -- index into table StatsLinear 
	CapabilityCalculationMethod text, -- element of text 
	_DatumsOkStats integer, -- index into table StatsPassFail 
	_BonusStats integer, -- index into table StatsLinear 
	_ReferenceLengthStats integer  -- index into table StatsLinear 
) ;

CREATE TABLE OrientationDiametricalZone (
	_index_  SERIAL PRIMARY KEY,
	ZoneOrientationVector DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE OrientationPlanarZone (
	_index_  SERIAL PRIMARY KEY,
	ZoneOrientationVector DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE OrientationPlane (
	_index_  SERIAL PRIMARY KEY,
	OrientationPlaneEnum text, -- element of text 
	DatumDefinitionId text  
) ;

CREATE TABLE OrientationZoneShape (
	_index_  SERIAL PRIMARY KEY,
	_DiametricalZone integer, -- index into table OrientationDiametricalZone 
	_PlanarZone integer  -- index into table OrientationPlanarZone 
) ;

CREATE TABLE OrientedLatitudeLongitudeSweep (
	_index_  SERIAL PRIMARY KEY,
	DirMeridianPrime DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	DomainLatitude text, 
	DomainLongitude text, 
	DirNorthPole DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE OriginReference (
	_index_  SERIAL PRIMARY KEY,
	FeatureItemId text, 
	ReferencedComponent text, -- element of text 
	DatumDefinitionId text  
) ;

CREATE TABLE OtherMeasureFeatureMethod (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_ChosenResourceIds integer, -- index into table ArrayReferenceFull 
	_WorkInstructionIds integer  -- index into table ArrayReferenceFull 
) ;

CREATE TABLE OtherUnits (
	_index_  SERIAL PRIMARY KEY,
	__AreaUnit integer[], -- index into table AreaUnit 
	__AngularUnit integer[], -- index into table AngularUnit 
	__ForceUnit integer[], -- index into table ForceUnit 
	__LinearUnit integer[], -- index into table LinearUnit 
	__MassUnit integer[], -- index into table MassUnit 
	__PressureUnit integer[], -- index into table PressureUnit 
	__SpeedUnit integer[], -- index into table SpeedUnit 
	__TemperatureUnit integer[], -- index into table TemperatureUnit 
	__TimeUnit integer[]  -- index into table TimeUnit 
) ;

CREATE TABLE PMIDisplaySet (
	_index_  SERIAL PRIMARY KEY,
	__PMIDisplay integer[]  -- index into table PMIDisplay 
) ;

CREATE TABLE PMIDisplay (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	Color integer[3], -- list of integer 
	_Plane integer, -- index into table PlaneX 
	_Texts integer, -- index into table Texts 
	__Leader integer[], -- index into table Leader 
	__LeaderCircular integer[], -- index into table LeaderCircular 
	__LeaderDoubleHead integer[], -- index into table LeaderDoubleHead 
	__LeaderDoubleHeadCircular integer[], -- index into table LeaderDoubleHeadCircular 
	__LeaderDoubleHeadExtend integer[], -- index into table LeaderDoubleHeadExtend 
	__LeaderExtend integer[], -- index into table LeaderExtend 
	_WitnessLines integer, -- index into table WitnessLines 
	_Frames integer, -- index into table Frames 
	Balloon text, 
	_Reference integer  -- index into table ElementReferenceFull 
) ;

CREATE TABLE ParallelismCharacteristicActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text, 
	DatumsOk BOOLEAN, -- element of BOOLEAN 
	Bonus text, 
	ReferenceLength text, 
	DRFTransformActualId text  
) ;

CREATE TABLE ParallelismCharacteristicDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	_DirectionFeature integer, -- index into table DirectionFeature 
	_CollectionPlane integer, -- index into table CollectionPlane 
	_IntersectionPlane integer, -- index into table IntersectionPlane 
	_OrientationPlane integer, -- index into table OrientationPlane 
	ToleranceValue text, 
	DatumReferenceFrameId text, 
	MaterialCondition text, -- element of text 
	_ZoneShape integer, -- index into table OrientationZoneShape 
	TangentPlane BOOLEAN, -- element of BOOLEAN 
	MaximumToleranceValue text, 
	ProjectedToleranceZoneValue text, 
	EachRadialElement BOOLEAN, -- element of BOOLEAN 
	EachElement BOOLEAN  -- element of BOOLEAN 
) ;

CREATE TABLE ParallelismCharacteristicItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE ParallelismCharacteristicNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_CircularZoneLimit integer, -- index into table CharacteristicCircularZoneLimit 
	_DirectionalZoneLimit integer, -- index into table CharacteristicDirectionalZoneLimit 
	_RectangularZoneLimit integer  -- index into table CharacteristicRectangularZoneLimit 
) ;

CREATE TABLE ParallelismCharacteristicStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_ValueStats integer, -- index into table StatsWithTolLinear 
	_MaxValueStats integer, -- index into table StatsLinear 
	_MinValueStats integer, -- index into table StatsLinear 
	CapabilityCalculationMethod text, -- element of text 
	_DatumsOkStats integer, -- index into table StatsPassFail 
	_BonusStats integer, -- index into table StatsLinear 
	_ReferenceLengthStats integer  -- index into table StatsLinear 
) ;

CREATE TABLE PartFamily (
	_index_  SERIAL PRIMARY KEY,
	_PrimaryShapeClass integer, -- index into table ShapeClass 
	MinimumTolerance text, 
	_MinimumBoundingBox integer, -- index into table BoundingBox 
	_PrimaryManufacturingMethod integer  -- index into table ManufacturingMethod 
) ;

CREATE TABLE PartNoteSet (
	_index_  SERIAL PRIMARY KEY,
	N text,-- attribute
	__PartNote integer[]  -- index into table PartNote 
) ;

CREATE TABLE PartNote (
	_index_  SERIAL PRIMARY KEY,
	color text NOT NULL,-- attribute
	transparency text NOT NULL,-- attribute
	hidden text NOT NULL,-- attribute
	size text NOT NULL,-- attribute
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	Text text, -- element of text 
	_PartNoteIds integer  -- index into table ArrayReference 
) ;

CREATE TABLE PartSet (
	_index_  SERIAL PRIMARY KEY,
	N text,-- attribute
	__Part integer[]  -- index into table Part 
) ;

CREATE TABLE Part (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Name text, -- element of text 
	QPId text, -- element of text 
	ModelNumber text, -- element of text 
	Description text, -- element of text 
	Version text, -- element of text 
	Material text, -- element of text 
	_SecurityClassification integer, -- index into table SecurityClassification 
	ExportControlClassification text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_CharacteristicNominalIds integer, -- index into table ArrayReferenceFull 
	_NoteIds integer, -- index into table ArrayReferenceFull 
	_PartNoteIds integer, -- index into table ArrayReferenceFull 
	_DatumDefinitionIds integer, -- index into table ArrayReferenceFull 
	_DatumTargetDefinitionIds integer, -- index into table ArrayReferenceFull 
	_DatumReferenceFrameIds integer, -- index into table ArrayReferenceFull 
	_DefinitionInternal integer, -- index into table InternalPartAssembly 
	_DefinitionExternal integer, -- index into table DefinitionExternal 
	_PartFamily integer  -- index into table PartFamily 
) ;

CREATE TABLE PartialInspection (
	_index_  SERIAL PRIMARY KEY,
	BaselineProductNumber text, -- element of text 
	BaselineProductVersion text, -- element of text 
	ReasonForPartialInspection text  -- element of text 
) ;

CREATE TABLE PartiallyOrderedActionGroup (
	_index_  SERIAL PRIMARY KEY,
	_WorkInstructionIds integer, -- index into table ArrayReferenceFull 
	_MeasureActionGroupFunction integer, -- index into table MeasureActionGroupFunction 
	_StepsWithPredecessors integer  -- index into table StepsWithPredecessors 
) ;

CREATE TABLE PathTriangulationCore (
	_index_  SERIAL PRIMARY KEY,
	Edges text, 
	EdgesBinary text  
) ;

CREATE TABLE PathTriangulation (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	_PathTriangulationCore integer, -- index into table PathTriangulationCore 
	_MeshTriangle integer  -- index into table ElementReference 
) ;

CREATE TABLE PatternFeatureActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	_PointList integer, -- index into table PointListActual 
	FeatureItemId text, 
	ActualComponentId text, 
	ManufacturingProcessId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	_NotedEventIds integer  -- index into table ArrayReferenceFull 
) ;

CREATE TABLE PatternFeatureDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer  -- index into table Attributes 
) ;

CREATE TABLE PatternFeatureItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	FeatureNominalId text, 
	ParentFeatureItemId text, 
	FeatureName text, -- element of text 
	QPId text, -- element of text 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	CoordinateSystemId text  
) ;

CREATE TABLE PatternFeatureNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Name text, -- element of text 
	_PointList integer, -- index into table PointListNominal 
	FeatureDefinitionId text, -- element of text 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	_FeatureNominalIds integer  -- index into table ArrayReferenceFull 
) ;

CREATE TABLE PerpendicularityCharacteristicActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text, 
	DatumsOk BOOLEAN, -- element of BOOLEAN 
	Bonus text, 
	ReferenceLength text, 
	DRFTransformActualId text  
) ;

CREATE TABLE PerpendicularityCharacteristicDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	_DirectionFeature integer, -- index into table DirectionFeature 
	_CollectionPlane integer, -- index into table CollectionPlane 
	_IntersectionPlane integer, -- index into table IntersectionPlane 
	_OrientationPlane integer, -- index into table OrientationPlane 
	ToleranceValue text, 
	DatumReferenceFrameId text, 
	MaterialCondition text, -- element of text 
	_ZoneShape integer, -- index into table OrientationZoneShape 
	TangentPlane BOOLEAN, -- element of BOOLEAN 
	MaximumToleranceValue text, 
	ProjectedToleranceZoneValue text, 
	EachRadialElement BOOLEAN, -- element of BOOLEAN 
	EachElement BOOLEAN  -- element of BOOLEAN 
) ;

CREATE TABLE PerpendicularityCharacteristicItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE PerpendicularityCharacteristicNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_CircularZoneLimit integer, -- index into table CharacteristicCircularZoneLimit 
	_DirectionalZoneLimit integer, -- index into table CharacteristicDirectionalZoneLimit 
	_RectangularZoneLimit integer  -- index into table CharacteristicRectangularZoneLimit 
) ;

CREATE TABLE PerpendicularityCharacteristicStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_ValueStats integer, -- index into table StatsWithTolLinear 
	_MaxValueStats integer, -- index into table StatsLinear 
	_MinValueStats integer, -- index into table StatsLinear 
	CapabilityCalculationMethod text, -- element of text 
	_DatumsOkStats integer, -- index into table StatsPassFail 
	_BonusStats integer, -- index into table StatsLinear 
	_ReferenceLengthStats integer  -- index into table StatsLinear 
) ;

CREATE TABLE PhysicalAddress (
	_index_  SERIAL PRIMARY KEY,
	_Description integer, -- index into table AddressDescription 
	InternalLocation text, -- element of text 
	StreetNumber text, -- element of text 
	Street text, -- element of text 
	PostalBox text, -- element of text 
	Town text, -- element of text 
	Region text, -- element of text 
	PostalCode text, -- element of text 
	Country text, -- element of text 
	FacsimileNumber text, -- element of text 
	TelephoneNumber text, -- element of text 
	ElectronicMailAddress text, -- element of text 
	TelexNumber text  -- element of text 
) ;

CREATE TABLE PhysicalModel (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	Name text, -- element of text 
	Version text, -- element of text 
	Description text, -- element of text 
	_Author integer, -- index into table Author 
	Location text, -- element of text 
	ModelNumber text  -- element of text 
) ;

CREATE TABLE PickSomeActionGroup (
	_index_  SERIAL PRIMARY KEY,
	_WorkInstructionIds integer, -- index into table ArrayReferenceFull 
	_MeasureActionGroupFunction integer, -- index into table MeasureActionGroupFunction 
	_Steps integer, -- index into table UnnumberedPlanElements 
	NumberOfSteps DECIMAL(10,2)  -- element of DECIMAL(10,2) 
) ;

CREATE TABLE PlanElementBase (
	_index_  SERIAL PRIMARY KEY,
	_WorkInstructionIds integer  -- index into table ArrayReferenceFull 
) ;

CREATE TABLE Plane23Core (
	_index_  SERIAL PRIMARY KEY,
	domainU text,-- attribute
	domainV text,-- attribute
	form text NOT NULL,-- attribute
	Origin DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	DirU DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	DirV DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE Plane23 (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	_Plane23Core integer, -- index into table Plane23Core 
	_Transform integer  -- index into table ElementReference 
) ;

CREATE TABLE PlaneActualDetermination (
	_index_  SERIAL PRIMARY KEY,
	_Checked integer, -- index into table PlaneCheckedFeature 
	_Set integer  -- index into table SetFeature 
) ;

CREATE TABLE PlaneBestFit (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	__BaseFeature integer[]  -- index into table SequencedBaseFeature 
) ;

CREATE TABLE PlaneCast (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseFeature integer  -- index into table BaseFeature 
) ;

CREATE TABLE PlaneCheckedFeature (
	_index_  SERIAL PRIMARY KEY,
	_CheckDetails integer  -- index into table PlaneChecked 
) ;

CREATE TABLE PlaneChecked (
	_index_  SERIAL PRIMARY KEY,
	_Measured integer, -- index into table MeasuredFeature 
	_Constructed integer  -- index into table PlaneConstructionMethod 
) ;

CREATE TABLE PlaneClipping (
	_index_  SERIAL PRIMARY KEY,
	index text,-- attribute
	enable text NOT NULL,-- attribute
	color text NOT NULL,-- attribute
	transparency text NOT NULL,-- attribute
	hidden text NOT NULL,-- attribute
	size text NOT NULL,-- attribute
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	_Plane integer  -- index into table Plane 
) ;

CREATE TABLE PlaneConstructionMethod (
	_index_  SERIAL PRIMARY KEY,
	_BestFit integer, -- index into table PlaneBestFit 
	_Recompensated integer, -- index into table PlaneRecomp 
	_Midplane integer, -- index into table PlaneMidplane 
	_Offset_ integer, -- index into table PlaneOffset 
	_Perpendicular integer, -- index into table PlanePerpendicular 
	_Parallel integer, -- index into table PlaneParallel 
	_Copy integer, -- index into table PlaneCopy 
	_Cast integer, -- index into table PlaneCast 
	_TangentThrough integer, -- index into table PlaneTangentThrough 
	_Transform integer, -- index into table PlaneTransform 
	_Extract integer  -- index into table PlaneExtract 
) ;

CREATE TABLE PlaneCopy (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BasePlane integer  -- index into table BaseFeature 
) ;

CREATE TABLE PlaneExtract (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_SurfaceFeature integer  -- index into table BaseFeature 
) ;

CREATE TABLE PlaneFeatureActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	_PointList integer, -- index into table PointListActual 
	FeatureItemId text, 
	ActualComponentId text, 
	ManufacturingProcessId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	Location text, 
	Normal text, 
	PolyLine text, 
	Form text  
) ;

CREATE TABLE PlaneFeatureDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer  -- index into table Attributes 
) ;

CREATE TABLE PlaneFeatureItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	FeatureNominalId text, 
	ParentFeatureItemId text, 
	FeatureName text, -- element of text 
	QPId text, -- element of text 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	CoordinateSystemId text, 
	_DeterminationMode integer, -- index into table PlaneActualDetermination 
	_SubstituteFeatureAlgorithm integer  -- index into table NonFeatureOfSizeSubstituteFeatureAlgorithm 
) ;

CREATE TABLE PlaneFeatureNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Name text, -- element of text 
	_PointList integer, -- index into table PointListNominal 
	FeatureDefinitionId text, -- element of text 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Location DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	Normal DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	PolyLine text  
) ;

CREATE TABLE PlaneMidplane (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	__BasePlane integer[]  -- index into table SequencedBaseFeature 
) ;

CREATE TABLE PlaneOffset (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BasePlane integer, -- index into table BaseFeature 
	Offset_ text  
) ;

CREATE TABLE PlaneParallel (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_ParallelFeature integer, -- index into table BaseFeature 
	_PointFeature integer  -- index into table BaseFeature 
) ;

CREATE TABLE PlanePerpendicular (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_PerpendicularFeature integer, -- index into table BaseFeature 
	_PointFeature integer  -- index into table BaseFeature 
) ;

CREATE TABLE PlanePointSamplingStrategy (
	_index_  SERIAL PRIMARY KEY,
	PointSamplingStrategyEnum text, -- element of text 
	UserDefinedStrategy text  -- element of text 
) ;

CREATE TABLE PlaneRecomp (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseFeaturePointList integer  -- index into table BaseFeaturePointList 
) ;

CREATE TABLE PlaneReference (
	_index_  SERIAL PRIMARY KEY,
	color text NOT NULL,-- attribute
	transparency text NOT NULL,-- attribute
	hidden text NOT NULL,-- attribute
	size text NOT NULL,-- attribute
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	_Plane integer  -- index into table Plane 
) ;

CREATE TABLE PlaneTangentThrough (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_TangentFeature integer, -- index into table BaseFeature 
	_PointFeature integer  -- index into table BaseFeature 
) ;

CREATE TABLE PlaneTransform (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BasePlane integer, -- index into table BaseFeature 
	_Transformation integer  -- index into table TransformationReference 
) ;

CREATE TABLE Plane (
	_index_  SERIAL PRIMARY KEY,
	Point DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	Normal DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE PlaneX (
	_index_  SERIAL PRIMARY KEY,
	Point DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	Normal DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	Direction DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE Plus (
	_index_  SERIAL PRIMARY KEY,
	__ArithmeticCharacteristicParameter integer[], -- index into table ArithmeticCharacteristicParameter 
	__ArithmeticConstant integer[], -- index into table ArithmeticConstant 
	__ArithmeticExpression integer[], -- index into table ArithmeticExpressionBase 
	__ArithmeticFeatureParameter integer[], -- index into table ArithmeticFeatureParameter 
	__DividedBy integer[], -- index into table DividedBy 
	__FeatureArea integer[], -- index into table FeatureArea 
	__FeatureLength integer[], -- index into table FeatureLength 
	__Minus integer[], -- index into table Minus 
	__Negate integer[], -- index into table Negate 
	__Plus integer[], -- index into table Plus 
	__Times integer[]  -- index into table Times 
) ;

CREATE TABLE PointAccuracyTest (
	_index_  SERIAL PRIMARY KEY,
	Accuracy text  
) ;

CREATE TABLE PointActualDetermination (
	_index_  SERIAL PRIMARY KEY,
	_Checked integer, -- index into table PointCheckedFeature 
	_Set integer  -- index into table SetFeature 
) ;

CREATE TABLE PointAndVector (
	_index_  SERIAL PRIMARY KEY,
	StartPoint DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	Vector DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE PointAuxiliary (
	_index_  SERIAL PRIMARY KEY,
	color text NOT NULL,-- attribute
	transparency text NOT NULL,-- attribute
	hidden text NOT NULL,-- attribute
	size text NOT NULL,-- attribute
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	XYZ DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE PointCheckedFeature (
	_index_  SERIAL PRIMARY KEY,
	_CheckDetails integer  -- index into table PointChecked 
) ;

CREATE TABLE PointChecked (
	_index_  SERIAL PRIMARY KEY,
	_Measured integer, -- index into table MeasuredFeature 
	_Constructed integer  -- index into table PointConstructionMethod 
) ;

CREATE TABLE PointCloudSet (
	_index_  SERIAL PRIMARY KEY,
	N text,-- attribute
	__PointCloud integer[]  -- index into table PointCloud 
) ;

CREATE TABLE PointCloud (
	_index_  SERIAL PRIMARY KEY,
	color text NOT NULL,-- attribute
	transparency text NOT NULL,-- attribute
	hidden text NOT NULL,-- attribute
	size text NOT NULL,-- attribute
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	Points DOUBLE PRECISION, -- element of DOUBLE PRECISION 
	PointsBinary text, 
	Normals text, 
	NormalsBinary text, 
	PointsVisible text, 
	PointsVisibleBinary text, 
	PointsHidden text, 
	PointsHiddenBinary text, 
	PointsColor text, 
	PointsColorBinary text  
) ;

CREATE TABLE PointConstructionMethod (
	_index_  SERIAL PRIMARY KEY,
	_Intersection integer, -- index into table PointFeatureIntersection 
	_Projection integer, -- index into table PointFeatureProjection 
	_Copy integer, -- index into table PointFeatureCopy 
	_Cast integer, -- index into table PointFeatureCast 
	_Transform integer, -- index into table PointFeatureTransform 
	_FromCone integer, -- index into table PointFeatureFromCone 
	_FromScan integer, -- index into table PointFeatureFromScan 
	_CenterOfGravity integer, -- index into table PointFeatureCenterOfGravity 
	_Pierce integer, -- index into table PointFeaturePierce 
	_MidPoint integer, -- index into table PointFeatureMidPoint 
	_MovePoint integer, -- index into table PointFeatureMovePoint 
	_MovePointVector integer, -- index into table PointFeatureMovePointVector 
	_MovePointAxis integer, -- index into table PointFeatureMovePointAxis 
	_Extreme integer  -- index into table PointFeatureExtreme 
) ;

CREATE TABLE PointDefinedCurveActualDetermination (
	_index_  SERIAL PRIMARY KEY,
	_Checked integer, -- index into table PointDefinedCurveCheckedFeature 
	_Set integer  -- index into table SetFeature 
) ;

CREATE TABLE PointDefinedCurveBestFit (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	__BaseFeature integer[]  -- index into table SequencedBaseFeature 
) ;

CREATE TABLE PointDefinedCurveCheckedFeature (
	_index_  SERIAL PRIMARY KEY,
	_CheckDetails integer  -- index into table PointDefinedCurveChecked 
) ;

CREATE TABLE PointDefinedCurveChecked (
	_index_  SERIAL PRIMARY KEY,
	_Measured integer, -- index into table MeasuredFeature 
	_Constructed integer  -- index into table PointDefinedCurveConstructionMethod 
) ;

CREATE TABLE PointDefinedCurveConstructionMethod (
	_index_  SERIAL PRIMARY KEY,
	_BestFit integer, -- index into table PointDefinedCurveBestFit 
	_Recompensated integer, -- index into table PointDefinedCurveRecomp 
	_Copy integer, -- index into table PointDefinedCurveCopy 
	_Transform integer, -- index into table PointDefinedCurveTransform 
	_FromScan integer, -- index into table PointDefinedCurveFromScan 
	_Extract integer  -- index into table PointDefinedCurveExtract 
) ;

CREATE TABLE PointDefinedCurveCopy (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BasePointDefinedCurve integer  -- index into table BaseFeature 
) ;

CREATE TABLE PointDefinedCurveExtract (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_CurveFeature integer  -- index into table BaseFeature 
) ;

CREATE TABLE PointDefinedCurveFeatureActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	_PointList integer, -- index into table PointListActual 
	FeatureItemId text, 
	ActualComponentId text, 
	ManufacturingProcessId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	_DefiningPoints integer, -- index into table TargetPointsActual 
	_Plane integer, -- index into table ActualPlane 
	Form text  
) ;

CREATE TABLE PointDefinedCurveFeatureDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer  -- index into table Attributes 
) ;

CREATE TABLE PointDefinedCurveFeatureItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	FeatureNominalId text, 
	ParentFeatureItemId text, 
	FeatureName text, -- element of text 
	QPId text, -- element of text 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	CoordinateSystemId text, 
	_DeterminationMode integer, -- index into table PointDefinedCurveActualDetermination 
	_SubstituteFeatureAlgorithm integer  -- index into table CurveSubstituteFeatureAlgorithm 
) ;

CREATE TABLE PointDefinedCurveFeatureNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Name text, -- element of text 
	_PointList integer, -- index into table PointListNominal 
	FeatureDefinitionId text, -- element of text 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	_DefiningPoints integer, -- index into table TargetPointsNominal 
	_Plane integer  -- index into table Plane 
) ;

CREATE TABLE PointDefinedCurveFromScan (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_SurfaceFeature integer, -- index into table BaseFeature 
	SearchRadius text  
) ;

CREATE TABLE PointDefinedCurvePointSamplingStrategy (
	_index_  SERIAL PRIMARY KEY,
	PointSamplingStrategyEnum text, -- element of text 
	UserDefinedStrategy text  -- element of text 
) ;

CREATE TABLE PointDefinedCurveRecomp (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseFeaturePointList integer  -- index into table BaseFeaturePointList 
) ;

CREATE TABLE PointDefinedCurveTransform (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BasePointDefinedCurve integer, -- index into table BaseFeature 
	_Transformation integer  -- index into table TransformationReference 
) ;

CREATE TABLE PointDefinedSurfaceActualDetermination (
	_index_  SERIAL PRIMARY KEY,
	_Checked integer, -- index into table PointDefinedSurfaceCheckedFeature 
	_Set integer  -- index into table SetFeature 
) ;

CREATE TABLE PointDefinedSurfaceBestFit (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	__BaseFeature integer[]  -- index into table SequencedBaseFeature 
) ;

CREATE TABLE PointDefinedSurfaceCheckedFeature (
	_index_  SERIAL PRIMARY KEY,
	_CheckDetails integer  -- index into table PointDefinedSurfaceChecked 
) ;

CREATE TABLE PointDefinedSurfaceChecked (
	_index_  SERIAL PRIMARY KEY,
	_Measured integer, -- index into table MeasuredFeature 
	_Constructed integer  -- index into table PointDefinedSurfaceConstructionMethod 
) ;

CREATE TABLE PointDefinedSurfaceConstructionMethod (
	_index_  SERIAL PRIMARY KEY,
	_BestFit integer, -- index into table PointDefinedSurfaceBestFit 
	_Recompensated integer, -- index into table PointDefinedSurfaceRecomp 
	_Copy integer, -- index into table PointDefinedSurfaceCopy 
	_Transform integer, -- index into table PointDefinedSurfaceTransform 
	_Extract integer  -- index into table PointDefinedSurfaceExtract 
) ;

CREATE TABLE PointDefinedSurfaceCopy (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BasePointDefinedSurface integer  -- index into table BaseFeature 
) ;

CREATE TABLE PointDefinedSurfaceExtract (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_SurfaceFeature integer  -- index into table BaseFeature 
) ;

CREATE TABLE PointDefinedSurfaceFeatureActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	_PointList integer, -- index into table PointListActual 
	FeatureItemId text, 
	ActualComponentId text, 
	ManufacturingProcessId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	_DefiningPoints integer, -- index into table TargetPointsActual 
	Form text  
) ;

CREATE TABLE PointDefinedSurfaceFeatureDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer  -- index into table Attributes 
) ;

CREATE TABLE PointDefinedSurfaceFeatureItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	FeatureNominalId text, 
	ParentFeatureItemId text, 
	FeatureName text, -- element of text 
	QPId text, -- element of text 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	CoordinateSystemId text, 
	_DeterminationMode integer, -- index into table PointDefinedSurfaceActualDetermination 
	_SubstituteFeatureAlgorithm integer  -- index into table SurfaceSubstituteFeatureAlgorithm 
) ;

CREATE TABLE PointDefinedSurfaceFeatureNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Name text, -- element of text 
	_PointList integer, -- index into table PointListNominal 
	FeatureDefinitionId text, -- element of text 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	_DefiningPoints integer  -- index into table TargetPointsNominal 
) ;

CREATE TABLE PointDefinedSurfacePointSamplingStrategy (
	_index_  SERIAL PRIMARY KEY,
	PointSamplingStrategyEnum text, -- element of text 
	UserDefinedStrategy text  -- element of text 
) ;

CREATE TABLE PointDefinedSurfaceRecomp (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseFeaturePointList integer  -- index into table BaseFeaturePointList 
) ;

CREATE TABLE PointDefinedSurfaceTransform (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BasePointDefinedSurface integer, -- index into table BaseFeature 
	_Transformation integer  -- index into table TransformationReference 
) ;

CREATE TABLE PointDeviationStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_MeasurePointActualIds integer, -- index into table StatsArrayId 
	_DeviationStats integer  -- index into table StatsLinear 
) ;

CREATE TABLE PointDeviation (
	_index_  SERIAL PRIMARY KEY,
	MeasurePointActualId text, 
	Deviation text  
) ;

CREATE TABLE PointDeviationsStatsEval (
	_index_  SERIAL PRIMARY KEY,
	__PointDeviationStats integer[]  -- index into table PointDeviationStatsEval 
) ;

CREATE TABLE PointDeviations (
	_index_  SERIAL PRIMARY KEY,
	__PointDeviation integer[]  -- index into table PointDeviation 
) ;

CREATE TABLE PointEntity (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	XYZ DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE PointFeatureActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	_PointList integer, -- index into table PointListActual 
	FeatureItemId text, 
	ActualComponentId text, 
	ManufacturingProcessId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	Location text, 
	Normal text  
) ;

CREATE TABLE PointFeatureCast (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseFeature integer  -- index into table BaseFeature 
) ;

CREATE TABLE PointFeatureCenterOfGravity (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	__BaseFeature integer[]  -- index into table SequencedBaseFeature 
) ;

CREATE TABLE PointFeatureCopy (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BasePointFeature integer  -- index into table BaseFeature 
) ;

CREATE TABLE PointFeatureDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer  -- index into table Attributes 
) ;

CREATE TABLE PointFeatureExtreme (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseFeature integer, -- index into table BaseFeature 
	Minimum BOOLEAN, -- element of BOOLEAN 
	_BaseAxisFeature integer, -- index into table BaseFeature 
	Vector DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	Radial text, -- element of text 
	Xaxis text, -- element of text 
	Yaxis text, -- element of text 
	Zaxis text  -- element of text 
) ;

CREATE TABLE PointFeatureFromCone (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseCone integer  -- index into table BaseFeature 
) ;

CREATE TABLE PointFeatureFromScan (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_SurfaceFeature integer, -- index into table BaseFeature 
	SearchRadius text, 
	RetrievalMethod text  -- element of text 
) ;

CREATE TABLE PointFeatureIntersection (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	__IntersectionFeature integer[]  -- index into table SequencedBaseFeature 
) ;

CREATE TABLE PointFeatureItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	FeatureNominalId text, 
	ParentFeatureItemId text, 
	FeatureName text, -- element of text 
	QPId text, -- element of text 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	CoordinateSystemId text, 
	_DeterminationMode integer  -- index into table PointActualDetermination 
) ;

CREATE TABLE PointFeatureMidPoint (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	__BaseFeature integer[]  -- index into table SequencedBaseFeature 
) ;

CREATE TABLE PointFeatureMovePointAxis (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseLocationFeature integer, -- index into table BaseFeature 
	Distance text, 
	_BaseAxisFeature integer  -- index into table BaseFeature 
) ;

CREATE TABLE PointFeatureMovePoint (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseFeature integer, -- index into table BaseFeature 
	Offset_ text, 
	_DirectionalOffset integer  -- index into table DirectionalOffset 
) ;

CREATE TABLE PointFeatureMovePointVector (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseFeature integer, -- index into table BaseFeature 
	Distance text, 
	Vector DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE PointFeatureNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Name text, -- element of text 
	_PointList integer, -- index into table PointListNominal 
	FeatureDefinitionId text, -- element of text 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Location DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	Normal DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE PointFeaturePierce (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_SurfaceFeature integer, -- index into table BaseFeature 
	_CurveFeature integer  -- index into table BaseFeature 
) ;

CREATE TABLE PointFeatureProjection (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_ProjectionPlane integer, -- index into table BaseFeature 
	_ProjectionFeature integer  -- index into table BaseFeature 
) ;

CREATE TABLE PointFeatureTransform (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BasePointFeature integer, -- index into table BaseFeature 
	_Transformation integer  -- index into table TransformationReference 
) ;

CREATE TABLE PointIndex (
	_index_  SERIAL PRIMARY KEY,
	Single DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_Range integer, -- index into table PointRange 
	All_ text  -- element of text 
) ;

CREATE TABLE PointListActual (
	_index_  SERIAL PRIMARY KEY,
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
	combinedUncertainty text NOT NULL,-- attribute
	meanError text NOT NULL,-- attribute
	xCombinedUncertainty text NOT NULL,-- attribute
	xMeanError text NOT NULL,-- attribute
	yCombinedUncertainty text NOT NULL,-- attribute
	yMeanError text NOT NULL,-- attribute
	zCombinedUncertainty text NOT NULL,-- attribute
	zMeanError text NOT NULL,-- attribute
	__MeasurePoint integer[]  -- index into table MeasurePointActual 
) ;

CREATE TABLE PointListNominal (
	_index_  SERIAL PRIMARY KEY,
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
	__MeasurePoint integer[]  -- index into table MeasurePointNominal 
) ;

CREATE TABLE PointPointSamplingStrategy (
	_index_  SERIAL PRIMARY KEY,
	PointSamplingStrategyEnum text, -- element of text 
	UserDefinedStrategy text  -- element of text 
) ;

CREATE TABLE PointProfileCharacteristicActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text, 
	WorstPositiveDeviation text, 
	WorstNegativeDeviation text, 
	_PointDeviations integer, -- index into table PointDeviations 
	DatumsOk BOOLEAN, -- element of BOOLEAN 
	DRFTransformActualId text, 
	_SecondCompositeSegmentProfileActual integer, -- index into table CompositeSegmentProfileActual 
	_ThirdCompositeSegmentProfileActual integer, -- index into table CompositeSegmentProfileActual 
	_FourthCompositeSegmentProfileActual integer  -- index into table CompositeSegmentProfileActual 
) ;

CREATE TABLE PointProfileCharacteristicDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	_DirectionFeature integer, -- index into table DirectionFeature 
	_CollectionPlane integer, -- index into table CollectionPlane 
	_IntersectionPlane integer, -- index into table IntersectionPlane 
	_OrientationPlane integer, -- index into table OrientationPlane 
	ToleranceValue text, 
	OuterDisposition text, 
	UnequallyDisposedZone text, 
	OffsetZone BOOLEAN, -- element of BOOLEAN 
	_SecondCompositeSegmentProfileDefinition integer, -- index into table CompositeSegmentProfileDefinition 
	_ThirdCompositeSegmentProfileDefinition integer, -- index into table CompositeSegmentProfileDefinition 
	_FourthCompositeSegmentProfileDefinition integer, -- index into table CompositeSegmentProfileDefinition 
	DatumReferenceFrameId text, 
	OrientationOnly BOOLEAN  -- element of BOOLEAN 
) ;

CREATE TABLE PointProfileCharacteristicItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE PointProfileCharacteristicNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	TargetValue text  
) ;

CREATE TABLE PointProfileCharacteristicStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_ValueStats integer, -- index into table StatsWithTolLinear 
	_MaxValueStats integer, -- index into table StatsLinear 
	_MinValueStats integer, -- index into table StatsLinear 
	CapabilityCalculationMethod text, -- element of text 
	_WorstPositiveDeviationStats integer, -- index into table StatsLinear 
	_WorstNegativeDeviationStats integer, -- index into table StatsLinear 
	_PointDeviationsStats integer, -- index into table PointDeviationsStatsEval 
	_DatumsOkStats integer, -- index into table StatsPassFail 
	_CompositeSegmentsStats integer  -- index into table CompositeSegmentsProfileStatsEval 
) ;

CREATE TABLE PointRange (
	_index_  SERIAL PRIMARY KEY,
	Start DECIMAL(10,2), -- element of DECIMAL(10,2) 
	Stop DECIMAL(10,2)  -- element of DECIMAL(10,2) 
) ;

CREATE TABLE PointRuleBase (
	_index_  SERIAL PRIMARY KEY,
	name text NOT NULL -- attribute
) ;

CREATE TABLE PointSet (
	_index_  SERIAL PRIMARY KEY,
	N text,-- attribute
	__Point integer[]  -- index into table PointEntity 
) ;

CREATE TABLE PointWithName (
	_index_  SERIAL PRIMARY KEY,
	Point DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	Name text  -- element of text 
) ;

CREATE TABLE PointWithNormalBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	Point DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	Normal DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE Polyline12Core (
	_index_  SERIAL PRIMARY KEY,
	domain text,-- attribute
	Points text, 
	PointsBinary text  
) ;

CREATE TABLE Polyline12 (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	_Polyline12Core integer  -- index into table Polyline12Core 
) ;

CREATE TABLE Polyline13Core (
	_index_  SERIAL PRIMARY KEY,
	domain text,-- attribute
	Points DOUBLE PRECISION, -- element of DOUBLE PRECISION 
	PointsBinary text  
) ;

CREATE TABLE Polyline13 (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	_Polyline13Core integer, -- index into table Polyline13Core 
	_Transform integer  -- index into table ElementReference 
) ;

CREATE TABLE PositionCharacteristicActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text, 
	__ZoneData integer[], -- index into table ZoneData 
	DatumsOk BOOLEAN, -- element of BOOLEAN 
	DRFTransformActualId text, 
	_SecondCompositeSegmentPositionActual integer, -- index into table CompositeSegmentPositionActual 
	_ThirdCompositeSegmentPositionActual integer, -- index into table CompositeSegmentPositionActual 
	_FourthCompositeSegmentPositionActual integer  -- index into table CompositeSegmentPositionActual 
) ;

CREATE TABLE PositionCharacteristicDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	_DirectionFeature integer, -- index into table DirectionFeature 
	_CollectionPlane integer, -- index into table CollectionPlane 
	_IntersectionPlane integer, -- index into table IntersectionPlane 
	_OrientationPlane integer, -- index into table OrientationPlane 
	ToleranceValue text, 
	DatumReferenceFrameId text, 
	MaterialCondition text, -- element of text 
	_ZoneShape integer, -- index into table PositionZoneShape 
	ProjectedToleranceZoneValue text, 
	_SecondCompositeSegmentPositionDefinition integer, -- index into table CompositeSegmentPositionDefinition 
	_ThirdCompositeSegmentPositionDefinition integer, -- index into table CompositeSegmentPositionDefinition 
	_FourthCompositeSegmentPositionDefinition integer, -- index into table CompositeSegmentPositionDefinition 
	ToPointToleranceValue text, 
	OrientationOnly BOOLEAN  -- element of BOOLEAN 
) ;

CREATE TABLE PositionCharacteristicItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE PositionCharacteristicNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_ZoneLimit integer  -- index into table CharacteristicDirectionalZoneLimit 
) ;

CREATE TABLE PositionCharacteristicStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_ValueStats integer, -- index into table StatsWithTolLinear 
	_MaxValueStats integer, -- index into table StatsLinear 
	_MinValueStats integer, -- index into table StatsLinear 
	_DatumsOkStats integer, -- index into table StatsPassFail 
	CapabilityCalculationMethod text, -- element of text 
	_CompositeSegmentsStats integer  -- index into table CompositeSegmentsPositionStatsEval 
) ;

CREATE TABLE PositionDiametricalZone (
	_index_  SERIAL PRIMARY KEY,
	Dimensionality text, -- element of text 
	ZoneOrientationVector DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	ElongatedZone BOOLEAN  -- element of BOOLEAN 
) ;

CREATE TABLE PositionNonDiametricalZone (
	_index_  SERIAL PRIMARY KEY,
	Dimensionality text, -- element of text 
	ZoneOrientationVector DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	BoundaryZone BOOLEAN  -- element of BOOLEAN 
) ;

CREATE TABLE PositionSphericalZone (
	_index_  SERIAL PRIMARY KEY,
	Dimensionality text  -- element of text 
) ;

CREATE TABLE PositionZoneShape (
	_index_  SERIAL PRIMARY KEY,
	_SphericalZone integer, -- index into table PositionSphericalZone 
	_DiametricalZone integer, -- index into table PositionDiametricalZone 
	_NonDiametricalZone integer  -- index into table PositionNonDiametricalZone 
) ;

CREATE TABLE PreInspectionTraceability (
	_index_  SERIAL PRIMARY KEY,
	_InspectingOrganization integer, -- index into table Organization 
	_CustomerOrganization integer, -- index into table CustomerOrganization 
	SupplierCode text, -- element of text 
	PurchaseOrderNumber text, -- element of text 
	OrderNumber text, -- element of text 
	_AsmPathIds integer, -- index into table ArrayReference 
	ReportNumber text, -- element of text 
	InspectionScope text, -- element of text 
	InspectionMode text, -- element of text 
	_PartialInspection integer, -- index into table PartialInspection 
	_NotableEvents integer, -- index into table NotableEvents 
	_InspectionSoftwareItems integer, -- index into table InspectionSoftwareItems 
	_InspectionProgram integer, -- index into table InspectionProgram 
	_SecurityClassification integer, -- index into table SecurityClassification 
	_PlantLocation integer, -- index into table Location 
	_ReferencedQIFPlanInstance integer, -- index into table QPIdFullReference 
	ReferencedQIFPlan text, -- element of text 
	_FormalStandard integer  -- index into table FormalStandard 
) ;

CREATE TABLE Precedence (
	_index_  SERIAL PRIMARY KEY,
	PrecedenceEnum text, -- element of text 
	OtherPrecedence text  -- element of text 
) ;

CREATE TABLE Predecessors (
	_index_  SERIAL PRIMARY KEY,
	Predecessor DECIMAL(10,2)  -- element of DECIMAL(10,2) 
) ;

CREATE TABLE PressureCharacteristicActualBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text  
) ;

CREATE TABLE PressureCharacteristicDefinitionBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	_Tolerance integer, -- index into table PressureTolerance 
	NonTolerance text  -- element of text 
) ;

CREATE TABLE PressureCharacteristicItemBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE PressureCharacteristicNominalBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	TargetValue text  
) ;

CREATE TABLE PressureTolerance (
	_index_  SERIAL PRIMARY KEY,
	MaxValue text, 
	MinValue text, 
	DefinedAsLimit BOOLEAN  -- element of BOOLEAN 
) ;

CREATE TABLE PressureUnit (
	_index_  SERIAL PRIMARY KEY,
	SIUnitName text, -- element of text 
	UnitName text, -- element of text 
	_UnitConversion integer  -- index into table UnitConversion 
) ;

CREATE TABLE PrimaryAlignmentOperation (
	_index_  SERIAL PRIMARY KEY,
	SequenceNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_PrimaryEntity integer, -- index into table AlignmentFeature 
	PrimaryAxis DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE PrimaryUnits (
	_index_  SERIAL PRIMARY KEY,
	_AreaUnit integer, -- index into table AreaUnit 
	_AngularUnit integer, -- index into table AngularUnit 
	_ForceUnit integer, -- index into table ForceUnit 
	_LinearUnit integer, -- index into table LinearUnit 
	_MassUnit integer, -- index into table MassUnit 
	_PressureUnit integer, -- index into table PressureUnit 
	_SpeedUnit integer, -- index into table SpeedUnit 
	_TemperatureUnit integer, -- index into table TemperatureUnit 
	_TimeUnit integer  -- index into table TimeUnit 
) ;

CREATE TABLE PrintedDrawing (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	Name text, -- element of text 
	Version text, -- element of text 
	Description text, -- element of text 
	_Author integer, -- index into table Author 
	DrawingNumber text, -- element of text 
	AdditionalChanges text, -- element of text 
	Location text  -- element of text 
) ;

CREATE TABLE ProbingDevice (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	Name text, -- element of text 
	Description text, -- element of text 
	Manufacturer text, -- element of text 
	ModelNumber text, -- element of text 
	SerialNumber text, -- element of text 
	LocationId text, 
	_Location integer, -- index into table Location 
	_Calibrations integer, -- index into table Calibrations 
	_InspectionTemperatures integer, -- index into table Temperatures 
	_WorkingVolume integer, -- index into table WorkingVolume 
	_EffectiveWorkingVolume integer, -- index into table EffectiveWorkingVolume 
	_Resolution integer  -- index into table Resolution 
) ;

CREATE TABLE ProcessDifferenceStudyPlan (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	ThisStatisticalStudyPlanInstanceQPId text, -- element of text 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	CalculateAverageFeatures BOOLEAN, -- element of BOOLEAN 
	_CharacteristicItemIds integer, -- index into table ArrayReferenceFull 
	StatsValuesPerChar StatsValuesEnumType, -- element of StatsValuesEnumType 
	StatsValuesPerSubgroup SubgroupStatsValuesEnumType, -- element of SubgroupStatsValuesEnumType 
	__StatsValuesSummary integer[], -- index into table SummaryStatsValues 
	_PreInspectionTraceability integer, -- index into table PreInspectionTraceability 
	Name text, -- element of text 
	Description text, -- element of text 
	PlanId text, 
	CorrectiveActionPlanId text, 
	NumberOfSamples DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupSize DECIMAL(10,2), -- element of DECIMAL(10,2) 
	ManufacturingProcessId text, 
	LinearAbsoluteDifference text, 
	AngularAbsoluteDifference text, 
	AreaAbsoluteDifference text, 
	ForceAbsoluteDifference text, 
	MassAbsoluteDifference text, 
	PressureAbsoluteDifference text, 
	SpeedAbsoluteDifference text, 
	TemperatureAbsoluteDifference text, 
	TimeAbsoluteDifference text, 
	UserDefinedUnitAbsoluteDifference text[], 
	RelativeDifference DECIMAL(10,2)  -- element of DECIMAL(10,2) 
) ;

CREATE TABLE ProcessDifferenceStudyResults (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	ThisStatisticalStudyResultsInstanceQPId text, -- element of text 
	_Status integer, -- index into table StatsEvalStatus 
	__StudyIssue integer[], -- index into table StudyIssue 
	_InspectionTraceability integer, -- index into table InspectionTraceability 
	Name text, -- element of text 
	Description text, -- element of text 
	StudyId text, 
	ResultsId text[], 
	__ResultsQPId integer[], -- index into table QPIdFullReference 
	__ResultsFile integer[], -- index into table ExternalFileReference 
	__AverageFeature integer[], -- index into table AverageFeature 
	__CharacteristicsStats integer[], -- index into table CharacteristicsStats 
	__LinearStatsSummary integer[], -- index into table SummaryStatisticsLinear 
	__AngularStatsSummary integer[], -- index into table SummaryStatisticsAngular 
	__AreaStatsSummary integer[], -- index into table SummaryStatisticsArea 
	__ForceStatsSummary integer[], -- index into table SummaryStatisticsForce 
	__MassStatsSummary integer[], -- index into table SummaryStatisticsMass 
	__PressureStatsSummary integer[], -- index into table SummaryStatisticsPressure 
	__SpeedStatsSummary integer[], -- index into table SummaryStatisticsSpeed 
	__TemperatureStatsSummary integer[], -- index into table SummaryStatisticsTemperature 
	__TimeStatsSummary integer[], -- index into table SummaryStatisticsTime 
	__UserDefinedUnitStatsSummary integer[], -- index into table SummaryStatisticsUserDefinedUnit 
	__StatsSummary integer[], -- index into table SummaryStatistics 
	NumberOfSamples DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupSize DECIMAL(10,2), -- element of DECIMAL(10,2) 
	ManufacturingProcessId text, 
	LinearAbsoluteDifference text, 
	AngularAbsoluteDifference text, 
	AreaAbsoluteDifference text, 
	ForceAbsoluteDifference text, 
	MassAbsoluteDifference text, 
	PressureAbsoluteDifference text, 
	SpeedAbsoluteDifference text, 
	TemperatureAbsoluteDifference text, 
	TimeAbsoluteDifference text, 
	UserDefinedUnitAbsoluteDifference text[], 
	RelativeDifference text  -- element of text 
) ;

CREATE TABLE ProcessParameter (
	_index_  SERIAL PRIMARY KEY,
	Parameter text, -- element of text 
	ParameterValue text  -- element of text 
) ;

CREATE TABLE ProductDefinitionBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Name text, -- element of text 
	QPId text, -- element of text 
	ModelNumber text, -- element of text 
	Description text, -- element of text 
	Version text, -- element of text 
	Material text, -- element of text 
	_SecurityClassification integer, -- index into table SecurityClassification 
	ExportControlClassification text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_CharacteristicNominalIds integer, -- index into table ArrayReferenceFull 
	_NoteIds integer, -- index into table ArrayReferenceFull 
	_PartNoteIds integer, -- index into table ArrayReferenceFull 
	_DatumDefinitionIds integer, -- index into table ArrayReferenceFull 
	_DatumTargetDefinitionIds integer, -- index into table ArrayReferenceFull 
	_DatumReferenceFrameIds integer  -- index into table ArrayReferenceFull 
) ;

CREATE TABLE ProductTraceability (
	_index_  SERIAL PRIMARY KEY,
	ReportNumber text, -- element of text 
	ManufacturingProcessId text, 
	FixtureId text, 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_InspectionSoftwareItems integer, -- index into table InspectionSoftwareItems 
	_InspectionProgram integer, -- index into table InspectionProgram 
	_MeasurementDeviceIds integer  -- index into table ArrayReferenceFull 
) ;

CREATE TABLE Product (
	_index_  SERIAL PRIMARY KEY,
	_Header integer, -- index into table InternalHeader 
	_GeometrySet integer, -- index into table GeometrySet 
	_TopologySet integer, -- index into table TopologySet 
	_NoteSet integer, -- index into table NoteSet 
	_NoteFlagSet integer, -- index into table NoteFlagSet 
	_PartNoteSet integer, -- index into table PartNoteSet 
	_ViewSet integer, -- index into table ViewSet 
	_LayerSet integer, -- index into table LayerSet 
	_CoordinateSystemSet integer, -- index into table CoordinateSystemSet 
	_VisualizationSet integer, -- index into table VisualizationSet 
	_AuxiliarySet integer, -- index into table AuxiliarySet 
	_PartSet integer, -- index into table PartSet 
	_AssemblySet integer, -- index into table AssemblySet 
	_ComponentSet integer, -- index into table ComponentSet 
	_RootPart integer, -- index into table ElementReference 
	_RootAssembly integer, -- index into table ElementReference 
	_RootComponent integer, -- index into table ElementReference 
	_AsmPaths integer  -- index into table AsmPaths 
) ;

CREATE TABLE ProductionStudyPlan (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	ThisStatisticalStudyPlanInstanceQPId text, -- element of text 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	CalculateAverageFeatures BOOLEAN, -- element of BOOLEAN 
	_CharacteristicItemIds integer, -- index into table ArrayReferenceFull 
	StatsValuesPerChar StatsValuesEnumType, -- element of StatsValuesEnumType 
	StatsValuesPerSubgroup SubgroupStatsValuesEnumType, -- element of SubgroupStatsValuesEnumType 
	__StatsValuesSummary integer[], -- index into table SummaryStatsValues 
	_PreInspectionTraceability integer, -- index into table PreInspectionTraceability 
	Name text, -- element of text 
	Description text, -- element of text 
	PlanId text, 
	CorrectiveActionPlanId text, 
	NumberOfSamples DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupSize DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_SamplingMethod integer, -- index into table SamplingMethod 
	__ControlMethod integer[]  -- index into table ControlMethod 
) ;

CREATE TABLE ProductionStudyResults (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	ThisStatisticalStudyResultsInstanceQPId text, -- element of text 
	_Status integer, -- index into table StatsEvalStatus 
	__StudyIssue integer[], -- index into table StudyIssue 
	_InspectionTraceability integer, -- index into table InspectionTraceability 
	Name text, -- element of text 
	Description text, -- element of text 
	StudyId text, 
	ResultsId text[], 
	__ResultsQPId integer[], -- index into table QPIdFullReference 
	__ResultsFile integer[], -- index into table ExternalFileReference 
	__AverageFeature integer[], -- index into table AverageFeature 
	__CharacteristicsStats integer[], -- index into table CharacteristicsStats 
	__LinearStatsSummary integer[], -- index into table SummaryStatisticsLinear 
	__AngularStatsSummary integer[], -- index into table SummaryStatisticsAngular 
	__AreaStatsSummary integer[], -- index into table SummaryStatisticsArea 
	__ForceStatsSummary integer[], -- index into table SummaryStatisticsForce 
	__MassStatsSummary integer[], -- index into table SummaryStatisticsMass 
	__PressureStatsSummary integer[], -- index into table SummaryStatisticsPressure 
	__SpeedStatsSummary integer[], -- index into table SummaryStatisticsSpeed 
	__TemperatureStatsSummary integer[], -- index into table SummaryStatisticsTemperature 
	__TimeStatsSummary integer[], -- index into table SummaryStatisticsTime 
	__UserDefinedUnitStatsSummary integer[], -- index into table SummaryStatisticsUserDefinedUnit 
	__StatsSummary integer[], -- index into table SummaryStatistics 
	NumberOfSamples DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupSize DECIMAL(10,2), -- element of DECIMAL(10,2) 
	__ControlIssueDetails integer[]  -- index into table ControlIssueDetails 
) ;

CREATE TABLE ProfileCharacteristicActualBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text, 
	WorstPositiveDeviation text, 
	WorstNegativeDeviation text, 
	_PointDeviations integer, -- index into table PointDeviations 
	DatumsOk BOOLEAN, -- element of BOOLEAN 
	DRFTransformActualId text, 
	_SecondCompositeSegmentProfileActual integer, -- index into table CompositeSegmentProfileActual 
	_ThirdCompositeSegmentProfileActual integer, -- index into table CompositeSegmentProfileActual 
	_FourthCompositeSegmentProfileActual integer  -- index into table CompositeSegmentProfileActual 
) ;

CREATE TABLE ProfileCharacteristicDefinitionBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	_DirectionFeature integer, -- index into table DirectionFeature 
	_CollectionPlane integer, -- index into table CollectionPlane 
	_IntersectionPlane integer, -- index into table IntersectionPlane 
	_OrientationPlane integer, -- index into table OrientationPlane 
	ToleranceValue text, 
	OuterDisposition text, 
	UnequallyDisposedZone text, 
	OffsetZone BOOLEAN, -- element of BOOLEAN 
	_SecondCompositeSegmentProfileDefinition integer, -- index into table CompositeSegmentProfileDefinition 
	_ThirdCompositeSegmentProfileDefinition integer, -- index into table CompositeSegmentProfileDefinition 
	_FourthCompositeSegmentProfileDefinition integer, -- index into table CompositeSegmentProfileDefinition 
	DatumReferenceFrameId text, 
	OrientationOnly BOOLEAN  -- element of BOOLEAN 
) ;

CREATE TABLE ProfileCharacteristicItemBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE ProfileCharacteristicNominalBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	TargetValue text  
) ;

CREATE TABLE ProfileCharacteristicStatsEvalBase (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_ValueStats integer, -- index into table StatsWithTolLinear 
	_MaxValueStats integer, -- index into table StatsLinear 
	_MinValueStats integer, -- index into table StatsLinear 
	CapabilityCalculationMethod text, -- element of text 
	_WorstPositiveDeviationStats integer, -- index into table StatsLinear 
	_WorstNegativeDeviationStats integer, -- index into table StatsLinear 
	_PointDeviationsStats integer, -- index into table PointDeviationsStatsEval 
	_DatumsOkStats integer, -- index into table StatsPassFail 
	_CompositeSegmentsStats integer  -- index into table CompositeSegmentsProfileStatsEval 
) ;

CREATE TABLE ProfileGroupFeatureActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	_PointList integer, -- index into table PointListActual 
	FeatureItemId text, 
	ActualComponentId text, 
	ManufacturingProcessId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	_NotedEventIds integer  -- index into table ArrayReferenceFull 
) ;

CREATE TABLE ProfileGroupFeatureDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer  -- index into table Attributes 
) ;

CREATE TABLE ProfileGroupFeatureItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	FeatureNominalId text, 
	ParentFeatureItemId text, 
	FeatureName text, -- element of text 
	QPId text, -- element of text 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	CoordinateSystemId text  
) ;

CREATE TABLE ProfileGroupFeatureNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Name text, -- element of text 
	_PointList integer, -- index into table PointListNominal 
	FeatureDefinitionId text, -- element of text 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	_FeatureNominalIds integer  -- index into table ArrayReferenceFull 
) ;

CREATE TABLE QIFDocumentHeader (
	_index_  SERIAL PRIMARY KEY,
	_Application integer, -- index into table Application 
	_Author integer, -- index into table Author 
	_ApplicationSource integer, -- index into table Application 
	Description text, -- element of text 
	Scope text  -- element of text 
) ;

CREATE TABLE QIFDocument (
	_index_  SERIAL PRIMARY KEY,
	versionQIF text,-- attribute
	idMax text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	_VersionHistory integer, -- index into table VersionHistory 
	_Version integer, -- index into table Version 
	_Header integer, -- index into table QIFDocumentHeader 
	_PreInspectionTraceability integer, -- index into table PreInspectionTraceability 
	_FileUnits integer, -- index into table FileUnits 
	_DatumDefinitions integer, -- index into table DatumDefinitions 
	_DatumTargetDefinitions integer, -- index into table DatumTargetDefinitions 
	_Transforms integer, -- index into table TransformList 
	_CoordinateSystems integer, -- index into table CoordinateSystemList 
	_DatumReferenceFrames integer, -- index into table DatumReferenceFrames 
	_MeasurementResources integer, -- index into table MeasurementResources 
	_ThreadSpecifications integer, -- index into table ThreadSpecifications 
	_Product integer, -- index into table Product 
	_Features integer, -- index into table FeatureAspectsLists 
	_Characteristics integer, -- index into table CharacteristicAspectsLists 
	_MeasurementPlan integer, -- index into table MeasurementPlan 
	_MeasurementsResults integer, -- index into table MeasurementsResults 
	_Statistics integer, -- index into table Statistics 
	_ManufacturingProcessTraceabilities integer, -- index into table ManufacturingProcessTraceabilities 
	_Rules integer, -- index into table QIFRules 
	_UserDataXML integer  -- index into table UserDataXML 
) ;

CREATE TABLE QIFRuleBase (
	_index_  SERIAL PRIMARY KEY,
	name text NOT NULL -- attribute
) ;

CREATE TABLE QIFRules (
	_index_  SERIAL PRIMARY KEY,
	_Version integer, -- index into table Version 
	_RulesUnits integer, -- index into table OtherUnits 
	_FeatureRules integer, -- index into table FeatureRules 
	_DMESelectionRules integer  -- index into table DMESelectionRules 
) ;

CREATE TABLE QPIdFullReference (
	_index_  SERIAL PRIMARY KEY,
	ItemQPId text, -- element of text 
	DocumentQPId text  -- element of text 
) ;

CREATE TABLE Qualification (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	Description text  -- element of text 
) ;

CREATE TABLE Qualifications (
	_index_  SERIAL PRIMARY KEY,
	__Qualification integer[]  -- index into table Qualification 
) ;

CREATE TABLE Quaternion (
	_index_  SERIAL PRIMARY KEY,
	Value DOUBLE PRECISION[4]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE RadialDifferentialScale (
	_index_  SERIAL PRIMARY KEY,
	PerpendicularScaleFactor DECIMAL(10,2), -- element of DECIMAL(10,2) 
	ParallelScaleFactor DECIMAL(10,2), -- element of DECIMAL(10,2) 
	Direction DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE RadiusCharacteristicActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text  
) ;

CREATE TABLE RadiusCharacteristicDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	Dimension text, -- element of text 
	_Tolerance integer, -- index into table LinearTolerance 
	NonTolerance text, -- element of text 
	ControlledRadius BOOLEAN  -- element of BOOLEAN 
) ;

CREATE TABLE RadiusCharacteristicItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE RadiusCharacteristicNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	TargetValue text  
) ;

CREATE TABLE RadiusCharacteristicStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_ValueStats integer, -- index into table StatsWithTolLinear 
	_MaxValueStats integer, -- index into table StatsLinear 
	_MinValueStats integer, -- index into table StatsLinear 
	_DeviationStats integer, -- index into table StatsWithTolLinear 
	_MaxDeviationStats integer, -- index into table StatsLinear 
	_MinDeviationStats integer  -- index into table StatsLinear 
) ;

CREATE TABLE Rectangle (
	_index_  SERIAL PRIMARY KEY,
	Length text, 
	CornerPoint DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	Width text, 
	WidthDirection DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	LengthDirection DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE RectangularUnitArea (
	_index_  SERIAL PRIMARY KEY,
	RectangularUnitAreaLength text, 
	RectangularUnitAreaWidth text, 
	RectangularUnitAreaOrientation DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE Resolution (
	_index_  SERIAL PRIMARY KEY,
	CombinedResolution text, 
	_XYZResolution integer  -- index into table XYZResolution 
) ;

CREATE TABLE Revolution23Core (
	_index_  SERIAL PRIMARY KEY,
	angle text,-- attribute
	form text NOT NULL,-- attribute
	_Axis integer, -- index into table Axis 
	_Generatrix integer  -- index into table Curve13Core 
) ;

CREATE TABLE Revolution23 (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	_Revolution23Core integer, -- index into table Revolution23Core 
	_Transform integer  -- index into table ElementReference 
) ;

CREATE TABLE RotaryTable (
	_index_  SERIAL PRIMARY KEY,
	LocationOnCMM DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	AxisDirection DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	ZeroIndexDirection DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	TableRadius text, 
	_TableErrors integer  -- index into table TableErrors 
) ;

CREATE TABLE Ruled23Core (
	_index_  SERIAL PRIMARY KEY,
	turnedSecondCurve text NOT NULL,-- attribute
	form text NOT NULL,-- attribute
	__Curve integer[]  -- index into table Curve13Core 
) ;

CREATE TABLE Ruled23 (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	_Ruled23Core integer, -- index into table Ruled23Core 
	_Transform integer  -- index into table ElementReference 
) ;

CREATE TABLE RunoutCharacteristicActualBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text, 
	DatumsOk BOOLEAN  -- element of BOOLEAN 
) ;

CREATE TABLE RunoutCharacteristicDefinitionBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	_DirectionFeature integer, -- index into table DirectionFeature 
	_CollectionPlane integer, -- index into table CollectionPlane 
	_IntersectionPlane integer, -- index into table IntersectionPlane 
	_OrientationPlane integer, -- index into table OrientationPlane 
	ToleranceValue text, 
	DatumReferenceFrameId text  
) ;

CREATE TABLE RunoutCharacteristicItemBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE RunoutCharacteristicNominalBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_ZoneLimit integer  -- index into table CharacteristicDirectionalZoneLimit 
) ;

CREATE TABLE RunoutCharacteristicStatsEvalBase (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_ValueStats integer, -- index into table StatsWithTolLinear 
	_MaxValueStats integer, -- index into table StatsLinear 
	_MinValueStats integer, -- index into table StatsLinear 
	CapabilityCalculationMethod text, -- element of text 
	_DatumsOkStats integer  -- index into table StatsPassFail 
) ;

CREATE TABLE RunoutGroupFeatureActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	_PointList integer, -- index into table PointListActual 
	FeatureItemId text, 
	ActualComponentId text, 
	ManufacturingProcessId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	_NotedEventIds integer  -- index into table ArrayReferenceFull 
) ;

CREATE TABLE RunoutGroupFeatureDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer  -- index into table Attributes 
) ;

CREATE TABLE RunoutGroupFeatureItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	FeatureNominalId text, 
	ParentFeatureItemId text, 
	FeatureName text, -- element of text 
	QPId text, -- element of text 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	CoordinateSystemId text  
) ;

CREATE TABLE RunoutGroupFeatureNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Name text, -- element of text 
	_PointList integer, -- index into table PointListNominal 
	FeatureDefinitionId text, -- element of text 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	_FeatureNominalIds integer  -- index into table ArrayReferenceFull 
) ;

CREATE TABLE SamplingInterval (
	_index_  SERIAL PRIMARY KEY,
	SamplingIntervalEnum text, -- element of text 
	OtherSamplingInterval text  -- element of text 
) ;

CREATE TABLE SamplingMethod (
	_index_  SERIAL PRIMARY KEY,
	SampleSize DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SamplingPeriod DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SamplingFrequency DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_SamplingInterval integer  -- index into table SamplingInterval 
) ;

CREATE TABLE SamplingRigorIs (
	_index_  SERIAL PRIMARY KEY,
	val text -- attribute
) ;

CREATE TABLE SavedView (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	ViewPlaneOrigin DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	_Orientation integer, -- index into table Quaternion 
	Ratio DOUBLE PRECISION, -- element of DOUBLE PRECISION 
	Near DOUBLE PRECISION, -- element of DOUBLE PRECISION 
	Far DOUBLE PRECISION, -- element of DOUBLE PRECISION 
	Height DOUBLE PRECISION, -- element of DOUBLE PRECISION 
	_AnnotationVisibleIds integer, -- index into table ArrayReferenceFull 
	_AnnotationHiddenIds integer, -- index into table ArrayReferenceFull 
	_BodyIds integer, -- index into table ArrayReferenceFull 
	_ComponentIds integer, -- index into table ArrayReferenceFull 
	_PlaneClippingIds integer  -- index into table ArrayReferenceFull 
) ;

CREATE TABLE Scale (
	_index_  SERIAL PRIMARY KEY,
	Origin DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	_UniformScale integer, -- index into table UniformScale 
	_RadialDifferentialScale integer, -- index into table RadialDifferentialScale 
	_AxialDifferentialScale integer  -- index into table AxialDifferentialScale 
) ;

CREATE TABLE SecondaryAlignmentOperation (
	_index_  SERIAL PRIMARY KEY,
	SequenceNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_SecondaryEntity integer, -- index into table AlignmentFeature 
	SecondaryAxis DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	RotationAxis DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE SecurityClassification (
	_index_  SERIAL PRIMARY KEY,
	SecurityClassificationEnum text, -- element of text 
	OtherSecurityClassification text  -- element of text 
) ;

CREATE TABLE Segment12Core (
	_index_  SERIAL PRIMARY KEY,
	domain text,-- attribute
	StartPoint DOUBLE PRECISION[2], -- list of DOUBLE PRECISION 
	EndPoint DOUBLE PRECISION[2]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE Segment12 (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	_Segment12Core integer  -- index into table Segment12Core 
) ;

CREATE TABLE Segment13Core (
	_index_  SERIAL PRIMARY KEY,
	domain text,-- attribute
	StartPoint DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	EndPoint DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE Segment13 (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	_Segment13Core integer, -- index into table Segment13Core 
	_Transform integer  -- index into table ElementReference 
) ;

CREATE TABLE Sensor (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	Name text, -- element of text 
	Description text, -- element of text 
	Manufacturer text, -- element of text 
	ModelNumber text, -- element of text 
	SerialNumber text, -- element of text 
	LocationId text, 
	_Location integer, -- index into table Location 
	_Qualifications integer, -- index into table Qualifications 
	AAngle text, 
	BAngle text  
) ;

CREATE TABLE Sensors (
	_index_  SERIAL PRIMARY KEY,
	__Sensor integer[], -- index into table Sensor 
	__TouchProbe integer[]  -- index into table TouchProbe 
) ;

CREATE TABLE SequencedBaseFeature (
	_index_  SERIAL PRIMARY KEY,
	ReferencedComponent text, -- element of text 
	FeatureItemId text, 
	SequenceNumber DECIMAL(10,2)  -- element of DECIMAL(10,2) 
) ;

CREATE TABLE SequencedDatum (
	_index_  SERIAL PRIMARY KEY,
	_SimpleDatum integer, -- index into table Datum 
	_CompoundDatum integer, -- index into table CompoundDatum 
	SequenceNumber DECIMAL(10,2)  -- element of DECIMAL(10,2) 
) ;

CREATE TABLE SetFeature (
	_index_  SERIAL PRIMARY KEY 
) ;

CREATE TABLE ShapeClassIs (
	_index_  SERIAL PRIMARY KEY,
	val text -- attribute
) ;

CREATE TABLE ShapeClass (
	_index_  SERIAL PRIMARY KEY,
	ShapeClassEnum text, -- element of text 
	OtherShapeClass text  -- element of text 
) ;

CREATE TABLE ShellSet (
	_index_  SERIAL PRIMARY KEY,
	N text,-- attribute
	__Shell integer[]  -- index into table Shell 
) ;

CREATE TABLE Shell (
	_index_  SERIAL PRIMARY KEY,
	turned text NOT NULL,-- attribute
	closed text NOT NULL,-- attribute
	form text NOT NULL,-- attribute
	color text NOT NULL,-- attribute
	transparency text NOT NULL,-- attribute
	hidden text NOT NULL,-- attribute
	size text NOT NULL,-- attribute
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	_FaceIds integer  -- index into table ArrayReference 
) ;

CREATE TABLE SignOffs (
	_index_  SERIAL PRIMARY KEY,
	__Employee integer[]  -- index into table Employee 
) ;

CREATE TABLE SimpleStudyPlan (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	ThisStatisticalStudyPlanInstanceQPId text, -- element of text 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	CalculateAverageFeatures BOOLEAN, -- element of BOOLEAN 
	_CharacteristicItemIds integer, -- index into table ArrayReferenceFull 
	StatsValuesPerChar StatsValuesEnumType, -- element of StatsValuesEnumType 
	StatsValuesPerSubgroup SubgroupStatsValuesEnumType, -- element of SubgroupStatsValuesEnumType 
	__StatsValuesSummary integer[], -- index into table SummaryStatsValues 
	_PreInspectionTraceability integer, -- index into table PreInspectionTraceability 
	Name text, -- element of text 
	Description text, -- element of text 
	PlanId text, 
	CorrectiveActionPlanId text, 
	NumberOfSamples DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupSize DECIMAL(10,2)  -- element of DECIMAL(10,2) 
) ;

CREATE TABLE SimpleStudyResults (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	ThisStatisticalStudyResultsInstanceQPId text, -- element of text 
	_Status integer, -- index into table StatsEvalStatus 
	__StudyIssue integer[], -- index into table StudyIssue 
	_InspectionTraceability integer, -- index into table InspectionTraceability 
	Name text, -- element of text 
	Description text, -- element of text 
	StudyId text, 
	ResultsId text[], 
	__ResultsQPId integer[], -- index into table QPIdFullReference 
	__ResultsFile integer[], -- index into table ExternalFileReference 
	__AverageFeature integer[], -- index into table AverageFeature 
	__CharacteristicsStats integer[], -- index into table CharacteristicsStats 
	__LinearStatsSummary integer[], -- index into table SummaryStatisticsLinear 
	__AngularStatsSummary integer[], -- index into table SummaryStatisticsAngular 
	__AreaStatsSummary integer[], -- index into table SummaryStatisticsArea 
	__ForceStatsSummary integer[], -- index into table SummaryStatisticsForce 
	__MassStatsSummary integer[], -- index into table SummaryStatisticsMass 
	__PressureStatsSummary integer[], -- index into table SummaryStatisticsPressure 
	__SpeedStatsSummary integer[], -- index into table SummaryStatisticsSpeed 
	__TemperatureStatsSummary integer[], -- index into table SummaryStatisticsTemperature 
	__TimeStatsSummary integer[], -- index into table SummaryStatisticsTime 
	__UserDefinedUnitStatsSummary integer[], -- index into table SummaryStatisticsUserDefinedUnit 
	__StatsSummary integer[], -- index into table SummaryStatistics 
	NumberOfSamples DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupSize DECIMAL(10,2)  -- element of DECIMAL(10,2) 
) ;

CREATE TABLE SingleLeadThreadSpecification (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	Diameter text, 
	_ThreadSeries integer, -- index into table ThreadSeries 
	_ThreadToleranceClass integer, -- index into table ThreadClass 
	_CrestDiameterToleranceClass integer, -- index into table ThreadClass 
	LeftHanded BOOLEAN, -- element of BOOLEAN 
	ModifiedThread BOOLEAN, -- element of BOOLEAN 
	ThreadLengthEngagement text, 
	ThreadDensity text  
) ;

CREATE TABLE SlotEnd (
	_index_  SERIAL PRIMARY KEY,
	SlotEndEnum text, -- element of text 
	OtherSlotEnd text  -- element of text 
) ;

CREATE TABLE Software (
	_index_  SERIAL PRIMARY KEY,
	VendorName text, -- element of text 
	ApplicationName text, -- element of text 
	Version text, -- element of text 
	Description text  -- element of text 
) ;

CREATE TABLE SpeedCharacteristicActualBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text  
) ;

CREATE TABLE SpeedCharacteristicDefinitionBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	_Tolerance integer, -- index into table SpeedTolerance 
	NonTolerance text  -- element of text 
) ;

CREATE TABLE SpeedCharacteristicItemBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE SpeedCharacteristicNominalBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	TargetValue text  
) ;

CREATE TABLE SpeedTolerance (
	_index_  SERIAL PRIMARY KEY,
	MaxValue text, 
	MinValue text, 
	DefinedAsLimit BOOLEAN  -- element of BOOLEAN 
) ;

CREATE TABLE SpeedUnit (
	_index_  SERIAL PRIMARY KEY,
	SIUnitName text, -- element of text 
	UnitName text, -- element of text 
	_UnitConversion integer  -- index into table UnitConversion 
) ;

CREATE TABLE Sphere23Core (
	_index_  SERIAL PRIMARY KEY,
	turnedV text NOT NULL,-- attribute
	scaleU text NOT NULL,-- attribute
	scaleV text NOT NULL,-- attribute
	form text NOT NULL,-- attribute
	Diameter DOUBLE PRECISION, -- element of DOUBLE PRECISION 
	Location DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	_LatitudeLongitudeSweep integer  -- index into table OrientedLatitudeLongitudeSweep 
) ;

CREATE TABLE Sphere23 (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	_Sphere23Core integer, -- index into table Sphere23Core 
	_Transform integer  -- index into table ElementReference 
) ;

CREATE TABLE SphereActualDetermination (
	_index_  SERIAL PRIMARY KEY,
	_Checked integer, -- index into table SphereCheckedFeature 
	_Set integer  -- index into table SetFeature 
) ;

CREATE TABLE SphereBestFit (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	__BaseFeature integer[]  -- index into table SequencedBaseFeature 
) ;

CREATE TABLE SphereCast (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseFeature integer  -- index into table BaseFeature 
) ;

CREATE TABLE SphereCheckedFeature (
	_index_  SERIAL PRIMARY KEY,
	_CheckDetails integer  -- index into table SphereChecked 
) ;

CREATE TABLE SphereChecked (
	_index_  SERIAL PRIMARY KEY,
	_Measured integer, -- index into table MeasuredFeature 
	_Constructed integer  -- index into table SphereConstructionMethod 
) ;

CREATE TABLE SphereConstructionMethod (
	_index_  SERIAL PRIMARY KEY,
	_BestFit integer, -- index into table SphereBestFit 
	_Recompensated integer, -- index into table SphereRecomp 
	_Copy integer, -- index into table SphereCopy 
	_Cast integer, -- index into table SphereCast 
	_Transform integer, -- index into table SphereTransform 
	_FromScan integer  -- index into table SphereFromScan 
) ;

CREATE TABLE SphereCopy (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseSphere integer  -- index into table BaseFeature 
) ;

CREATE TABLE SphereFeatureActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	_PointList integer, -- index into table PointListActual 
	FeatureItemId text, 
	ActualComponentId text, 
	ManufacturingProcessId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	Location text, 
	Diameter text, 
	DiameterMin text, 
	DiameterMax text, 
	_LatitudeLongitudeSweep integer, -- index into table OrientedLatitudeLongitudeSweep 
	Form text  
) ;

CREATE TABLE SphereFeatureDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	InternalExternal text, -- element of text 
	Diameter text  
) ;

CREATE TABLE SphereFeatureItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	FeatureNominalId text, 
	ParentFeatureItemId text, 
	FeatureName text, -- element of text 
	QPId text, -- element of text 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	CoordinateSystemId text, 
	_DeterminationMode integer, -- index into table SphereActualDetermination 
	_SubstituteFeatureAlgorithm integer  -- index into table FeatureOfSizeSubstituteFeatureAlgorithm 
) ;

CREATE TABLE SphereFeatureNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Name text, -- element of text 
	_PointList integer, -- index into table PointListNominal 
	FeatureDefinitionId text, -- element of text 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Location DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	_LatitudeLongitudeSweep integer  -- index into table OrientedLatitudeLongitudeSweep 
) ;

CREATE TABLE SphereFromScan (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_SurfaceFeature integer, -- index into table BaseFeature 
	SearchRadius text, 
	Vector DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE SpherePointSamplingStrategy (
	_index_  SERIAL PRIMARY KEY,
	PointSamplingStrategyEnum text, -- element of text 
	UserDefinedStrategy text  -- element of text 
) ;

CREATE TABLE SphereRecomp (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseFeaturePointList integer  -- index into table BaseFeaturePointList 
) ;

CREATE TABLE SphereTransform (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseSphere integer, -- index into table BaseFeature 
	_Transformation integer  -- index into table TransformationReference 
) ;

CREATE TABLE Sphere (
	_index_  SERIAL PRIMARY KEY,
	CenterPoint DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	Diameter text  
) ;

CREATE TABLE SphericalSegmentActualDetermination (
	_index_  SERIAL PRIMARY KEY,
	_Checked integer, -- index into table SphericalSegmentCheckedFeature 
	_Set integer  -- index into table SetFeature 
) ;

CREATE TABLE SphericalSegmentBestFit (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	__BaseFeature integer[]  -- index into table SequencedBaseFeature 
) ;

CREATE TABLE SphericalSegmentCast (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseFeature integer  -- index into table BaseFeature 
) ;

CREATE TABLE SphericalSegmentCheckedFeature (
	_index_  SERIAL PRIMARY KEY,
	_CheckDetails integer  -- index into table SphericalSegmentChecked 
) ;

CREATE TABLE SphericalSegmentChecked (
	_index_  SERIAL PRIMARY KEY,
	_Measured integer, -- index into table MeasuredFeature 
	_Constructed integer  -- index into table SphericalSegmentConstructionMethod 
) ;

CREATE TABLE SphericalSegmentConstructionMethod (
	_index_  SERIAL PRIMARY KEY,
	_BestFit integer, -- index into table SphericalSegmentBestFit 
	_Recompensated integer, -- index into table SphericalSegmentRecomp 
	_Copy integer, -- index into table SphericalSegmentCopy 
	_Cast integer, -- index into table SphericalSegmentCast 
	_Transform integer  -- index into table SphericalSegmentTransform 
) ;

CREATE TABLE SphericalSegmentCopy (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseSphericalSegment integer  -- index into table BaseFeature 
) ;

CREATE TABLE SphericalSegmentFeatureActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	_PointList integer, -- index into table PointListActual 
	FeatureItemId text, 
	ActualComponentId text, 
	ManufacturingProcessId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	Location text, 
	Diameter text, 
	DiameterMin text, 
	DiameterMax text, 
	_LatitudeLongitudeSweep integer, -- index into table OrientedLatitudeLongitudeSweep 
	Form text  
) ;

CREATE TABLE SphericalSegmentFeatureDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	InternalExternal text, -- element of text 
	Diameter text  
) ;

CREATE TABLE SphericalSegmentFeatureItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	FeatureNominalId text, 
	ParentFeatureItemId text, 
	FeatureName text, -- element of text 
	QPId text, -- element of text 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	CoordinateSystemId text, 
	_DeterminationMode integer, -- index into table SphericalSegmentActualDetermination 
	_SubstituteFeatureAlgorithm integer  -- index into table NonFeatureOfSizeSubstituteFeatureAlgorithm 
) ;

CREATE TABLE SphericalSegmentFeatureNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Name text, -- element of text 
	_PointList integer, -- index into table PointListNominal 
	FeatureDefinitionId text, -- element of text 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Location DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	_LatitudeLongitudeSweep integer  -- index into table OrientedLatitudeLongitudeSweep 
) ;

CREATE TABLE SphericalSegmentPointSamplingStrategy (
	_index_  SERIAL PRIMARY KEY,
	PointSamplingStrategyEnum text, -- element of text 
	UserDefinedStrategy text  -- element of text 
) ;

CREATE TABLE SphericalSegmentRecomp (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseFeaturePointList integer  -- index into table BaseFeaturePointList 
) ;

CREATE TABLE SphericalSegmentTransform (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseSphericalSegment integer, -- index into table BaseFeature 
	_Transformation integer  -- index into table TransformationReference 
) ;

CREATE TABLE Spline12Core (
	_index_  SERIAL PRIMARY KEY,
	normalized text NOT NULL,-- attribute
	domain text,-- attribute
	Knots text, 
	Orders text, 
	Coefficients text  
) ;

CREATE TABLE Spline12 (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	_Spline12Core integer  -- index into table Spline12Core 
) ;

CREATE TABLE Spline13Core (
	_index_  SERIAL PRIMARY KEY,
	normalized text NOT NULL,-- attribute
	domain text,-- attribute
	Knots text, 
	Orders text, 
	Coefficients DOUBLE PRECISION  -- element of DOUBLE PRECISION 
) ;

CREATE TABLE Spline13 (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	_Spline13Core integer, -- index into table Spline13Core 
	_Transform integer  -- index into table ElementReference 
) ;

CREATE TABLE Spline23Core (
	_index_  SERIAL PRIMARY KEY,
	normalized text NOT NULL,-- attribute
	form text NOT NULL,-- attribute
	KnotsU text, 
	KnotsV text, 
	OrdersU text, 
	OrdersV text, 
	Coefficients DOUBLE PRECISION  -- element of DOUBLE PRECISION 
) ;

CREATE TABLE Spline23 (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	_Spline23Core integer, -- index into table Spline23Core 
	_Transform integer  -- index into table ElementReference 
) ;

CREATE TABLE SquareCharacteristicActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text  
) ;

CREATE TABLE SquareCharacteristicDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	Dimension text, -- element of text 
	_Tolerance integer, -- index into table LinearTolerance 
	NonTolerance text  -- element of text 
) ;

CREATE TABLE SquareCharacteristicItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE SquareCharacteristicNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	TargetValue text  
) ;

CREATE TABLE SquareCharacteristicStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_ValueStats integer, -- index into table StatsWithTolLinear 
	_MaxValueStats integer, -- index into table StatsLinear 
	_MinValueStats integer, -- index into table StatsLinear 
	_DeviationStats integer, -- index into table StatsWithTolLinear 
	_MaxDeviationStats integer, -- index into table StatsLinear 
	_MinDeviationStats integer  -- index into table StatsLinear 
) ;

CREATE TABLE StabilityStudyPlan (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	ThisStatisticalStudyPlanInstanceQPId text, -- element of text 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	CalculateAverageFeatures BOOLEAN, -- element of BOOLEAN 
	_CharacteristicItemIds integer, -- index into table ArrayReferenceFull 
	StatsValuesPerChar StatsValuesEnumType, -- element of StatsValuesEnumType 
	StatsValuesPerSubgroup SubgroupStatsValuesEnumType, -- element of SubgroupStatsValuesEnumType 
	__StatsValuesSummary integer[], -- index into table SummaryStatsValues 
	_PreInspectionTraceability integer, -- index into table PreInspectionTraceability 
	Name text, -- element of text 
	Description text, -- element of text 
	PlanId text, 
	CorrectiveActionPlanId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	SampleSize DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SampleFrequency DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_SamplingInterval integer  -- index into table SamplingInterval 
) ;

CREATE TABLE StabilityStudyResults (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	ThisStatisticalStudyResultsInstanceQPId text, -- element of text 
	_Status integer, -- index into table StatsEvalStatus 
	__StudyIssue integer[], -- index into table StudyIssue 
	_InspectionTraceability integer, -- index into table InspectionTraceability 
	Name text, -- element of text 
	Description text, -- element of text 
	StudyId text, 
	ResultsId text[], 
	__ResultsQPId integer[], -- index into table QPIdFullReference 
	__ResultsFile integer[], -- index into table ExternalFileReference 
	__AverageFeature integer[], -- index into table AverageFeature 
	__CharacteristicsStats integer[], -- index into table CharacteristicsStats 
	__LinearStatsSummary integer[], -- index into table SummaryStatisticsLinear 
	__AngularStatsSummary integer[], -- index into table SummaryStatisticsAngular 
	__AreaStatsSummary integer[], -- index into table SummaryStatisticsArea 
	__ForceStatsSummary integer[], -- index into table SummaryStatisticsForce 
	__MassStatsSummary integer[], -- index into table SummaryStatisticsMass 
	__PressureStatsSummary integer[], -- index into table SummaryStatisticsPressure 
	__SpeedStatsSummary integer[], -- index into table SummaryStatisticsSpeed 
	__TemperatureStatsSummary integer[], -- index into table SummaryStatisticsTemperature 
	__TimeStatsSummary integer[], -- index into table SummaryStatisticsTime 
	__UserDefinedUnitStatsSummary integer[], -- index into table SummaryStatisticsUserDefinedUnit 
	__StatsSummary integer[], -- index into table SummaryStatistics 
	SampleSize DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_MeasurementDeviceIds integer  -- index into table ArrayReferenceFull 
) ;

CREATE TABLE StatisticalStudiesResults (
	_index_  SERIAL PRIMARY KEY,
	__BiasStudyResults integer[], -- index into table BiasStudyResults 
	__CapabilityStudyResults integer[], -- index into table CapabilityStudyResults 
	__FirstArticleStudyResults integer[], -- index into table FirstArticleStudyResults 
	__GageRandRStudyResults integer[], -- index into table GageRandRStudyResults 
	__LinearityStudyResults integer[], -- index into table LinearityStudyResults 
	__ProcessDifferenceStudyResults integer[], -- index into table ProcessDifferenceStudyResults 
	__ProductionStudyResults integer[], -- index into table ProductionStudyResults 
	__SimpleStudyResults integer[], -- index into table SimpleStudyResults 
	__StabilityStudyResults integer[], -- index into table StabilityStudyResults 
	__StatisticalStudyResults integer[]  -- index into table StatisticalStudyResultsBase 
) ;

CREATE TABLE StatisticalStudyPlanBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	ThisStatisticalStudyPlanInstanceQPId text, -- element of text 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	CalculateAverageFeatures BOOLEAN, -- element of BOOLEAN 
	_CharacteristicItemIds integer, -- index into table ArrayReferenceFull 
	StatsValuesPerChar StatsValuesEnumType, -- element of StatsValuesEnumType 
	StatsValuesPerSubgroup SubgroupStatsValuesEnumType, -- element of SubgroupStatsValuesEnumType 
	__StatsValuesSummary integer[], -- index into table SummaryStatsValues 
	_PreInspectionTraceability integer, -- index into table PreInspectionTraceability 
	Name text, -- element of text 
	Description text, -- element of text 
	PlanId text, 
	CorrectiveActionPlanId text  
) ;

CREATE TABLE StatisticalStudyPlans (
	_index_  SERIAL PRIMARY KEY,
	__BiasStudyPlan integer[], -- index into table BiasStudyPlan 
	__CapabilityStudyPlan integer[], -- index into table CapabilityStudyPlan 
	__FirstArticleStudyPlan integer[], -- index into table FirstArticleStudyPlan 
	__GageRandRStudyPlan integer[], -- index into table GageRandRStudyPlan 
	__LinearityStudyPlan integer[], -- index into table LinearityStudyPlan 
	__ProcessDifferenceStudyPlan integer[], -- index into table ProcessDifferenceStudyPlan 
	__ProductionStudyPlan integer[], -- index into table ProductionStudyPlan 
	__SimpleStudyPlan integer[], -- index into table SimpleStudyPlan 
	__StabilityStudyPlan integer[], -- index into table StabilityStudyPlan 
	__StatisticalStudyPlan integer[]  -- index into table StatisticalStudyPlanBase 
) ;

CREATE TABLE StatisticalStudyResultsBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	ThisStatisticalStudyResultsInstanceQPId text, -- element of text 
	_Status integer, -- index into table StatsEvalStatus 
	__StudyIssue integer[], -- index into table StudyIssue 
	_InspectionTraceability integer, -- index into table InspectionTraceability 
	Name text, -- element of text 
	Description text, -- element of text 
	StudyId text, 
	ResultsId text[], 
	__ResultsQPId integer[], -- index into table QPIdFullReference 
	__ResultsFile integer[], -- index into table ExternalFileReference 
	__AverageFeature integer[], -- index into table AverageFeature 
	__CharacteristicsStats integer[], -- index into table CharacteristicsStats 
	__LinearStatsSummary integer[], -- index into table SummaryStatisticsLinear 
	__AngularStatsSummary integer[], -- index into table SummaryStatisticsAngular 
	__AreaStatsSummary integer[], -- index into table SummaryStatisticsArea 
	__ForceStatsSummary integer[], -- index into table SummaryStatisticsForce 
	__MassStatsSummary integer[], -- index into table SummaryStatisticsMass 
	__PressureStatsSummary integer[], -- index into table SummaryStatisticsPressure 
	__SpeedStatsSummary integer[], -- index into table SummaryStatisticsSpeed 
	__TemperatureStatsSummary integer[], -- index into table SummaryStatisticsTemperature 
	__TimeStatsSummary integer[], -- index into table SummaryStatisticsTime 
	__UserDefinedUnitStatsSummary integer[], -- index into table SummaryStatisticsUserDefinedUnit 
	__StatsSummary integer[]  -- index into table SummaryStatistics 
) ;

CREATE TABLE Statistics (
	_index_  SERIAL PRIMARY KEY,
	_Version integer, -- index into table Version 
	_StatisticalStudyPlans integer, -- index into table StatisticalStudyPlans 
	_StatisticalStudiesResults integer, -- index into table StatisticalStudiesResults 
	_CorrectiveActionPlans integer  -- index into table CorrectiveActionPlans 
) ;

CREATE TABLE StatsAngular (
	_index_  SERIAL PRIMARY KEY,
	angularUnit text NOT NULL,-- attribute
	TotalNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupTotalNumber text[], 
	EffectiveNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupEffectiveNumber text[], 
	NumberSubgroups DECIMAL(10,2), -- element of DECIMAL(10,2) 
	Average text, -- element of text 
	SubgroupAverage text[], 
	Difference text, -- element of text 
	SubgroupDifference text[], 
	RootMeanSquare text, -- element of text 
	Maximum text, -- element of text 
	MaximumId text, 
	SubgroupMaximum text, 
	Minimum text, -- element of text 
	MinimumId text, 
	SubgroupMinimum text, 
	Range text, -- element of text 
	SubgroupRange text, 
	AverageRange text, -- element of text 
	StandardDeviation text, -- element of text 
	Skew text, -- element of text 
	Kurtosis text, -- element of text 
	Normality text, -- element of text 
	ProcessVariation text, -- element of text 
	EstimatedStandardDeviation text, -- element of text 
	UpperControlLimit text, -- element of text 
	LowerControlLimit text, -- element of text 
	UpperControlLimitRange text, -- element of text 
	LowerControlLimitRange text, -- element of text 
	NumberOutOfControl DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_OutOfControlIds integer, -- index into table ArrayReferenceFull 
	AppraiserVariation text, -- element of text 
	EquipmentVariation text, -- element of text 
	Interaction text, -- element of text 
	GageRandR text, -- element of text 
	PartVariation text, -- element of text 
	TotalVariation text, -- element of text 
	Linearity text, -- element of text 
	Bias text, -- element of text 
	RelativeLinearity text, -- element of text 
	RelativeBias text, -- element of text 
	GoodnessOfFit text, -- element of text 
	RegressionSlope text, -- element of text 
	RegressionIntercept text, -- element of text 
	UpperConfidenceLimit text, -- element of text 
	LowerConfidenceLimit text, -- element of text 
	TDistribution text  -- element of text 
) ;

CREATE TABLE StatsArea (
	_index_  SERIAL PRIMARY KEY,
	areaUnit text NOT NULL,-- attribute
	TotalNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupTotalNumber text[], 
	EffectiveNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupEffectiveNumber text[], 
	NumberSubgroups DECIMAL(10,2), -- element of DECIMAL(10,2) 
	Average text, -- element of text 
	SubgroupAverage text[], 
	Difference text, -- element of text 
	SubgroupDifference text[], 
	RootMeanSquare text, -- element of text 
	Maximum text, -- element of text 
	MaximumId text, 
	SubgroupMaximum text, 
	Minimum text, -- element of text 
	MinimumId text, 
	SubgroupMinimum text, 
	Range text, -- element of text 
	SubgroupRange text, 
	AverageRange text, -- element of text 
	StandardDeviation text, -- element of text 
	Skew text, -- element of text 
	Kurtosis text, -- element of text 
	Normality text, -- element of text 
	ProcessVariation text, -- element of text 
	EstimatedStandardDeviation text, -- element of text 
	UpperControlLimit text, -- element of text 
	LowerControlLimit text, -- element of text 
	UpperControlLimitRange text, -- element of text 
	LowerControlLimitRange text, -- element of text 
	NumberOutOfControl DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_OutOfControlIds integer, -- index into table ArrayReferenceFull 
	AppraiserVariation text, -- element of text 
	EquipmentVariation text, -- element of text 
	Interaction text, -- element of text 
	GageRandR text, -- element of text 
	PartVariation text, -- element of text 
	TotalVariation text, -- element of text 
	Linearity text, -- element of text 
	Bias text, -- element of text 
	RelativeLinearity text, -- element of text 
	RelativeBias text, -- element of text 
	GoodnessOfFit text, -- element of text 
	RegressionSlope text, -- element of text 
	RegressionIntercept text, -- element of text 
	UpperConfidenceLimit text, -- element of text 
	LowerConfidenceLimit text, -- element of text 
	TDistribution text  -- element of text 
) ;

CREATE TABLE StatsArrayId (
	_index_  SERIAL PRIMARY KEY,
	_Ids integer, -- index into table ArrayReferenceFull 
	__Exclusion integer[]  -- index into table Exclusion 
) ;

CREATE TABLE StatsBase (
	_index_  SERIAL PRIMARY KEY,
	TotalNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupTotalNumber text[], 
	EffectiveNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupEffectiveNumber text[], 
	NumberSubgroups DECIMAL(10,2)  -- element of DECIMAL(10,2) 
) ;

CREATE TABLE StatsEvalStatus (
	_index_  SERIAL PRIMARY KEY,
	StatsEvalStatusEnum text, -- element of text 
	OtherStatsEvalStatus text  -- element of text 
) ;

CREATE TABLE StatsForce (
	_index_  SERIAL PRIMARY KEY,
	forceUnit text NOT NULL,-- attribute
	TotalNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupTotalNumber text[], 
	EffectiveNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupEffectiveNumber text[], 
	NumberSubgroups DECIMAL(10,2), -- element of DECIMAL(10,2) 
	Average text, -- element of text 
	SubgroupAverage text[], 
	Difference text, -- element of text 
	SubgroupDifference text[], 
	RootMeanSquare text, -- element of text 
	Maximum text, -- element of text 
	MaximumId text, 
	SubgroupMaximum text, 
	Minimum text, -- element of text 
	MinimumId text, 
	SubgroupMinimum text, 
	Range text, -- element of text 
	SubgroupRange text, 
	AverageRange text, -- element of text 
	StandardDeviation text, -- element of text 
	Skew text, -- element of text 
	Kurtosis text, -- element of text 
	Normality text, -- element of text 
	ProcessVariation text, -- element of text 
	EstimatedStandardDeviation text, -- element of text 
	UpperControlLimit text, -- element of text 
	LowerControlLimit text, -- element of text 
	UpperControlLimitRange text, -- element of text 
	LowerControlLimitRange text, -- element of text 
	NumberOutOfControl DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_OutOfControlIds integer, -- index into table ArrayReferenceFull 
	AppraiserVariation text, -- element of text 
	EquipmentVariation text, -- element of text 
	Interaction text, -- element of text 
	GageRandR text, -- element of text 
	PartVariation text, -- element of text 
	TotalVariation text, -- element of text 
	Linearity text, -- element of text 
	Bias text, -- element of text 
	RelativeLinearity text, -- element of text 
	RelativeBias text, -- element of text 
	GoodnessOfFit text, -- element of text 
	RegressionSlope text, -- element of text 
	RegressionIntercept text, -- element of text 
	UpperConfidenceLimit text, -- element of text 
	LowerConfidenceLimit text, -- element of text 
	TDistribution text  -- element of text 
) ;

CREATE TABLE StatsLinear (
	_index_  SERIAL PRIMARY KEY,
	linearUnit text NOT NULL,-- attribute
	TotalNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupTotalNumber text[], 
	EffectiveNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupEffectiveNumber text[], 
	NumberSubgroups DECIMAL(10,2), -- element of DECIMAL(10,2) 
	Average text, -- element of text 
	SubgroupAverage text[], 
	Difference text, -- element of text 
	SubgroupDifference text[], 
	RootMeanSquare text, -- element of text 
	Maximum text, -- element of text 
	MaximumId text, 
	SubgroupMaximum text, 
	Minimum text, -- element of text 
	MinimumId text, 
	SubgroupMinimum text, 
	Range text, -- element of text 
	SubgroupRange text, 
	AverageRange text, -- element of text 
	StandardDeviation text, -- element of text 
	Skew text, -- element of text 
	Kurtosis text, -- element of text 
	Normality text, -- element of text 
	ProcessVariation text, -- element of text 
	EstimatedStandardDeviation text, -- element of text 
	UpperControlLimit text, -- element of text 
	LowerControlLimit text, -- element of text 
	UpperControlLimitRange text, -- element of text 
	LowerControlLimitRange text, -- element of text 
	NumberOutOfControl DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_OutOfControlIds integer, -- index into table ArrayReferenceFull 
	AppraiserVariation text, -- element of text 
	EquipmentVariation text, -- element of text 
	Interaction text, -- element of text 
	GageRandR text, -- element of text 
	PartVariation text, -- element of text 
	TotalVariation text, -- element of text 
	Linearity text, -- element of text 
	Bias text, -- element of text 
	RelativeLinearity text, -- element of text 
	RelativeBias text, -- element of text 
	GoodnessOfFit text, -- element of text 
	RegressionSlope text, -- element of text 
	RegressionIntercept text, -- element of text 
	UpperConfidenceLimit text, -- element of text 
	LowerConfidenceLimit text, -- element of text 
	TDistribution text  -- element of text 
) ;

CREATE TABLE StatsMass (
	_index_  SERIAL PRIMARY KEY,
	massUnit text NOT NULL,-- attribute
	TotalNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupTotalNumber text[], 
	EffectiveNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupEffectiveNumber text[], 
	NumberSubgroups DECIMAL(10,2), -- element of DECIMAL(10,2) 
	Average text, -- element of text 
	SubgroupAverage text[], 
	Difference text, -- element of text 
	SubgroupDifference text[], 
	RootMeanSquare text, -- element of text 
	Maximum text, -- element of text 
	MaximumId text, 
	SubgroupMaximum text, 
	Minimum text, -- element of text 
	MinimumId text, 
	SubgroupMinimum text, 
	Range text, -- element of text 
	SubgroupRange text, 
	AverageRange text, -- element of text 
	StandardDeviation text, -- element of text 
	Skew text, -- element of text 
	Kurtosis text, -- element of text 
	Normality text, -- element of text 
	ProcessVariation text, -- element of text 
	EstimatedStandardDeviation text, -- element of text 
	UpperControlLimit text, -- element of text 
	LowerControlLimit text, -- element of text 
	UpperControlLimitRange text, -- element of text 
	LowerControlLimitRange text, -- element of text 
	NumberOutOfControl DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_OutOfControlIds integer, -- index into table ArrayReferenceFull 
	AppraiserVariation text, -- element of text 
	EquipmentVariation text, -- element of text 
	Interaction text, -- element of text 
	GageRandR text, -- element of text 
	PartVariation text, -- element of text 
	TotalVariation text, -- element of text 
	Linearity text, -- element of text 
	Bias text, -- element of text 
	RelativeLinearity text, -- element of text 
	RelativeBias text, -- element of text 
	GoodnessOfFit text, -- element of text 
	RegressionSlope text, -- element of text 
	RegressionIntercept text, -- element of text 
	UpperConfidenceLimit text, -- element of text 
	LowerConfidenceLimit text, -- element of text 
	TDistribution text  -- element of text 
) ;

CREATE TABLE StatsNumericalBase (
	_index_  SERIAL PRIMARY KEY,
	TotalNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupTotalNumber text[], 
	EffectiveNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupEffectiveNumber text[], 
	NumberSubgroups DECIMAL(10,2), -- element of DECIMAL(10,2) 
	Average text, -- element of text 
	SubgroupAverage text[], 
	Difference text, -- element of text 
	SubgroupDifference text[], 
	RootMeanSquare text, -- element of text 
	Maximum text, -- element of text 
	MaximumId text, 
	SubgroupMaximum text, 
	Minimum text, -- element of text 
	MinimumId text, 
	SubgroupMinimum text, 
	Range text, -- element of text 
	SubgroupRange text, 
	AverageRange text, -- element of text 
	StandardDeviation text, -- element of text 
	Skew text, -- element of text 
	Kurtosis text, -- element of text 
	Normality text, -- element of text 
	ProcessVariation text, -- element of text 
	EstimatedStandardDeviation text, -- element of text 
	UpperControlLimit text, -- element of text 
	LowerControlLimit text, -- element of text 
	UpperControlLimitRange text, -- element of text 
	LowerControlLimitRange text, -- element of text 
	NumberOutOfControl DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_OutOfControlIds integer, -- index into table ArrayReferenceFull 
	AppraiserVariation text, -- element of text 
	EquipmentVariation text, -- element of text 
	Interaction text, -- element of text 
	GageRandR text, -- element of text 
	PartVariation text, -- element of text 
	TotalVariation text, -- element of text 
	Linearity text, -- element of text 
	Bias text, -- element of text 
	RelativeLinearity text, -- element of text 
	RelativeBias text, -- element of text 
	GoodnessOfFit text, -- element of text 
	RegressionSlope text, -- element of text 
	RegressionIntercept text, -- element of text 
	UpperConfidenceLimit text, -- element of text 
	LowerConfidenceLimit text, -- element of text 
	TDistribution text  -- element of text 
) ;

CREATE TABLE StatsPassFail (
	_index_  SERIAL PRIMARY KEY,
	TotalNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupTotalNumber text[], 
	EffectiveNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupEffectiveNumber text[], 
	NumberSubgroups DECIMAL(10,2), -- element of DECIMAL(10,2) 
	FailurePercentage DECIMAL(10,2), -- element of DECIMAL(10,2) 
	NumberFailures DECIMAL(10,2)  -- element of DECIMAL(10,2) 
) ;

CREATE TABLE StatsPressure (
	_index_  SERIAL PRIMARY KEY,
	pressureUnit text NOT NULL,-- attribute
	TotalNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupTotalNumber text[], 
	EffectiveNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupEffectiveNumber text[], 
	NumberSubgroups DECIMAL(10,2), -- element of DECIMAL(10,2) 
	Average text, -- element of text 
	SubgroupAverage text[], 
	Difference text, -- element of text 
	SubgroupDifference text[], 
	RootMeanSquare text, -- element of text 
	Maximum text, -- element of text 
	MaximumId text, 
	SubgroupMaximum text, 
	Minimum text, -- element of text 
	MinimumId text, 
	SubgroupMinimum text, 
	Range text, -- element of text 
	SubgroupRange text, 
	AverageRange text, -- element of text 
	StandardDeviation text, -- element of text 
	Skew text, -- element of text 
	Kurtosis text, -- element of text 
	Normality text, -- element of text 
	ProcessVariation text, -- element of text 
	EstimatedStandardDeviation text, -- element of text 
	UpperControlLimit text, -- element of text 
	LowerControlLimit text, -- element of text 
	UpperControlLimitRange text, -- element of text 
	LowerControlLimitRange text, -- element of text 
	NumberOutOfControl DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_OutOfControlIds integer, -- index into table ArrayReferenceFull 
	AppraiserVariation text, -- element of text 
	EquipmentVariation text, -- element of text 
	Interaction text, -- element of text 
	GageRandR text, -- element of text 
	PartVariation text, -- element of text 
	TotalVariation text, -- element of text 
	Linearity text, -- element of text 
	Bias text, -- element of text 
	RelativeLinearity text, -- element of text 
	RelativeBias text, -- element of text 
	GoodnessOfFit text, -- element of text 
	RegressionSlope text, -- element of text 
	RegressionIntercept text, -- element of text 
	UpperConfidenceLimit text, -- element of text 
	LowerConfidenceLimit text, -- element of text 
	TDistribution text  -- element of text 
) ;

CREATE TABLE StatsSpeed (
	_index_  SERIAL PRIMARY KEY,
	speedUnit text NOT NULL,-- attribute
	TotalNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupTotalNumber text[], 
	EffectiveNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupEffectiveNumber text[], 
	NumberSubgroups DECIMAL(10,2), -- element of DECIMAL(10,2) 
	Average text, -- element of text 
	SubgroupAverage text[], 
	Difference text, -- element of text 
	SubgroupDifference text[], 
	RootMeanSquare text, -- element of text 
	Maximum text, -- element of text 
	MaximumId text, 
	SubgroupMaximum text, 
	Minimum text, -- element of text 
	MinimumId text, 
	SubgroupMinimum text, 
	Range text, -- element of text 
	SubgroupRange text, 
	AverageRange text, -- element of text 
	StandardDeviation text, -- element of text 
	Skew text, -- element of text 
	Kurtosis text, -- element of text 
	Normality text, -- element of text 
	ProcessVariation text, -- element of text 
	EstimatedStandardDeviation text, -- element of text 
	UpperControlLimit text, -- element of text 
	LowerControlLimit text, -- element of text 
	UpperControlLimitRange text, -- element of text 
	LowerControlLimitRange text, -- element of text 
	NumberOutOfControl DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_OutOfControlIds integer, -- index into table ArrayReferenceFull 
	AppraiserVariation text, -- element of text 
	EquipmentVariation text, -- element of text 
	Interaction text, -- element of text 
	GageRandR text, -- element of text 
	PartVariation text, -- element of text 
	TotalVariation text, -- element of text 
	Linearity text, -- element of text 
	Bias text, -- element of text 
	RelativeLinearity text, -- element of text 
	RelativeBias text, -- element of text 
	GoodnessOfFit text, -- element of text 
	RegressionSlope text, -- element of text 
	RegressionIntercept text, -- element of text 
	UpperConfidenceLimit text, -- element of text 
	LowerConfidenceLimit text, -- element of text 
	TDistribution text  -- element of text 
) ;

CREATE TABLE StatsTemperature (
	_index_  SERIAL PRIMARY KEY,
	temperatureUnit text NOT NULL,-- attribute
	TotalNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupTotalNumber text[], 
	EffectiveNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupEffectiveNumber text[], 
	NumberSubgroups DECIMAL(10,2), -- element of DECIMAL(10,2) 
	Average text, -- element of text 
	SubgroupAverage text[], 
	Difference text, -- element of text 
	SubgroupDifference text[], 
	RootMeanSquare text, -- element of text 
	Maximum text, -- element of text 
	MaximumId text, 
	SubgroupMaximum text, 
	Minimum text, -- element of text 
	MinimumId text, 
	SubgroupMinimum text, 
	Range text, -- element of text 
	SubgroupRange text, 
	AverageRange text, -- element of text 
	StandardDeviation text, -- element of text 
	Skew text, -- element of text 
	Kurtosis text, -- element of text 
	Normality text, -- element of text 
	ProcessVariation text, -- element of text 
	EstimatedStandardDeviation text, -- element of text 
	UpperControlLimit text, -- element of text 
	LowerControlLimit text, -- element of text 
	UpperControlLimitRange text, -- element of text 
	LowerControlLimitRange text, -- element of text 
	NumberOutOfControl DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_OutOfControlIds integer, -- index into table ArrayReferenceFull 
	AppraiserVariation text, -- element of text 
	EquipmentVariation text, -- element of text 
	Interaction text, -- element of text 
	GageRandR text, -- element of text 
	PartVariation text, -- element of text 
	TotalVariation text, -- element of text 
	Linearity text, -- element of text 
	Bias text, -- element of text 
	RelativeLinearity text, -- element of text 
	RelativeBias text, -- element of text 
	GoodnessOfFit text, -- element of text 
	RegressionSlope text, -- element of text 
	RegressionIntercept text, -- element of text 
	UpperConfidenceLimit text, -- element of text 
	LowerConfidenceLimit text, -- element of text 
	TDistribution text  -- element of text 
) ;

CREATE TABLE StatsTime (
	_index_  SERIAL PRIMARY KEY,
	timeUnit text NOT NULL,-- attribute
	TotalNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupTotalNumber text[], 
	EffectiveNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupEffectiveNumber text[], 
	NumberSubgroups DECIMAL(10,2), -- element of DECIMAL(10,2) 
	Average text, -- element of text 
	SubgroupAverage text[], 
	Difference text, -- element of text 
	SubgroupDifference text[], 
	RootMeanSquare text, -- element of text 
	Maximum text, -- element of text 
	MaximumId text, 
	SubgroupMaximum text, 
	Minimum text, -- element of text 
	MinimumId text, 
	SubgroupMinimum text, 
	Range text, -- element of text 
	SubgroupRange text, 
	AverageRange text, -- element of text 
	StandardDeviation text, -- element of text 
	Skew text, -- element of text 
	Kurtosis text, -- element of text 
	Normality text, -- element of text 
	ProcessVariation text, -- element of text 
	EstimatedStandardDeviation text, -- element of text 
	UpperControlLimit text, -- element of text 
	LowerControlLimit text, -- element of text 
	UpperControlLimitRange text, -- element of text 
	LowerControlLimitRange text, -- element of text 
	NumberOutOfControl DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_OutOfControlIds integer, -- index into table ArrayReferenceFull 
	AppraiserVariation text, -- element of text 
	EquipmentVariation text, -- element of text 
	Interaction text, -- element of text 
	GageRandR text, -- element of text 
	PartVariation text, -- element of text 
	TotalVariation text, -- element of text 
	Linearity text, -- element of text 
	Bias text, -- element of text 
	RelativeLinearity text, -- element of text 
	RelativeBias text, -- element of text 
	GoodnessOfFit text, -- element of text 
	RegressionSlope text, -- element of text 
	RegressionIntercept text, -- element of text 
	UpperConfidenceLimit text, -- element of text 
	LowerConfidenceLimit text, -- element of text 
	TDistribution text  -- element of text 
) ;

CREATE TABLE StatsUserDefinedUnit (
	_index_  SERIAL PRIMARY KEY,
	unitName text,-- attribute
	TotalNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupTotalNumber text[], 
	EffectiveNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupEffectiveNumber text[], 
	NumberSubgroups DECIMAL(10,2), -- element of DECIMAL(10,2) 
	Average text, -- element of text 
	SubgroupAverage text[], 
	Difference text, -- element of text 
	SubgroupDifference text[], 
	RootMeanSquare text, -- element of text 
	Maximum text, -- element of text 
	MaximumId text, 
	SubgroupMaximum text, 
	Minimum text, -- element of text 
	MinimumId text, 
	SubgroupMinimum text, 
	Range text, -- element of text 
	SubgroupRange text, 
	AverageRange text, -- element of text 
	StandardDeviation text, -- element of text 
	Skew text, -- element of text 
	Kurtosis text, -- element of text 
	Normality text, -- element of text 
	ProcessVariation text, -- element of text 
	EstimatedStandardDeviation text, -- element of text 
	UpperControlLimit text, -- element of text 
	LowerControlLimit text, -- element of text 
	UpperControlLimitRange text, -- element of text 
	LowerControlLimitRange text, -- element of text 
	NumberOutOfControl DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_OutOfControlIds integer, -- index into table ArrayReferenceFull 
	AppraiserVariation text, -- element of text 
	EquipmentVariation text, -- element of text 
	Interaction text, -- element of text 
	GageRandR text, -- element of text 
	PartVariation text, -- element of text 
	TotalVariation text, -- element of text 
	Linearity text, -- element of text 
	Bias text, -- element of text 
	RelativeLinearity text, -- element of text 
	RelativeBias text, -- element of text 
	GoodnessOfFit text, -- element of text 
	RegressionSlope text, -- element of text 
	RegressionIntercept text, -- element of text 
	UpperConfidenceLimit text, -- element of text 
	LowerConfidenceLimit text, -- element of text 
	TDistribution text  -- element of text 
) ;

CREATE TABLE StatsWithTolAngular (
	_index_  SERIAL PRIMARY KEY,
	angularUnit text NOT NULL,-- attribute
	TotalNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupTotalNumber text[], 
	EffectiveNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupEffectiveNumber text[], 
	NumberSubgroups DECIMAL(10,2), -- element of DECIMAL(10,2) 
	Average text, -- element of text 
	SubgroupAverage text[], 
	Difference text, -- element of text 
	SubgroupDifference text[], 
	RootMeanSquare text, -- element of text 
	Maximum text, -- element of text 
	MaximumId text, 
	SubgroupMaximum text, 
	Minimum text, -- element of text 
	MinimumId text, 
	SubgroupMinimum text, 
	Range text, -- element of text 
	SubgroupRange text, 
	AverageRange text, -- element of text 
	StandardDeviation text, -- element of text 
	Skew text, -- element of text 
	Kurtosis text, -- element of text 
	Normality text, -- element of text 
	ProcessVariation text, -- element of text 
	EstimatedStandardDeviation text, -- element of text 
	UpperControlLimit text, -- element of text 
	LowerControlLimit text, -- element of text 
	UpperControlLimitRange text, -- element of text 
	LowerControlLimitRange text, -- element of text 
	NumberOutOfControl DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_OutOfControlIds integer, -- index into table ArrayReferenceFull 
	AppraiserVariation text, -- element of text 
	EquipmentVariation text, -- element of text 
	Interaction text, -- element of text 
	GageRandR text, -- element of text 
	PartVariation text, -- element of text 
	TotalVariation text, -- element of text 
	Linearity text, -- element of text 
	Bias text, -- element of text 
	RelativeLinearity text, -- element of text 
	RelativeBias text, -- element of text 
	GoodnessOfFit text, -- element of text 
	RegressionSlope text, -- element of text 
	RegressionIntercept text, -- element of text 
	UpperConfidenceLimit text, -- element of text 
	LowerConfidenceLimit text, -- element of text 
	TDistribution text, -- element of text 
	NumberOutOfTolerance DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_OutOfToleranceIds integer, -- index into table ArrayReferenceFull 
	SubgroupNumberOutOfTolerance text, 
	NumberOverUpperTolerance DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_OverUpperToleranceIds integer, -- index into table ArrayReferenceFull 
	SubgroupNumberOverUpperTolerance text, 
	NumberUnderLowerTolerance DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_UnderLowerToleranceIds integer, -- index into table ArrayReferenceFull 
	SubgroupNumberUnderLowerTolerance text, 
	Cp text, -- element of text 
	Cpk text, -- element of text 
	Pp text, -- element of text 
	Ppk text, -- element of text 
	Cm text, -- element of text 
	Cmk text, -- element of text 
	RelativeAppraiserVariation text, -- element of text 
	RelativeEquipmentVariation text, -- element of text 
	RelativeInteraction text, -- element of text 
	RelativeGageRandR text, -- element of text 
	RelativePartVariation text, -- element of text 
	RelativeTotalVariation text  -- element of text 
) ;

CREATE TABLE StatsWithTolArea (
	_index_  SERIAL PRIMARY KEY,
	areaUnit text NOT NULL,-- attribute
	TotalNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupTotalNumber text[], 
	EffectiveNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupEffectiveNumber text[], 
	NumberSubgroups DECIMAL(10,2), -- element of DECIMAL(10,2) 
	Average text, -- element of text 
	SubgroupAverage text[], 
	Difference text, -- element of text 
	SubgroupDifference text[], 
	RootMeanSquare text, -- element of text 
	Maximum text, -- element of text 
	MaximumId text, 
	SubgroupMaximum text, 
	Minimum text, -- element of text 
	MinimumId text, 
	SubgroupMinimum text, 
	Range text, -- element of text 
	SubgroupRange text, 
	AverageRange text, -- element of text 
	StandardDeviation text, -- element of text 
	Skew text, -- element of text 
	Kurtosis text, -- element of text 
	Normality text, -- element of text 
	ProcessVariation text, -- element of text 
	EstimatedStandardDeviation text, -- element of text 
	UpperControlLimit text, -- element of text 
	LowerControlLimit text, -- element of text 
	UpperControlLimitRange text, -- element of text 
	LowerControlLimitRange text, -- element of text 
	NumberOutOfControl DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_OutOfControlIds integer, -- index into table ArrayReferenceFull 
	AppraiserVariation text, -- element of text 
	EquipmentVariation text, -- element of text 
	Interaction text, -- element of text 
	GageRandR text, -- element of text 
	PartVariation text, -- element of text 
	TotalVariation text, -- element of text 
	Linearity text, -- element of text 
	Bias text, -- element of text 
	RelativeLinearity text, -- element of text 
	RelativeBias text, -- element of text 
	GoodnessOfFit text, -- element of text 
	RegressionSlope text, -- element of text 
	RegressionIntercept text, -- element of text 
	UpperConfidenceLimit text, -- element of text 
	LowerConfidenceLimit text, -- element of text 
	TDistribution text, -- element of text 
	NumberOutOfTolerance DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_OutOfToleranceIds integer, -- index into table ArrayReferenceFull 
	SubgroupNumberOutOfTolerance text, 
	NumberOverUpperTolerance DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_OverUpperToleranceIds integer, -- index into table ArrayReferenceFull 
	SubgroupNumberOverUpperTolerance text, 
	NumberUnderLowerTolerance DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_UnderLowerToleranceIds integer, -- index into table ArrayReferenceFull 
	SubgroupNumberUnderLowerTolerance text, 
	Cp text, -- element of text 
	Cpk text, -- element of text 
	Pp text, -- element of text 
	Ppk text, -- element of text 
	Cm text, -- element of text 
	Cmk text, -- element of text 
	RelativeAppraiserVariation text, -- element of text 
	RelativeEquipmentVariation text, -- element of text 
	RelativeInteraction text, -- element of text 
	RelativeGageRandR text, -- element of text 
	RelativePartVariation text, -- element of text 
	RelativeTotalVariation text  -- element of text 
) ;

CREATE TABLE StatsWithTolForce (
	_index_  SERIAL PRIMARY KEY,
	forceUnit text NOT NULL,-- attribute
	TotalNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupTotalNumber text[], 
	EffectiveNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupEffectiveNumber text[], 
	NumberSubgroups DECIMAL(10,2), -- element of DECIMAL(10,2) 
	Average text, -- element of text 
	SubgroupAverage text[], 
	Difference text, -- element of text 
	SubgroupDifference text[], 
	RootMeanSquare text, -- element of text 
	Maximum text, -- element of text 
	MaximumId text, 
	SubgroupMaximum text, 
	Minimum text, -- element of text 
	MinimumId text, 
	SubgroupMinimum text, 
	Range text, -- element of text 
	SubgroupRange text, 
	AverageRange text, -- element of text 
	StandardDeviation text, -- element of text 
	Skew text, -- element of text 
	Kurtosis text, -- element of text 
	Normality text, -- element of text 
	ProcessVariation text, -- element of text 
	EstimatedStandardDeviation text, -- element of text 
	UpperControlLimit text, -- element of text 
	LowerControlLimit text, -- element of text 
	UpperControlLimitRange text, -- element of text 
	LowerControlLimitRange text, -- element of text 
	NumberOutOfControl DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_OutOfControlIds integer, -- index into table ArrayReferenceFull 
	AppraiserVariation text, -- element of text 
	EquipmentVariation text, -- element of text 
	Interaction text, -- element of text 
	GageRandR text, -- element of text 
	PartVariation text, -- element of text 
	TotalVariation text, -- element of text 
	Linearity text, -- element of text 
	Bias text, -- element of text 
	RelativeLinearity text, -- element of text 
	RelativeBias text, -- element of text 
	GoodnessOfFit text, -- element of text 
	RegressionSlope text, -- element of text 
	RegressionIntercept text, -- element of text 
	UpperConfidenceLimit text, -- element of text 
	LowerConfidenceLimit text, -- element of text 
	TDistribution text, -- element of text 
	NumberOutOfTolerance DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_OutOfToleranceIds integer, -- index into table ArrayReferenceFull 
	SubgroupNumberOutOfTolerance text, 
	NumberOverUpperTolerance DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_OverUpperToleranceIds integer, -- index into table ArrayReferenceFull 
	SubgroupNumberOverUpperTolerance text, 
	NumberUnderLowerTolerance DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_UnderLowerToleranceIds integer, -- index into table ArrayReferenceFull 
	SubgroupNumberUnderLowerTolerance text, 
	Cp text, -- element of text 
	Cpk text, -- element of text 
	Pp text, -- element of text 
	Ppk text, -- element of text 
	Cm text, -- element of text 
	Cmk text, -- element of text 
	RelativeAppraiserVariation text, -- element of text 
	RelativeEquipmentVariation text, -- element of text 
	RelativeInteraction text, -- element of text 
	RelativeGageRandR text, -- element of text 
	RelativePartVariation text, -- element of text 
	RelativeTotalVariation text  -- element of text 
) ;

CREATE TABLE StatsWithTolLinear (
	_index_  SERIAL PRIMARY KEY,
	linearUnit text NOT NULL,-- attribute
	TotalNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupTotalNumber text[], 
	EffectiveNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupEffectiveNumber text[], 
	NumberSubgroups DECIMAL(10,2), -- element of DECIMAL(10,2) 
	Average text, -- element of text 
	SubgroupAverage text[], 
	Difference text, -- element of text 
	SubgroupDifference text[], 
	RootMeanSquare text, -- element of text 
	Maximum text, -- element of text 
	MaximumId text, 
	SubgroupMaximum text, 
	Minimum text, -- element of text 
	MinimumId text, 
	SubgroupMinimum text, 
	Range text, -- element of text 
	SubgroupRange text, 
	AverageRange text, -- element of text 
	StandardDeviation text, -- element of text 
	Skew text, -- element of text 
	Kurtosis text, -- element of text 
	Normality text, -- element of text 
	ProcessVariation text, -- element of text 
	EstimatedStandardDeviation text, -- element of text 
	UpperControlLimit text, -- element of text 
	LowerControlLimit text, -- element of text 
	UpperControlLimitRange text, -- element of text 
	LowerControlLimitRange text, -- element of text 
	NumberOutOfControl DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_OutOfControlIds integer, -- index into table ArrayReferenceFull 
	AppraiserVariation text, -- element of text 
	EquipmentVariation text, -- element of text 
	Interaction text, -- element of text 
	GageRandR text, -- element of text 
	PartVariation text, -- element of text 
	TotalVariation text, -- element of text 
	Linearity text, -- element of text 
	Bias text, -- element of text 
	RelativeLinearity text, -- element of text 
	RelativeBias text, -- element of text 
	GoodnessOfFit text, -- element of text 
	RegressionSlope text, -- element of text 
	RegressionIntercept text, -- element of text 
	UpperConfidenceLimit text, -- element of text 
	LowerConfidenceLimit text, -- element of text 
	TDistribution text, -- element of text 
	NumberOutOfTolerance DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_OutOfToleranceIds integer, -- index into table ArrayReferenceFull 
	SubgroupNumberOutOfTolerance text, 
	NumberOverUpperTolerance DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_OverUpperToleranceIds integer, -- index into table ArrayReferenceFull 
	SubgroupNumberOverUpperTolerance text, 
	NumberUnderLowerTolerance DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_UnderLowerToleranceIds integer, -- index into table ArrayReferenceFull 
	SubgroupNumberUnderLowerTolerance text, 
	Cp text, -- element of text 
	Cpk text, -- element of text 
	Pp text, -- element of text 
	Ppk text, -- element of text 
	Cm text, -- element of text 
	Cmk text, -- element of text 
	RelativeAppraiserVariation text, -- element of text 
	RelativeEquipmentVariation text, -- element of text 
	RelativeInteraction text, -- element of text 
	RelativeGageRandR text, -- element of text 
	RelativePartVariation text, -- element of text 
	RelativeTotalVariation text  -- element of text 
) ;

CREATE TABLE StatsWithTolMass (
	_index_  SERIAL PRIMARY KEY,
	massUnit text NOT NULL,-- attribute
	TotalNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupTotalNumber text[], 
	EffectiveNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupEffectiveNumber text[], 
	NumberSubgroups DECIMAL(10,2), -- element of DECIMAL(10,2) 
	Average text, -- element of text 
	SubgroupAverage text[], 
	Difference text, -- element of text 
	SubgroupDifference text[], 
	RootMeanSquare text, -- element of text 
	Maximum text, -- element of text 
	MaximumId text, 
	SubgroupMaximum text, 
	Minimum text, -- element of text 
	MinimumId text, 
	SubgroupMinimum text, 
	Range text, -- element of text 
	SubgroupRange text, 
	AverageRange text, -- element of text 
	StandardDeviation text, -- element of text 
	Skew text, -- element of text 
	Kurtosis text, -- element of text 
	Normality text, -- element of text 
	ProcessVariation text, -- element of text 
	EstimatedStandardDeviation text, -- element of text 
	UpperControlLimit text, -- element of text 
	LowerControlLimit text, -- element of text 
	UpperControlLimitRange text, -- element of text 
	LowerControlLimitRange text, -- element of text 
	NumberOutOfControl DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_OutOfControlIds integer, -- index into table ArrayReferenceFull 
	AppraiserVariation text, -- element of text 
	EquipmentVariation text, -- element of text 
	Interaction text, -- element of text 
	GageRandR text, -- element of text 
	PartVariation text, -- element of text 
	TotalVariation text, -- element of text 
	Linearity text, -- element of text 
	Bias text, -- element of text 
	RelativeLinearity text, -- element of text 
	RelativeBias text, -- element of text 
	GoodnessOfFit text, -- element of text 
	RegressionSlope text, -- element of text 
	RegressionIntercept text, -- element of text 
	UpperConfidenceLimit text, -- element of text 
	LowerConfidenceLimit text, -- element of text 
	TDistribution text, -- element of text 
	NumberOutOfTolerance DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_OutOfToleranceIds integer, -- index into table ArrayReferenceFull 
	SubgroupNumberOutOfTolerance text, 
	NumberOverUpperTolerance DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_OverUpperToleranceIds integer, -- index into table ArrayReferenceFull 
	SubgroupNumberOverUpperTolerance text, 
	NumberUnderLowerTolerance DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_UnderLowerToleranceIds integer, -- index into table ArrayReferenceFull 
	SubgroupNumberUnderLowerTolerance text, 
	Cp text, -- element of text 
	Cpk text, -- element of text 
	Pp text, -- element of text 
	Ppk text, -- element of text 
	Cm text, -- element of text 
	Cmk text, -- element of text 
	RelativeAppraiserVariation text, -- element of text 
	RelativeEquipmentVariation text, -- element of text 
	RelativeInteraction text, -- element of text 
	RelativeGageRandR text, -- element of text 
	RelativePartVariation text, -- element of text 
	RelativeTotalVariation text  -- element of text 
) ;

CREATE TABLE StatsWithTolNumericalBase (
	_index_  SERIAL PRIMARY KEY,
	TotalNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupTotalNumber text[], 
	EffectiveNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupEffectiveNumber text[], 
	NumberSubgroups DECIMAL(10,2), -- element of DECIMAL(10,2) 
	Average text, -- element of text 
	SubgroupAverage text[], 
	Difference text, -- element of text 
	SubgroupDifference text[], 
	RootMeanSquare text, -- element of text 
	Maximum text, -- element of text 
	MaximumId text, 
	SubgroupMaximum text, 
	Minimum text, -- element of text 
	MinimumId text, 
	SubgroupMinimum text, 
	Range text, -- element of text 
	SubgroupRange text, 
	AverageRange text, -- element of text 
	StandardDeviation text, -- element of text 
	Skew text, -- element of text 
	Kurtosis text, -- element of text 
	Normality text, -- element of text 
	ProcessVariation text, -- element of text 
	EstimatedStandardDeviation text, -- element of text 
	UpperControlLimit text, -- element of text 
	LowerControlLimit text, -- element of text 
	UpperControlLimitRange text, -- element of text 
	LowerControlLimitRange text, -- element of text 
	NumberOutOfControl DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_OutOfControlIds integer, -- index into table ArrayReferenceFull 
	AppraiserVariation text, -- element of text 
	EquipmentVariation text, -- element of text 
	Interaction text, -- element of text 
	GageRandR text, -- element of text 
	PartVariation text, -- element of text 
	TotalVariation text, -- element of text 
	Linearity text, -- element of text 
	Bias text, -- element of text 
	RelativeLinearity text, -- element of text 
	RelativeBias text, -- element of text 
	GoodnessOfFit text, -- element of text 
	RegressionSlope text, -- element of text 
	RegressionIntercept text, -- element of text 
	UpperConfidenceLimit text, -- element of text 
	LowerConfidenceLimit text, -- element of text 
	TDistribution text, -- element of text 
	NumberOutOfTolerance DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_OutOfToleranceIds integer, -- index into table ArrayReferenceFull 
	SubgroupNumberOutOfTolerance text, 
	NumberOverUpperTolerance DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_OverUpperToleranceIds integer, -- index into table ArrayReferenceFull 
	SubgroupNumberOverUpperTolerance text, 
	NumberUnderLowerTolerance DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_UnderLowerToleranceIds integer, -- index into table ArrayReferenceFull 
	SubgroupNumberUnderLowerTolerance text, 
	Cp text, -- element of text 
	Cpk text, -- element of text 
	Pp text, -- element of text 
	Ppk text, -- element of text 
	Cm text, -- element of text 
	Cmk text, -- element of text 
	RelativeAppraiserVariation text, -- element of text 
	RelativeEquipmentVariation text, -- element of text 
	RelativeInteraction text, -- element of text 
	RelativeGageRandR text, -- element of text 
	RelativePartVariation text, -- element of text 
	RelativeTotalVariation text  -- element of text 
) ;

CREATE TABLE StatsWithTolPressure (
	_index_  SERIAL PRIMARY KEY,
	pressureUnit text NOT NULL,-- attribute
	TotalNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupTotalNumber text[], 
	EffectiveNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupEffectiveNumber text[], 
	NumberSubgroups DECIMAL(10,2), -- element of DECIMAL(10,2) 
	Average text, -- element of text 
	SubgroupAverage text[], 
	Difference text, -- element of text 
	SubgroupDifference text[], 
	RootMeanSquare text, -- element of text 
	Maximum text, -- element of text 
	MaximumId text, 
	SubgroupMaximum text, 
	Minimum text, -- element of text 
	MinimumId text, 
	SubgroupMinimum text, 
	Range text, -- element of text 
	SubgroupRange text, 
	AverageRange text, -- element of text 
	StandardDeviation text, -- element of text 
	Skew text, -- element of text 
	Kurtosis text, -- element of text 
	Normality text, -- element of text 
	ProcessVariation text, -- element of text 
	EstimatedStandardDeviation text, -- element of text 
	UpperControlLimit text, -- element of text 
	LowerControlLimit text, -- element of text 
	UpperControlLimitRange text, -- element of text 
	LowerControlLimitRange text, -- element of text 
	NumberOutOfControl DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_OutOfControlIds integer, -- index into table ArrayReferenceFull 
	AppraiserVariation text, -- element of text 
	EquipmentVariation text, -- element of text 
	Interaction text, -- element of text 
	GageRandR text, -- element of text 
	PartVariation text, -- element of text 
	TotalVariation text, -- element of text 
	Linearity text, -- element of text 
	Bias text, -- element of text 
	RelativeLinearity text, -- element of text 
	RelativeBias text, -- element of text 
	GoodnessOfFit text, -- element of text 
	RegressionSlope text, -- element of text 
	RegressionIntercept text, -- element of text 
	UpperConfidenceLimit text, -- element of text 
	LowerConfidenceLimit text, -- element of text 
	TDistribution text, -- element of text 
	NumberOutOfTolerance DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_OutOfToleranceIds integer, -- index into table ArrayReferenceFull 
	SubgroupNumberOutOfTolerance text, 
	NumberOverUpperTolerance DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_OverUpperToleranceIds integer, -- index into table ArrayReferenceFull 
	SubgroupNumberOverUpperTolerance text, 
	NumberUnderLowerTolerance DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_UnderLowerToleranceIds integer, -- index into table ArrayReferenceFull 
	SubgroupNumberUnderLowerTolerance text, 
	Cp text, -- element of text 
	Cpk text, -- element of text 
	Pp text, -- element of text 
	Ppk text, -- element of text 
	Cm text, -- element of text 
	Cmk text, -- element of text 
	RelativeAppraiserVariation text, -- element of text 
	RelativeEquipmentVariation text, -- element of text 
	RelativeInteraction text, -- element of text 
	RelativeGageRandR text, -- element of text 
	RelativePartVariation text, -- element of text 
	RelativeTotalVariation text  -- element of text 
) ;

CREATE TABLE StatsWithTolSpeed (
	_index_  SERIAL PRIMARY KEY,
	speedUnit text NOT NULL,-- attribute
	TotalNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupTotalNumber text[], 
	EffectiveNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupEffectiveNumber text[], 
	NumberSubgroups DECIMAL(10,2), -- element of DECIMAL(10,2) 
	Average text, -- element of text 
	SubgroupAverage text[], 
	Difference text, -- element of text 
	SubgroupDifference text[], 
	RootMeanSquare text, -- element of text 
	Maximum text, -- element of text 
	MaximumId text, 
	SubgroupMaximum text, 
	Minimum text, -- element of text 
	MinimumId text, 
	SubgroupMinimum text, 
	Range text, -- element of text 
	SubgroupRange text, 
	AverageRange text, -- element of text 
	StandardDeviation text, -- element of text 
	Skew text, -- element of text 
	Kurtosis text, -- element of text 
	Normality text, -- element of text 
	ProcessVariation text, -- element of text 
	EstimatedStandardDeviation text, -- element of text 
	UpperControlLimit text, -- element of text 
	LowerControlLimit text, -- element of text 
	UpperControlLimitRange text, -- element of text 
	LowerControlLimitRange text, -- element of text 
	NumberOutOfControl DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_OutOfControlIds integer, -- index into table ArrayReferenceFull 
	AppraiserVariation text, -- element of text 
	EquipmentVariation text, -- element of text 
	Interaction text, -- element of text 
	GageRandR text, -- element of text 
	PartVariation text, -- element of text 
	TotalVariation text, -- element of text 
	Linearity text, -- element of text 
	Bias text, -- element of text 
	RelativeLinearity text, -- element of text 
	RelativeBias text, -- element of text 
	GoodnessOfFit text, -- element of text 
	RegressionSlope text, -- element of text 
	RegressionIntercept text, -- element of text 
	UpperConfidenceLimit text, -- element of text 
	LowerConfidenceLimit text, -- element of text 
	TDistribution text, -- element of text 
	NumberOutOfTolerance DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_OutOfToleranceIds integer, -- index into table ArrayReferenceFull 
	SubgroupNumberOutOfTolerance text, 
	NumberOverUpperTolerance DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_OverUpperToleranceIds integer, -- index into table ArrayReferenceFull 
	SubgroupNumberOverUpperTolerance text, 
	NumberUnderLowerTolerance DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_UnderLowerToleranceIds integer, -- index into table ArrayReferenceFull 
	SubgroupNumberUnderLowerTolerance text, 
	Cp text, -- element of text 
	Cpk text, -- element of text 
	Pp text, -- element of text 
	Ppk text, -- element of text 
	Cm text, -- element of text 
	Cmk text, -- element of text 
	RelativeAppraiserVariation text, -- element of text 
	RelativeEquipmentVariation text, -- element of text 
	RelativeInteraction text, -- element of text 
	RelativeGageRandR text, -- element of text 
	RelativePartVariation text, -- element of text 
	RelativeTotalVariation text  -- element of text 
) ;

CREATE TABLE StatsWithTolTemperature (
	_index_  SERIAL PRIMARY KEY,
	temperatureUnit text NOT NULL,-- attribute
	TotalNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupTotalNumber text[], 
	EffectiveNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupEffectiveNumber text[], 
	NumberSubgroups DECIMAL(10,2), -- element of DECIMAL(10,2) 
	Average text, -- element of text 
	SubgroupAverage text[], 
	Difference text, -- element of text 
	SubgroupDifference text[], 
	RootMeanSquare text, -- element of text 
	Maximum text, -- element of text 
	MaximumId text, 
	SubgroupMaximum text, 
	Minimum text, -- element of text 
	MinimumId text, 
	SubgroupMinimum text, 
	Range text, -- element of text 
	SubgroupRange text, 
	AverageRange text, -- element of text 
	StandardDeviation text, -- element of text 
	Skew text, -- element of text 
	Kurtosis text, -- element of text 
	Normality text, -- element of text 
	ProcessVariation text, -- element of text 
	EstimatedStandardDeviation text, -- element of text 
	UpperControlLimit text, -- element of text 
	LowerControlLimit text, -- element of text 
	UpperControlLimitRange text, -- element of text 
	LowerControlLimitRange text, -- element of text 
	NumberOutOfControl DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_OutOfControlIds integer, -- index into table ArrayReferenceFull 
	AppraiserVariation text, -- element of text 
	EquipmentVariation text, -- element of text 
	Interaction text, -- element of text 
	GageRandR text, -- element of text 
	PartVariation text, -- element of text 
	TotalVariation text, -- element of text 
	Linearity text, -- element of text 
	Bias text, -- element of text 
	RelativeLinearity text, -- element of text 
	RelativeBias text, -- element of text 
	GoodnessOfFit text, -- element of text 
	RegressionSlope text, -- element of text 
	RegressionIntercept text, -- element of text 
	UpperConfidenceLimit text, -- element of text 
	LowerConfidenceLimit text, -- element of text 
	TDistribution text, -- element of text 
	NumberOutOfTolerance DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_OutOfToleranceIds integer, -- index into table ArrayReferenceFull 
	SubgroupNumberOutOfTolerance text, 
	NumberOverUpperTolerance DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_OverUpperToleranceIds integer, -- index into table ArrayReferenceFull 
	SubgroupNumberOverUpperTolerance text, 
	NumberUnderLowerTolerance DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_UnderLowerToleranceIds integer, -- index into table ArrayReferenceFull 
	SubgroupNumberUnderLowerTolerance text, 
	Cp text, -- element of text 
	Cpk text, -- element of text 
	Pp text, -- element of text 
	Ppk text, -- element of text 
	Cm text, -- element of text 
	Cmk text, -- element of text 
	RelativeAppraiserVariation text, -- element of text 
	RelativeEquipmentVariation text, -- element of text 
	RelativeInteraction text, -- element of text 
	RelativeGageRandR text, -- element of text 
	RelativePartVariation text, -- element of text 
	RelativeTotalVariation text  -- element of text 
) ;

CREATE TABLE StatsWithTolTime (
	_index_  SERIAL PRIMARY KEY,
	timeUnit text NOT NULL,-- attribute
	TotalNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupTotalNumber text[], 
	EffectiveNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupEffectiveNumber text[], 
	NumberSubgroups DECIMAL(10,2), -- element of DECIMAL(10,2) 
	Average text, -- element of text 
	SubgroupAverage text[], 
	Difference text, -- element of text 
	SubgroupDifference text[], 
	RootMeanSquare text, -- element of text 
	Maximum text, -- element of text 
	MaximumId text, 
	SubgroupMaximum text, 
	Minimum text, -- element of text 
	MinimumId text, 
	SubgroupMinimum text, 
	Range text, -- element of text 
	SubgroupRange text, 
	AverageRange text, -- element of text 
	StandardDeviation text, -- element of text 
	Skew text, -- element of text 
	Kurtosis text, -- element of text 
	Normality text, -- element of text 
	ProcessVariation text, -- element of text 
	EstimatedStandardDeviation text, -- element of text 
	UpperControlLimit text, -- element of text 
	LowerControlLimit text, -- element of text 
	UpperControlLimitRange text, -- element of text 
	LowerControlLimitRange text, -- element of text 
	NumberOutOfControl DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_OutOfControlIds integer, -- index into table ArrayReferenceFull 
	AppraiserVariation text, -- element of text 
	EquipmentVariation text, -- element of text 
	Interaction text, -- element of text 
	GageRandR text, -- element of text 
	PartVariation text, -- element of text 
	TotalVariation text, -- element of text 
	Linearity text, -- element of text 
	Bias text, -- element of text 
	RelativeLinearity text, -- element of text 
	RelativeBias text, -- element of text 
	GoodnessOfFit text, -- element of text 
	RegressionSlope text, -- element of text 
	RegressionIntercept text, -- element of text 
	UpperConfidenceLimit text, -- element of text 
	LowerConfidenceLimit text, -- element of text 
	TDistribution text, -- element of text 
	NumberOutOfTolerance DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_OutOfToleranceIds integer, -- index into table ArrayReferenceFull 
	SubgroupNumberOutOfTolerance text, 
	NumberOverUpperTolerance DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_OverUpperToleranceIds integer, -- index into table ArrayReferenceFull 
	SubgroupNumberOverUpperTolerance text, 
	NumberUnderLowerTolerance DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_UnderLowerToleranceIds integer, -- index into table ArrayReferenceFull 
	SubgroupNumberUnderLowerTolerance text, 
	Cp text, -- element of text 
	Cpk text, -- element of text 
	Pp text, -- element of text 
	Ppk text, -- element of text 
	Cm text, -- element of text 
	Cmk text, -- element of text 
	RelativeAppraiserVariation text, -- element of text 
	RelativeEquipmentVariation text, -- element of text 
	RelativeInteraction text, -- element of text 
	RelativeGageRandR text, -- element of text 
	RelativePartVariation text, -- element of text 
	RelativeTotalVariation text  -- element of text 
) ;

CREATE TABLE StatsWithTolUserDefinedUnit (
	_index_  SERIAL PRIMARY KEY,
	unitName text,-- attribute
	TotalNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupTotalNumber text[], 
	EffectiveNumber DECIMAL(10,2), -- element of DECIMAL(10,2) 
	SubgroupEffectiveNumber text[], 
	NumberSubgroups DECIMAL(10,2), -- element of DECIMAL(10,2) 
	Average text, -- element of text 
	SubgroupAverage text[], 
	Difference text, -- element of text 
	SubgroupDifference text[], 
	RootMeanSquare text, -- element of text 
	Maximum text, -- element of text 
	MaximumId text, 
	SubgroupMaximum text, 
	Minimum text, -- element of text 
	MinimumId text, 
	SubgroupMinimum text, 
	Range text, -- element of text 
	SubgroupRange text, 
	AverageRange text, -- element of text 
	StandardDeviation text, -- element of text 
	Skew text, -- element of text 
	Kurtosis text, -- element of text 
	Normality text, -- element of text 
	ProcessVariation text, -- element of text 
	EstimatedStandardDeviation text, -- element of text 
	UpperControlLimit text, -- element of text 
	LowerControlLimit text, -- element of text 
	UpperControlLimitRange text, -- element of text 
	LowerControlLimitRange text, -- element of text 
	NumberOutOfControl DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_OutOfControlIds integer, -- index into table ArrayReferenceFull 
	AppraiserVariation text, -- element of text 
	EquipmentVariation text, -- element of text 
	Interaction text, -- element of text 
	GageRandR text, -- element of text 
	PartVariation text, -- element of text 
	TotalVariation text, -- element of text 
	Linearity text, -- element of text 
	Bias text, -- element of text 
	RelativeLinearity text, -- element of text 
	RelativeBias text, -- element of text 
	GoodnessOfFit text, -- element of text 
	RegressionSlope text, -- element of text 
	RegressionIntercept text, -- element of text 
	UpperConfidenceLimit text, -- element of text 
	LowerConfidenceLimit text, -- element of text 
	TDistribution text, -- element of text 
	NumberOutOfTolerance DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_OutOfToleranceIds integer, -- index into table ArrayReferenceFull 
	SubgroupNumberOutOfTolerance text, 
	NumberOverUpperTolerance DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_OverUpperToleranceIds integer, -- index into table ArrayReferenceFull 
	SubgroupNumberOverUpperTolerance text, 
	NumberUnderLowerTolerance DECIMAL(10,2), -- element of DECIMAL(10,2) 
	_UnderLowerToleranceIds integer, -- index into table ArrayReferenceFull 
	SubgroupNumberUnderLowerTolerance text, 
	Cp text, -- element of text 
	Cpk text, -- element of text 
	Pp text, -- element of text 
	Ppk text, -- element of text 
	Cm text, -- element of text 
	Cmk text, -- element of text 
	RelativeAppraiserVariation text, -- element of text 
	RelativeEquipmentVariation text, -- element of text 
	RelativeInteraction text, -- element of text 
	RelativeGageRandR text, -- element of text 
	RelativePartVariation text, -- element of text 
	RelativeTotalVariation text  -- element of text 
) ;

CREATE TABLE StepWithPredecessors (
	_index_  SERIAL PRIMARY KEY,
	_Predecessors integer, -- index into table Predecessors 
	_Step integer  -- index into table NumberedPlanElement 
) ;

CREATE TABLE StepsWithPredecessors (
	_index_  SERIAL PRIMARY KEY,
	__StepWithPredecessors integer[]  -- index into table StepWithPredecessors 
) ;

CREATE TABLE StraightnessCharacteristicActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text, 
	MaxStraightness text, 
	ZoneOrientation text, 
	_ZoneLine integer  -- index into table ActualZoneAxis 
) ;

CREATE TABLE StraightnessCharacteristicDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	_DirectionFeature integer, -- index into table DirectionFeature 
	_CollectionPlane integer, -- index into table CollectionPlane 
	_IntersectionPlane integer, -- index into table IntersectionPlane 
	_OrientationPlane integer, -- index into table OrientationPlane 
	ToleranceValue text, 
	_ToleranceZonePerUnitLength integer, -- index into table ToleranceZonePerUnitLength 
	MaterialCondition text, -- element of text 
	_ZoneShape integer  -- index into table StraightnessZoneShape 
) ;

CREATE TABLE StraightnessCharacteristicItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE StraightnessCharacteristicNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_ZoneLimit integer  -- index into table CharacteristicDirectionalZoneLimit 
) ;

CREATE TABLE StraightnessCharacteristicStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_ValueStats integer, -- index into table StatsWithTolLinear 
	_MaxValueStats integer, -- index into table StatsLinear 
	_MinValueStats integer, -- index into table StatsLinear 
	CapabilityCalculationMethod text, -- element of text 
	_MaxStraightnessStats integer  -- index into table StatsLinear 
) ;

CREATE TABLE StraightnessDiametricalZone (
	_index_  SERIAL PRIMARY KEY 
) ;

CREATE TABLE StraightnessNonDiametricalZone (
	_index_  SERIAL PRIMARY KEY,
	ZoneOrientationVector DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE StraightnessZoneShape (
	_index_  SERIAL PRIMARY KEY,
	_DiametricalZone integer, -- index into table StraightnessDiametricalZone 
	_NonDiametricalZone integer  -- index into table StraightnessNonDiametricalZone 
) ;

CREATE TABLE StringValues (
	_index_  SERIAL PRIMARY KEY,
	StringValue text  -- element of text 
) ;

CREATE TABLE StudyIssue (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Traceability integer, -- index into table InspectionTraceability 
	_AssignableCauseIds integer, -- index into table ArrayReferenceFull 
	_CorrectiveActionIds integer, -- index into table ArrayReferenceFull 
	Resolution text, -- element of text 
	_CharacteristicIds integer, -- index into table ArrayReferenceFull 
	_SubgroupIds integer  -- index into table ArrayReferenceFull 
) ;

CREATE TABLE SubstituteFeatureAlgorithmBase (
	_index_  SERIAL PRIMARY KEY 
) ;

CREATE TABLE SummaryStatisticsAngular (
	_index_  SERIAL PRIMARY KEY,
	angularUnit text NOT NULL,-- attribute
	Summary text, -- element of text 
	Average text, -- element of text 
	Maximum text, -- element of text 
	Minimum text, -- element of text 
	Range text, -- element of text 
	StandardDeviation text  -- element of text 
) ;

CREATE TABLE SummaryStatisticsArea (
	_index_  SERIAL PRIMARY KEY,
	areaUnit text NOT NULL,-- attribute
	Summary text, -- element of text 
	Average text, -- element of text 
	Maximum text, -- element of text 
	Minimum text, -- element of text 
	Range text, -- element of text 
	StandardDeviation text  -- element of text 
) ;

CREATE TABLE SummaryStatisticsForce (
	_index_  SERIAL PRIMARY KEY,
	forceUnit text NOT NULL,-- attribute
	Summary text, -- element of text 
	Average text, -- element of text 
	Maximum text, -- element of text 
	Minimum text, -- element of text 
	Range text, -- element of text 
	StandardDeviation text  -- element of text 
) ;

CREATE TABLE SummaryStatisticsLinear (
	_index_  SERIAL PRIMARY KEY,
	linearUnit text NOT NULL,-- attribute
	Summary text, -- element of text 
	Average text, -- element of text 
	Maximum text, -- element of text 
	Minimum text, -- element of text 
	Range text, -- element of text 
	StandardDeviation text  -- element of text 
) ;

CREATE TABLE SummaryStatisticsMass (
	_index_  SERIAL PRIMARY KEY,
	massUnit text NOT NULL,-- attribute
	Summary text, -- element of text 
	Average text, -- element of text 
	Maximum text, -- element of text 
	Minimum text, -- element of text 
	Range text, -- element of text 
	StandardDeviation text  -- element of text 
) ;

CREATE TABLE SummaryStatisticsPressure (
	_index_  SERIAL PRIMARY KEY,
	pressureUnit text NOT NULL,-- attribute
	Summary text, -- element of text 
	Average text, -- element of text 
	Maximum text, -- element of text 
	Minimum text, -- element of text 
	Range text, -- element of text 
	StandardDeviation text  -- element of text 
) ;

CREATE TABLE SummaryStatisticsSpeed (
	_index_  SERIAL PRIMARY KEY,
	speedUnit text NOT NULL,-- attribute
	Summary text, -- element of text 
	Average text, -- element of text 
	Maximum text, -- element of text 
	Minimum text, -- element of text 
	Range text, -- element of text 
	StandardDeviation text  -- element of text 
) ;

CREATE TABLE SummaryStatisticsTemperature (
	_index_  SERIAL PRIMARY KEY,
	temperatureUnit text NOT NULL,-- attribute
	Summary text, -- element of text 
	Average text, -- element of text 
	Maximum text, -- element of text 
	Minimum text, -- element of text 
	Range text, -- element of text 
	StandardDeviation text  -- element of text 
) ;

CREATE TABLE SummaryStatisticsTime (
	_index_  SERIAL PRIMARY KEY,
	timeUnit text NOT NULL,-- attribute
	Summary text, -- element of text 
	Average text, -- element of text 
	Maximum text, -- element of text 
	Minimum text, -- element of text 
	Range text, -- element of text 
	StandardDeviation text  -- element of text 
) ;

CREATE TABLE SummaryStatistics (
	_index_  SERIAL PRIMARY KEY,
	Summary text, -- element of text 
	Average text, -- element of text 
	Maximum text, -- element of text 
	Minimum text, -- element of text 
	Range text, -- element of text 
	StandardDeviation text  -- element of text 
) ;

CREATE TABLE SummaryStatisticsUserDefinedUnit (
	_index_  SERIAL PRIMARY KEY,
	unitName text,-- attribute
	Summary text, -- element of text 
	Average text, -- element of text 
	Maximum text, -- element of text 
	Minimum text, -- element of text 
	Range text, -- element of text 
	StandardDeviation text  -- element of text 
) ;

CREATE TABLE SummaryStatsValues (
	_index_  SERIAL PRIMARY KEY,
	Summary text, -- element of text 
	SummaryStats StatsValuesEnumType  -- element of StatsValuesEnumType 
) ;

CREATE TABLE SurfaceBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer  -- index into table Attributes 
) ;

CREATE TABLE SurfaceCoreBase (
	_index_  SERIAL PRIMARY KEY,
	form text NOT NULL -- attribute
) ;

CREATE TABLE SurfaceCore (
	_index_  SERIAL PRIMARY KEY,
	_Cone23Core integer, -- index into table Cone23Core 
	_Cylinder23Core integer, -- index into table Cylinder23Core 
	_Extrude23Core integer, -- index into table Extrude23Core 
	_Nurbs23Core integer, -- index into table Nurbs23Core 
	_Offset23Core integer, -- index into table Offset23Core 
	_Plane23Core integer, -- index into table Plane23Core 
	_Revolution23Core integer, -- index into table Revolution23Core 
	_Ruled23Core integer, -- index into table Ruled23Core 
	_Sphere23Core integer, -- index into table Sphere23Core 
	_Spline23Core integer, -- index into table Spline23Core 
	_SurfaceCore integer, -- index into table SurfaceCoreBase 
	_Torus23Core integer  -- index into table Torus23Core 
) ;

CREATE TABLE SurfaceMeshSet (
	_index_  SERIAL PRIMARY KEY,
	N text,-- attribute
	__MeshTriangle integer[]  -- index into table MeshTriangle 
) ;

CREATE TABLE SurfaceOfRevolutionActualDetermination (
	_index_  SERIAL PRIMARY KEY,
	_Checked integer, -- index into table SurfaceOfRevolutionCheckedFeature 
	_Set integer  -- index into table SetFeature 
) ;

CREATE TABLE SurfaceOfRevolutionBestFit (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	__BaseFeature integer[]  -- index into table SequencedBaseFeature 
) ;

CREATE TABLE SurfaceOfRevolutionCast (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseFeature integer  -- index into table BaseFeature 
) ;

CREATE TABLE SurfaceOfRevolutionCheckedFeature (
	_index_  SERIAL PRIMARY KEY,
	_CheckDetails integer  -- index into table SurfaceOfRevolutionChecked 
) ;

CREATE TABLE SurfaceOfRevolutionChecked (
	_index_  SERIAL PRIMARY KEY,
	_Measured integer, -- index into table MeasuredFeature 
	_Constructed integer  -- index into table SurfaceOfRevolutionConstructionMethod 
) ;

CREATE TABLE SurfaceOfRevolutionConstructionMethod (
	_index_  SERIAL PRIMARY KEY,
	_BestFit integer, -- index into table SurfaceOfRevolutionBestFit 
	_Recompensated integer, -- index into table SurfaceOfRevolutionRecomp 
	_Copy integer, -- index into table SurfaceOfRevolutionCopy 
	_Cast integer, -- index into table SurfaceOfRevolutionCast 
	_Transform integer  -- index into table SurfaceOfRevolutionTransform 
) ;

CREATE TABLE SurfaceOfRevolutionCopy (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseSurfaceOfRevolution integer  -- index into table BaseFeature 
) ;

CREATE TABLE SurfaceOfRevolutionFeatureActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	_PointList integer, -- index into table PointListActual 
	FeatureItemId text, 
	ActualComponentId text, 
	ManufacturingProcessId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	_Axis integer, -- index into table ActualAxis 
	_Sweep integer, -- index into table Sweep 
	Length text, 
	Form text  
) ;

CREATE TABLE SurfaceOfRevolutionFeatureDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	InternalExternal text, -- element of text 
	Length text  
) ;

CREATE TABLE SurfaceOfRevolutionFeatureItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	FeatureNominalId text, 
	ParentFeatureItemId text, 
	FeatureName text, -- element of text 
	QPId text, -- element of text 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	CoordinateSystemId text, 
	_DeterminationMode integer, -- index into table SurfaceOfRevolutionActualDetermination 
	_SubstituteFeatureAlgorithm integer  -- index into table CurveSubstituteFeatureAlgorithm 
) ;

CREATE TABLE SurfaceOfRevolutionFeatureNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Name text, -- element of text 
	_PointList integer, -- index into table PointListNominal 
	FeatureDefinitionId text, -- element of text 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	_Axis integer, -- index into table Axis 
	_Sweep integer, -- index into table Sweep 
	ReferenceFeatureNominalId text  
) ;

CREATE TABLE SurfaceOfRevolutionPointSamplingStrategy (
	_index_  SERIAL PRIMARY KEY,
	PointSamplingStrategyEnum text, -- element of text 
	UserDefinedStrategy text  -- element of text 
) ;

CREATE TABLE SurfaceOfRevolutionRecomp (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseFeaturePointList integer  -- index into table BaseFeaturePointList 
) ;

CREATE TABLE SurfaceOfRevolutionTransform (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseSurfaceOfRevolution integer, -- index into table BaseFeature 
	_Transformation integer  -- index into table TransformationReference 
) ;

CREATE TABLE SurfaceProfileCharacteristicActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text, 
	WorstPositiveDeviation text, 
	WorstNegativeDeviation text, 
	_PointDeviations integer, -- index into table PointDeviations 
	DatumsOk BOOLEAN, -- element of BOOLEAN 
	DRFTransformActualId text, 
	_SecondCompositeSegmentProfileActual integer, -- index into table CompositeSegmentProfileActual 
	_ThirdCompositeSegmentProfileActual integer, -- index into table CompositeSegmentProfileActual 
	_FourthCompositeSegmentProfileActual integer  -- index into table CompositeSegmentProfileActual 
) ;

CREATE TABLE SurfaceProfileCharacteristicDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	_DirectionFeature integer, -- index into table DirectionFeature 
	_CollectionPlane integer, -- index into table CollectionPlane 
	_IntersectionPlane integer, -- index into table IntersectionPlane 
	_OrientationPlane integer, -- index into table OrientationPlane 
	ToleranceValue text, 
	OuterDisposition text, 
	UnequallyDisposedZone text, 
	OffsetZone BOOLEAN, -- element of BOOLEAN 
	_SecondCompositeSegmentProfileDefinition integer, -- index into table CompositeSegmentProfileDefinition 
	_ThirdCompositeSegmentProfileDefinition integer, -- index into table CompositeSegmentProfileDefinition 
	_FourthCompositeSegmentProfileDefinition integer, -- index into table CompositeSegmentProfileDefinition 
	DatumReferenceFrameId text, 
	OrientationOnly BOOLEAN, -- element of BOOLEAN 
	_Extent integer  -- index into table Extent 
) ;

CREATE TABLE SurfaceProfileCharacteristicItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE SurfaceProfileCharacteristicNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	TargetValue text, 
	_CircularZoneLimit integer, -- index into table CharacteristicCircularZoneLimit 
	_DirectionalZoneLimit integer, -- index into table CharacteristicDirectionalZoneLimit 
	_RectangularZoneLimit integer  -- index into table CharacteristicRectangularZoneLimit 
) ;

CREATE TABLE SurfaceProfileCharacteristicStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_ValueStats integer, -- index into table StatsWithTolLinear 
	_MaxValueStats integer, -- index into table StatsLinear 
	_MinValueStats integer, -- index into table StatsLinear 
	CapabilityCalculationMethod text, -- element of text 
	_WorstPositiveDeviationStats integer, -- index into table StatsLinear 
	_WorstNegativeDeviationStats integer, -- index into table StatsLinear 
	_PointDeviationsStats integer, -- index into table PointDeviationsStatsEval 
	_DatumsOkStats integer, -- index into table StatsPassFail 
	_CompositeSegmentsStats integer  -- index into table CompositeSegmentsProfileStatsEval 
) ;

CREATE TABLE SurfaceProfileNonUniformCharacteristicActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text, 
	WorstPositiveDeviation text, 
	WorstNegativeDeviation text, 
	_PointDeviations integer, -- index into table PointDeviations 
	DatumsOk BOOLEAN, -- element of BOOLEAN 
	DRFTransformActualId text, 
	_SecondCompositeSegmentProfileActual integer, -- index into table CompositeSegmentProfileActual 
	_ThirdCompositeSegmentProfileActual integer, -- index into table CompositeSegmentProfileActual 
	_FourthCompositeSegmentProfileActual integer  -- index into table CompositeSegmentProfileActual 
) ;

CREATE TABLE SurfaceProfileNonUniformCharacteristicDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	_DirectionFeature integer, -- index into table DirectionFeature 
	_CollectionPlane integer, -- index into table CollectionPlane 
	_IntersectionPlane integer, -- index into table IntersectionPlane 
	_OrientationPlane integer, -- index into table OrientationPlane 
	ToleranceValue text, 
	OuterDisposition text, 
	UnequallyDisposedZone text, 
	OffsetZone BOOLEAN, -- element of BOOLEAN 
	_SecondCompositeSegmentProfileDefinition integer, -- index into table CompositeSegmentProfileDefinition 
	_ThirdCompositeSegmentProfileDefinition integer, -- index into table CompositeSegmentProfileDefinition 
	_FourthCompositeSegmentProfileDefinition integer, -- index into table CompositeSegmentProfileDefinition 
	DatumReferenceFrameId text, 
	OrientationOnly BOOLEAN, -- element of BOOLEAN 
	ToPointToleranceValue text  
) ;

CREATE TABLE SurfaceProfileNonUniformCharacteristicItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE SurfaceProfileNonUniformCharacteristicNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	TargetValue text, 
	_ZoneLimit integer  -- index into table CharacteristicDirectionalZoneLimit 
) ;

CREATE TABLE SurfaceProfileNonUniformCharacteristicStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_ValueStats integer, -- index into table StatsWithTolLinear 
	_MaxValueStats integer, -- index into table StatsLinear 
	_MinValueStats integer, -- index into table StatsLinear 
	CapabilityCalculationMethod text, -- element of text 
	_WorstPositiveDeviationStats integer, -- index into table StatsLinear 
	_WorstNegativeDeviationStats integer, -- index into table StatsLinear 
	_PointDeviationsStats integer, -- index into table PointDeviationsStatsEval 
	_DatumsOkStats integer, -- index into table StatsPassFail 
	_CompositeSegmentsStats integer  -- index into table CompositeSegmentsProfileStatsEval 
) ;

CREATE TABLE SurfaceSet (
	_index_  SERIAL PRIMARY KEY,
	N text,-- attribute
	__Cone23 integer[], -- index into table Cone23 
	__Cylinder23 integer[], -- index into table Cylinder23 
	__Extrude23 integer[], -- index into table Extrude23 
	__Nurbs23 integer[], -- index into table Nurbs23 
	__Offset23 integer[], -- index into table Offset23 
	__Plane23 integer[], -- index into table Plane23 
	__Revolution23 integer[], -- index into table Revolution23 
	__Ruled23 integer[], -- index into table Ruled23 
	__Sphere23 integer[], -- index into table Sphere23 
	__Spline23 integer[], -- index into table Spline23 
	__Surface integer[], -- index into table SurfaceBase 
	__Torus23 integer[]  -- index into table Torus23 
) ;

CREATE TABLE SurfaceSubstituteFeatureAlgorithm (
	_index_  SERIAL PRIMARY KEY,
	SurfaceSubstituteFeatureAlgorithmEnum text, -- element of text 
	OtherSurfaceSubstituteFeatureAlgorithm text  -- element of text 
) ;

CREATE TABLE SurfaceTextureCharacteristicActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	RoughnessAverageValue text  
) ;

CREATE TABLE SurfaceTextureCharacteristicDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	RoughnessAverage text  
) ;

CREATE TABLE SurfaceTextureCharacteristicItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE SurfaceTextureCharacteristicNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer  -- index into table KeyCharacteristic 
) ;

CREATE TABLE SurfaceTextureCharacteristicStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_RoughnessAverageValueStats integer  -- index into table StatsWithTolLinear 
) ;

CREATE TABLE Sweep (
	_index_  SERIAL PRIMARY KEY,
	DirBeg DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	DomainAngle text  
) ;

CREATE TABLE SymmetryCharacteristicActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text, 
	__ZoneData integer[], -- index into table ZoneData 
	DatumsOk BOOLEAN, -- element of BOOLEAN 
	_SecondCompositeSegmentSymmetryActual integer, -- index into table CompositeSegmentSymmetryActual 
	_ThirdCompositeSegmentSymmetryActual integer  -- index into table CompositeSegmentSymmetryActual 
) ;

CREATE TABLE SymmetryCharacteristicDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	_DirectionFeature integer, -- index into table DirectionFeature 
	_CollectionPlane integer, -- index into table CollectionPlane 
	_IntersectionPlane integer, -- index into table IntersectionPlane 
	_OrientationPlane integer, -- index into table OrientationPlane 
	ToleranceValue text, 
	DatumReferenceFrameId text, 
	_SecondCompositeSegmentSymmetryDefinition integer, -- index into table CompositeSegmentSymmetryDefinition 
	_ThirdCompositeSegmentSymmetryDefinition integer  -- index into table CompositeSegmentSymmetryDefinition 
) ;

CREATE TABLE SymmetryCharacteristicItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE SymmetryCharacteristicNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer  -- index into table KeyCharacteristic 
) ;

CREATE TABLE SymmetryCharacteristicStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_ValueStats integer, -- index into table StatsWithTolLinear 
	_MaxValueStats integer, -- index into table StatsLinear 
	_MinValueStats integer, -- index into table StatsLinear 
	_DatumsOkStats integer, -- index into table StatsPassFail 
	CapabilityCalculationMethod text, -- element of text 
	_CompositeSegmentsStats integer  -- index into table CompositeSegmentsSymmetryStatsEval 
) ;

CREATE TABLE TableErrors (
	_index_  SERIAL PRIMARY KEY,
	AxialError text, 
	RadialError text, 
	TangentialError text  
) ;

CREATE TABLE TargetPointActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	Point text, 
	Normal text  
) ;

CREATE TABLE TargetPointNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	Point DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	Normal DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE TargetPointsActual (
	_index_  SERIAL PRIMARY KEY,
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
	combinedUncertainty text NOT NULL,-- attribute
	meanError text NOT NULL,-- attribute
	xCombinedUncertainty text NOT NULL,-- attribute
	xMeanError text NOT NULL,-- attribute
	yCombinedUncertainty text NOT NULL,-- attribute
	yMeanError text NOT NULL,-- attribute
	zCombinedUncertainty text NOT NULL,-- attribute
	zMeanError text NOT NULL,-- attribute
	__TargetPoint integer[]  -- index into table TargetPointActual 
) ;

CREATE TABLE TargetPointsNominal (
	_index_  SERIAL PRIMARY KEY,
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
	__TargetPoint integer[]  -- index into table TargetPointNominal 
) ;

CREATE TABLE TemperatureCharacteristicActualBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text  
) ;

CREATE TABLE TemperatureCharacteristicDefinitionBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	_Tolerance integer, -- index into table TemperatureTolerance 
	NonTolerance text  -- element of text 
) ;

CREATE TABLE TemperatureCharacteristicItemBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE TemperatureCharacteristicNominalBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	TargetValue text  
) ;

CREATE TABLE TemperatureTolerance (
	_index_  SERIAL PRIMARY KEY,
	MaxValue text, 
	MinValue text, 
	DefinedAsLimit BOOLEAN  -- element of BOOLEAN 
) ;

CREATE TABLE Temperature (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	Temperature text, 
	TimeStamp TIMESTAMP  -- element of TIMESTAMP 
) ;

CREATE TABLE TemperatureUnit (
	_index_  SERIAL PRIMARY KEY,
	SIUnitName text, -- element of text 
	UnitName text, -- element of text 
	_UnitConversion integer  -- index into table UnitConversion 
) ;

CREATE TABLE Temperatures (
	_index_  SERIAL PRIMARY KEY,
	__Temperature integer[]  -- index into table Temperature 
) ;

CREATE TABLE TextInstruction (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	TextInstruction text  -- element of text 
) ;

CREATE TABLE TextThreadSpecification (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	TextSpecification text  -- element of text 
) ;

CREATE TABLE Text (
	_index_  SERIAL PRIMARY KEY,
	Data text, -- element of text 
	XY DOUBLE PRECISION[2]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE Texts (
	_index_  SERIAL PRIMARY KEY,
	fontIndex text,-- attribute
	lineHeight text NOT NULL,-- attribute
	N text,-- attribute
	__Text integer[]  -- index into table Text 
) ;

CREATE TABLE ThenPoints (
	_index_  SERIAL PRIMARY KEY,
	NumberOfPoints DECIMAL(10,2), -- element of DECIMAL(10,2) 
	MinPoints DECIMAL(10,2), -- element of DECIMAL(10,2) 
	PointDensity DECIMAL(10,2), -- element of DECIMAL(10,2) 
	MinPointDensity DECIMAL(10,2)  -- element of DECIMAL(10,2) 
) ;

CREATE TABLE ThicknessCharacteristicActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text  
) ;

CREATE TABLE ThicknessCharacteristicDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	Dimension text, -- element of text 
	_Tolerance integer, -- index into table LinearTolerance 
	NonTolerance text  -- element of text 
) ;

CREATE TABLE ThicknessCharacteristicItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE ThicknessCharacteristicNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	TargetValue text  
) ;

CREATE TABLE ThicknessCharacteristicStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_ValueStats integer, -- index into table StatsWithTolLinear 
	_MaxValueStats integer, -- index into table StatsLinear 
	_MinValueStats integer, -- index into table StatsLinear 
	_DeviationStats integer, -- index into table StatsWithTolLinear 
	_MaxDeviationStats integer, -- index into table StatsLinear 
	_MinDeviationStats integer  -- index into table StatsLinear 
) ;

CREATE TABLE ThreadCharacteristicActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	PitchDiameter text, 
	FunctionalSize text  
) ;

CREATE TABLE ThreadCharacteristicDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	ThreadSpecificationId text  
) ;

CREATE TABLE ThreadCharacteristicItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE ThreadCharacteristicNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer  -- index into table KeyCharacteristic 
) ;

CREATE TABLE ThreadCharacteristicStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_ThreadStats integer, -- index into table StatsPassFail 
	_PitchDiameterStats integer, -- index into table StatsLinear 
	_FunctionalSizeStats integer  -- index into table StatsLinear 
) ;

CREATE TABLE ThreadClass (
	_index_  SERIAL PRIMARY KEY,
	ThreadClassEnum text, -- element of text 
	OtherThreadClass text  -- element of text 
) ;

CREATE TABLE ThreadSeries (
	_index_  SERIAL PRIMARY KEY,
	ThreadSeriesEnum text, -- element of text 
	OtherThreadSeries text  -- element of text 
) ;

CREATE TABLE ThreadSpecificationDetailedBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	Diameter text, 
	_ThreadSeries integer, -- index into table ThreadSeries 
	_ThreadToleranceClass integer, -- index into table ThreadClass 
	_CrestDiameterToleranceClass integer, -- index into table ThreadClass 
	LeftHanded BOOLEAN, -- element of BOOLEAN 
	ModifiedThread BOOLEAN, -- element of BOOLEAN 
	ThreadLengthEngagement text  
) ;

CREATE TABLE ThreadSpecification (
	_index_  SERIAL PRIMARY KEY,
	_SingleLeadSpecification integer, -- index into table SingleLeadThreadSpecification 
	_MultiLeadSpecification integer, -- index into table MultiLeadThreadSpecification 
	_TextThreadSpecification integer  -- index into table TextThreadSpecification 
) ;

CREATE TABLE ThreadSpecifications (
	_index_  SERIAL PRIMARY KEY,
	__ThreadSpecification integer[]  -- index into table ThreadSpecification 
) ;

CREATE TABLE ThreadedFeatureActualDetermination (
	_index_  SERIAL PRIMARY KEY,
	_Checked integer, -- index into table ThreadedFeatureCheckedFeature 
	_Set integer  -- index into table SetFeature 
) ;

CREATE TABLE ThreadedFeatureActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	_PointList integer, -- index into table PointListActual 
	FeatureItemId text, 
	ActualComponentId text, 
	ManufacturingProcessId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	_Axis integer, -- index into table ActualAxis 
	PitchDiameter text, 
	FunctionalSize text, 
	Length text  
) ;

CREATE TABLE ThreadedFeatureBestFit (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	__BaseFeature integer[]  -- index into table SequencedBaseFeature 
) ;

CREATE TABLE ThreadedFeatureCast (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseFeature integer  -- index into table BaseFeature 
) ;

CREATE TABLE ThreadedFeatureCheckedFeature (
	_index_  SERIAL PRIMARY KEY,
	_CheckDetails integer  -- index into table ThreadedFeatureChecked 
) ;

CREATE TABLE ThreadedFeatureChecked (
	_index_  SERIAL PRIMARY KEY,
	_Measured integer, -- index into table MeasuredFeature 
	_Constructed integer  -- index into table ThreadedFeatureConstructionMethod 
) ;

CREATE TABLE ThreadedFeatureConstructionMethod (
	_index_  SERIAL PRIMARY KEY,
	_BestFit integer, -- index into table ThreadedFeatureBestFit 
	_Recompensated integer, -- index into table ThreadedFeatureRecomp 
	_Copy integer, -- index into table ThreadedFeatureCopy 
	_Cast integer, -- index into table ThreadedFeatureCast 
	_Transform integer, -- index into table ThreadedFeatureTransform 
	_FromCylinder integer  -- index into table ThreadedFeatureFromCylinder 
) ;

CREATE TABLE ThreadedFeatureCopy (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseThreadedFeature integer  -- index into table BaseFeature 
) ;

CREATE TABLE ThreadedFeatureDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	InternalExternal text, -- element of text 
	ThreadSpecificationId text, 
	Length text, 
	_Bottom integer  -- index into table Bottom 
) ;

CREATE TABLE ThreadedFeatureFromCylinder (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseCylinder integer, -- index into table BaseFeature 
	Offset_ text  
) ;

CREATE TABLE ThreadedFeatureItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	FeatureNominalId text, 
	ParentFeatureItemId text, 
	FeatureName text, -- element of text 
	QPId text, -- element of text 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	CoordinateSystemId text, 
	_DeterminationMode integer, -- index into table ThreadedFeatureActualDetermination 
	_SubstituteFeatureAlgorithm integer  -- index into table FeatureOfSizeSubstituteFeatureAlgorithm 
) ;

CREATE TABLE ThreadedFeatureNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Name text, -- element of text 
	_PointList integer, -- index into table PointListNominal 
	FeatureDefinitionId text, -- element of text 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	_Axis integer  -- index into table Axis 
) ;

CREATE TABLE ThreadedFeatureRecomp (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseFeaturePointList integer  -- index into table BaseFeaturePointList 
) ;

CREATE TABLE ThreadedFeatureTransform (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseThreadedFeature integer, -- index into table BaseFeature 
	_Transformation integer  -- index into table TransformationReference 
) ;

CREATE TABLE TimeCharacteristicActualBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text  
) ;

CREATE TABLE TimeCharacteristicDefinitionBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	_Tolerance integer, -- index into table TimeTolerance 
	NonTolerance text  -- element of text 
) ;

CREATE TABLE TimeCharacteristicItemBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE TimeCharacteristicNominalBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	TargetValue text  
) ;

CREATE TABLE TimeDescription (
	_index_  SERIAL PRIMARY KEY,
	TimeDescriptionEnum text, -- element of text 
	OtherTimeDescription text  -- element of text 
) ;

CREATE TABLE TimeTolerance (
	_index_  SERIAL PRIMARY KEY,
	MaxValue text, 
	MinValue text, 
	DefinedAsLimit BOOLEAN  -- element of BOOLEAN 
) ;

CREATE TABLE TimeUnit (
	_index_  SERIAL PRIMARY KEY,
	SIUnitName text, -- element of text 
	UnitName text, -- element of text 
	_UnitConversion integer  -- index into table UnitConversion 
) ;

CREATE TABLE Times (
	_index_  SERIAL PRIMARY KEY,
	__ArithmeticCharacteristicParameter integer[], -- index into table ArithmeticCharacteristicParameter 
	__ArithmeticConstant integer[], -- index into table ArithmeticConstant 
	__ArithmeticExpression integer[], -- index into table ArithmeticExpressionBase 
	__ArithmeticFeatureParameter integer[], -- index into table ArithmeticFeatureParameter 
	__DividedBy integer[], -- index into table DividedBy 
	__FeatureArea integer[], -- index into table FeatureArea 
	__FeatureLength integer[], -- index into table FeatureLength 
	__Minus integer[], -- index into table Minus 
	__Negate integer[], -- index into table Negate 
	__Plus integer[], -- index into table Plus 
	__Times integer[]  -- index into table Times 
) ;

CREATE TABLE ToleranceDefinitions (
	_index_  SERIAL PRIMARY KEY,
	_LinearTolerance integer, -- index into table LinearToleranceDefinition 
	_AngularTolerance integer  -- index into table AngularToleranceDefinition 
) ;

CREATE TABLE ToleranceZonePerUnitAngle (
	_index_  SERIAL PRIMARY KEY,
	ToleranceValuePerUnit text, 
	UnitAngle text  
) ;

CREATE TABLE ToleranceZonePerUnitArea (
	_index_  SERIAL PRIMARY KEY,
	ToleranceValuePerUnit text, 
	_RectangularUnitArea integer, -- index into table RectangularUnitArea 
	_CircularUnitArea integer  -- index into table CircularUnitArea 
) ;

CREATE TABLE ToleranceZonePerUnitLength (
	_index_  SERIAL PRIMARY KEY,
	ToleranceValuePerUnit text, 
	UnitLength text  
) ;

CREATE TABLE ToleranceZonePerUnitPolarArea (
	_index_  SERIAL PRIMARY KEY,
	ToleranceValuePerUnit text, 
	UnitAngle text, 
	UnitLength text  
) ;

CREATE TABLE Tool (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	Name text, -- element of text 
	Description text, -- element of text 
	Manufacturer text, -- element of text 
	ModelNumber text, -- element of text 
	SerialNumber text, -- element of text 
	LocationId text, 
	_Location integer, -- index into table Location 
	_SensorIds integer  -- index into table ArrayReferenceFull 
) ;

CREATE TABLE Tools (
	_index_  SERIAL PRIMARY KEY,
	__Tool integer[]  -- index into table Tool 
) ;

CREATE TABLE TopologyBase (
	_index_  SERIAL PRIMARY KEY,
	color text NOT NULL,-- attribute
	transparency text NOT NULL,-- attribute
	hidden text NOT NULL,-- attribute
	size text NOT NULL,-- attribute
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer  -- index into table Attributes 
) ;

CREATE TABLE TopologySet (
	_index_  SERIAL PRIMARY KEY,
	_VertexSet integer, -- index into table VertexSet 
	_EdgeSet integer, -- index into table EdgeSet 
	_LoopSet integer, -- index into table LoopSet 
	_FaceSet integer, -- index into table FaceSet 
	_ShellSet integer, -- index into table ShellSet 
	_BodySet integer, -- index into table BodySet 
	_PointCloudSet integer  -- index into table PointCloudSet 
) ;

CREATE TABLE ToroidalSegmentActualDetermination (
	_index_  SERIAL PRIMARY KEY,
	_Checked integer, -- index into table ToroidalSegmentCheckedFeature 
	_Set integer  -- index into table SetFeature 
) ;

CREATE TABLE ToroidalSegmentBestFit (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	__BaseFeature integer[]  -- index into table SequencedBaseFeature 
) ;

CREATE TABLE ToroidalSegmentCast (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseFeature integer  -- index into table BaseFeature 
) ;

CREATE TABLE ToroidalSegmentCheckedFeature (
	_index_  SERIAL PRIMARY KEY,
	_CheckDetails integer  -- index into table ToroidalSegmentChecked 
) ;

CREATE TABLE ToroidalSegmentChecked (
	_index_  SERIAL PRIMARY KEY,
	_Measured integer, -- index into table MeasuredFeature 
	_Constructed integer  -- index into table ToroidalSegmentConstructionMethod 
) ;

CREATE TABLE ToroidalSegmentConstructionMethod (
	_index_  SERIAL PRIMARY KEY,
	_BestFit integer, -- index into table ToroidalSegmentBestFit 
	_Recompensated integer, -- index into table ToroidalSegmentRecomp 
	_Copy integer, -- index into table ToroidalSegmentCopy 
	_Cast integer, -- index into table ToroidalSegmentCast 
	_Transform integer  -- index into table ToroidalSegmentTransform 
) ;

CREATE TABLE ToroidalSegmentCopy (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseToroidalSegment integer  -- index into table BaseFeature 
) ;

CREATE TABLE ToroidalSegmentFeatureActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	_PointList integer, -- index into table PointListActual 
	FeatureItemId text, 
	ActualComponentId text, 
	ManufacturingProcessId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	Location text, 
	AxisVector text, 
	MinorDiameter text, 
	MajorDiameter text, 
	_LatitudeLongitudeSweep integer, -- index into table LatitudeLongitudeSweep 
	Form text  
) ;

CREATE TABLE ToroidalSegmentFeatureDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	InternalExternal text, -- element of text 
	MinorDiameter text, 
	MajorDiameter text  
) ;

CREATE TABLE ToroidalSegmentFeatureItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	FeatureNominalId text, 
	ParentFeatureItemId text, 
	FeatureName text, -- element of text 
	QPId text, -- element of text 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	CoordinateSystemId text, 
	_DeterminationMode integer, -- index into table ToroidalSegmentActualDetermination 
	_SubstituteFeatureAlgorithm integer  -- index into table NonFeatureOfSizeSubstituteFeatureAlgorithm 
) ;

CREATE TABLE ToroidalSegmentFeatureNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Name text, -- element of text 
	_PointList integer, -- index into table PointListNominal 
	FeatureDefinitionId text, -- element of text 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Location DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	AxisVector DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	_LatitudeLongitudeSweep integer  -- index into table LatitudeLongitudeSweep 
) ;

CREATE TABLE ToroidalSegmentPointSamplingStrategy (
	_index_  SERIAL PRIMARY KEY,
	PointSamplingStrategyEnum text, -- element of text 
	UserDefinedStrategy text  -- element of text 
) ;

CREATE TABLE ToroidalSegmentRecomp (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseFeaturePointList integer  -- index into table BaseFeaturePointList 
) ;

CREATE TABLE ToroidalSegmentTransform (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseToroidalSegment integer, -- index into table BaseFeature 
	_Transformation integer  -- index into table TransformationReference 
) ;

CREATE TABLE Torus23Core (
	_index_  SERIAL PRIMARY KEY,
	turnedV text NOT NULL,-- attribute
	offsetV text NOT NULL,-- attribute
	scaleU text NOT NULL,-- attribute
	scaleV text NOT NULL,-- attribute
	form text NOT NULL,-- attribute
	DiameterMinor DOUBLE PRECISION, -- element of DOUBLE PRECISION 
	DiameterMajor DOUBLE PRECISION, -- element of DOUBLE PRECISION 
	_Axis integer, -- index into table Axis 
	_LatitudeLongitudeSweep integer  -- index into table LatitudeLongitudeSweep 
) ;

CREATE TABLE Torus23 (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	_Torus23Core integer, -- index into table Torus23Core 
	_Transform integer  -- index into table ElementReference 
) ;

CREATE TABLE TorusActualDetermination (
	_index_  SERIAL PRIMARY KEY,
	_Checked integer, -- index into table TorusCheckedFeature 
	_Set integer  -- index into table SetFeature 
) ;

CREATE TABLE TorusBestFit (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	__BaseFeature integer[]  -- index into table SequencedBaseFeature 
) ;

CREATE TABLE TorusCast (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseFeature integer  -- index into table BaseFeature 
) ;

CREATE TABLE TorusCheckedFeature (
	_index_  SERIAL PRIMARY KEY,
	_CheckDetails integer  -- index into table TorusChecked 
) ;

CREATE TABLE TorusChecked (
	_index_  SERIAL PRIMARY KEY,
	_Measured integer, -- index into table MeasuredFeature 
	_Constructed integer  -- index into table TorusConstructionMethod 
) ;

CREATE TABLE TorusConstructionMethod (
	_index_  SERIAL PRIMARY KEY,
	_BestFit integer, -- index into table TorusBestFit 
	_Recompensated integer, -- index into table TorusRecomp 
	_Copy integer, -- index into table TorusCopy 
	_Cast integer, -- index into table TorusCast 
	_Transform integer, -- index into table TorusTransform 
	_FromScan integer  -- index into table TorusFromScan 
) ;

CREATE TABLE TorusCopy (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseTorus integer  -- index into table BaseFeature 
) ;

CREATE TABLE TorusFeatureActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	_PointList integer, -- index into table PointListActual 
	FeatureItemId text, 
	ActualComponentId text, 
	ManufacturingProcessId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	Location text, 
	AxisVector text, 
	MinorDiameter text, 
	MajorDiameter text, 
	_LatitudeLongitudeSweep integer, -- index into table LatitudeLongitudeSweep 
	Form text  
) ;

CREATE TABLE TorusFeatureDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	InternalExternal text, -- element of text 
	MinorDiameter text, 
	MajorDiameter text  
) ;

CREATE TABLE TorusFeatureItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	FeatureNominalId text, 
	ParentFeatureItemId text, 
	FeatureName text, -- element of text 
	QPId text, -- element of text 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	CoordinateSystemId text, 
	_DeterminationMode integer, -- index into table TorusActualDetermination 
	_SubstituteFeatureAlgorithm integer  -- index into table FeatureOfSizeSubstituteFeatureAlgorithm 
) ;

CREATE TABLE TorusFeatureNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Name text, -- element of text 
	_PointList integer, -- index into table PointListNominal 
	FeatureDefinitionId text, -- element of text 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Location DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	AxisVector DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	_LatitudeLongitudeSweep integer  -- index into table LatitudeLongitudeSweep 
) ;

CREATE TABLE TorusFromScan (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_SurfaceFeature integer, -- index into table BaseFeature 
	SearchRadius text  
) ;

CREATE TABLE TorusPointSamplingStrategy (
	_index_  SERIAL PRIMARY KEY,
	PointSamplingStrategyEnum text, -- element of text 
	UserDefinedStrategy text  -- element of text 
) ;

CREATE TABLE TorusRecomp (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseFeaturePointList integer  -- index into table BaseFeaturePointList 
) ;

CREATE TABLE TorusTransform (
	_index_  SERIAL PRIMARY KEY,
	NominalsCalculated BOOLEAN, -- element of BOOLEAN 
	_BaseTorus integer, -- index into table BaseFeature 
	_Transformation integer  -- index into table TransformationReference 
) ;

CREATE TABLE TotalRunoutCharacteristicActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text, 
	DatumsOk BOOLEAN  -- element of BOOLEAN 
) ;

CREATE TABLE TotalRunoutCharacteristicDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	_DirectionFeature integer, -- index into table DirectionFeature 
	_CollectionPlane integer, -- index into table CollectionPlane 
	_IntersectionPlane integer, -- index into table IntersectionPlane 
	_OrientationPlane integer, -- index into table OrientationPlane 
	ToleranceValue text, 
	DatumReferenceFrameId text  
) ;

CREATE TABLE TotalRunoutCharacteristicItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE TotalRunoutCharacteristicNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_ZoneLimit integer  -- index into table CharacteristicDirectionalZoneLimit 
) ;

CREATE TABLE TotalRunoutCharacteristicStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_ValueStats integer, -- index into table StatsWithTolLinear 
	_MaxValueStats integer, -- index into table StatsLinear 
	_MinValueStats integer, -- index into table StatsLinear 
	CapabilityCalculationMethod text, -- element of text 
	_DatumsOkStats integer  -- index into table StatsPassFail 
) ;

CREATE TABLE TouchProbe (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	Name text, -- element of text 
	Description text, -- element of text 
	Manufacturer text, -- element of text 
	ModelNumber text, -- element of text 
	SerialNumber text, -- element of text 
	LocationId text, 
	_Location integer, -- index into table Location 
	_Qualifications integer, -- index into table Qualifications 
	AAngle text, 
	BAngle text, 
	TipDiameter text  
) ;

CREATE TABLE TransformInstance (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
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
	_Rotation integer, -- index into table TransformRotation 
	Origin DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	_Attributes integer, -- index into table Attributes 
	Name text  -- element of text 
) ;

CREATE TABLE TransformList (
	_index_  SERIAL PRIMARY KEY,
	N text,-- attribute
	__Transform integer[]  -- index into table TransformInstance 
) ;

CREATE TABLE TransformMatrix (
	_index_  SERIAL PRIMARY KEY,
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
	_Rotation integer, -- index into table TransformRotation 
	Origin DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE TransformRotation (
	_index_  SERIAL PRIMARY KEY,
	XDirection DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	YDirection DOUBLE PRECISION[3], -- list of DOUBLE PRECISION 
	ZDirection DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
) ;

CREATE TABLE TransformationReference (
	_index_  SERIAL PRIMARY KEY,
	ReferencedComponent text, -- element of text 
	CoordinateSystemId text, 
	SequenceNumber DECIMAL(10,2)  -- element of DECIMAL(10,2) 
) ;

CREATE TABLE OfCoordinatesType (
	_index_  SERIAL PRIMARY KEY,
	CoordinateEnum text, -- element of text 
	OtherCoordinate text  -- element of text 
) ;

CREATE TABLE UniformScale (
	_index_  SERIAL PRIMARY KEY,
	ScaleFactor DECIMAL(10,2)  -- element of DECIMAL(10,2) 
) ;

CREATE TABLE UnitConversion (
	_index_  SERIAL PRIMARY KEY,
	Factor DECIMAL(10,2), -- element of DECIMAL(10,2) 
	Offset_ DECIMAL(10,2)  -- element of DECIMAL(10,2) 
) ;

CREATE TABLE UnnumberedPlanElements (
	_index_  SERIAL PRIMARY KEY,
	__EvaluateSpecifiedCharacteristics integer[], -- index into table EvaluateSpecifiedCharacteristicsAction 
	__MeasureEvaluateAll integer[], -- index into table MeasureEvaluateAllAction 
	__MeasureEvaluateSpecified integer[], -- index into table MeasureEvaluateSpecifiedAction 
	__MeasureSpecifiedFeatures integer[], -- index into table MeasureSpecifiedFeaturesAction 
	__MeasureSpecifiedMeasurands integer[], -- index into table MeasureSpecifiedMeasurandsAction 
	__OneOfActionGroup integer[], -- index into table OneOfActionGroup 
	__OrderedActionGroup integer[], -- index into table OrderedActionGroup 
	__PartiallyOrderedActionGroup integer[], -- index into table PartiallyOrderedActionGroup 
	__PickSomeActionGroup integer[], -- index into table PickSomeActionGroup 
	__PlanElement integer[], -- index into table PlanElementBase 
	__UnorderedActionGroup integer[]  -- index into table UnorderedActionGroup 
) ;

CREATE TABLE UnorderedActionGroup (
	_index_  SERIAL PRIMARY KEY,
	_WorkInstructionIds integer, -- index into table ArrayReferenceFull 
	_MeasureActionGroupFunction integer, -- index into table MeasureActionGroupFunction 
	_Steps integer  -- index into table UnnumberedPlanElements 
) ;

CREATE TABLE UserDataXML (
	_index_  SERIAL PRIMARY KEY 
) ;

CREATE TABLE UserDefinedAngularCharacteristicActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text  
) ;

CREATE TABLE UserDefinedAngularCharacteristicDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	Dimension text, -- element of text 
	_Tolerance integer, -- index into table AngularTolerance 
	NonTolerance text, -- element of text 
	WhatToMeasure text  -- element of text 
) ;

CREATE TABLE UserDefinedAngularCharacteristicItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE UserDefinedAngularCharacteristicNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	TargetValue text  
) ;

CREATE TABLE UserDefinedAngularCharacteristicStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_ValueStats integer, -- index into table StatsWithTolAngular 
	_MaxValueStats integer, -- index into table StatsAngular 
	_MinValueStats integer, -- index into table StatsAngular 
	_DeviationStats integer, -- index into table StatsWithTolAngular 
	_MaxDeviationStats integer, -- index into table StatsAngular 
	_MinDeviationStats integer  -- index into table StatsAngular 
) ;

CREATE TABLE UserDefinedAreaCharacteristicActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text  
) ;

CREATE TABLE UserDefinedAreaCharacteristicDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	_Tolerance integer, -- index into table AreaTolerance 
	NonTolerance text, -- element of text 
	WhatToMeasure text  -- element of text 
) ;

CREATE TABLE UserDefinedAreaCharacteristicItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE UserDefinedAreaCharacteristicNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	TargetValue text  
) ;

CREATE TABLE UserDefinedAreaCharacteristicStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_ValueStats integer, -- index into table StatsWithTolArea 
	_MaxValueStats integer, -- index into table StatsArea 
	_MinValueStats integer, -- index into table StatsArea 
	_DeviationStats integer, -- index into table StatsWithTolArea 
	_MaxDeviationStats integer, -- index into table StatsArea 
	_MinDeviationStats integer  -- index into table StatsArea 
) ;

CREATE TABLE UserDefinedAttributeCharacteristicActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text  -- element of text 
) ;

CREATE TABLE UserDefinedAttributeCharacteristicDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN  -- element of BOOLEAN 
) ;

CREATE TABLE UserDefinedAttributeCharacteristicItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE UserDefinedAttributeCharacteristicNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_PassValues integer, -- index into table StringValues 
	_FailValues integer  -- index into table StringValues 
) ;

CREATE TABLE UserDefinedAttributeCharacteristicStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_AttributeStats integer  -- index into table StatsPassFail 
) ;

CREATE TABLE UserDefinedForceCharacteristicActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text  
) ;

CREATE TABLE UserDefinedForceCharacteristicDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	_Tolerance integer, -- index into table ForceTolerance 
	NonTolerance text, -- element of text 
	WhatToMeasure text  -- element of text 
) ;

CREATE TABLE UserDefinedForceCharacteristicItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE UserDefinedForceCharacteristicNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	TargetValue text  
) ;

CREATE TABLE UserDefinedForceCharacteristicStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_ValueStats integer, -- index into table StatsWithTolForce 
	_MaxValueStats integer, -- index into table StatsForce 
	_MinValueStats integer, -- index into table StatsForce 
	_DeviationStats integer, -- index into table StatsWithTolForce 
	_MaxDeviationStats integer, -- index into table StatsForce 
	_MinDeviationStats integer  -- index into table StatsForce 
) ;

CREATE TABLE UserDefinedLinearCharacteristicActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text  
) ;

CREATE TABLE UserDefinedLinearCharacteristicDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	Dimension text, -- element of text 
	_Tolerance integer, -- index into table LinearTolerance 
	NonTolerance text, -- element of text 
	WhatToMeasure text  -- element of text 
) ;

CREATE TABLE UserDefinedLinearCharacteristicItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE UserDefinedLinearCharacteristicNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	TargetValue text  
) ;

CREATE TABLE UserDefinedLinearCharacteristicStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_ValueStats integer, -- index into table StatsWithTolLinear 
	_MaxValueStats integer, -- index into table StatsLinear 
	_MinValueStats integer, -- index into table StatsLinear 
	_DeviationStats integer, -- index into table StatsWithTolLinear 
	_MaxDeviationStats integer, -- index into table StatsLinear 
	_MinDeviationStats integer  -- index into table StatsLinear 
) ;

CREATE TABLE UserDefinedMassCharacteristicActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text  
) ;

CREATE TABLE UserDefinedMassCharacteristicDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	_Tolerance integer, -- index into table MassTolerance 
	NonTolerance text, -- element of text 
	WhatToMeasure text  -- element of text 
) ;

CREATE TABLE UserDefinedMassCharacteristicItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE UserDefinedMassCharacteristicNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	TargetValue text  
) ;

CREATE TABLE UserDefinedMassCharacteristicStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_ValueStats integer, -- index into table StatsWithTolMass 
	_MaxValueStats integer, -- index into table StatsMass 
	_MinValueStats integer, -- index into table StatsMass 
	_DeviationStats integer, -- index into table StatsWithTolMass 
	_MaxDeviationStats integer, -- index into table StatsMass 
	_MinDeviationStats integer  -- index into table StatsMass 
) ;

CREATE TABLE UserDefinedPressureCharacteristicActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text  
) ;

CREATE TABLE UserDefinedPressureCharacteristicDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	_Tolerance integer, -- index into table PressureTolerance 
	NonTolerance text, -- element of text 
	WhatToMeasure text  -- element of text 
) ;

CREATE TABLE UserDefinedPressureCharacteristicItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE UserDefinedPressureCharacteristicNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	TargetValue text  
) ;

CREATE TABLE UserDefinedPressureCharacteristicStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_ValueStats integer, -- index into table StatsWithTolPressure 
	_MaxValueStats integer, -- index into table StatsPressure 
	_MinValueStats integer, -- index into table StatsPressure 
	_DeviationStats integer, -- index into table StatsWithTolPressure 
	_MaxDeviationStats integer, -- index into table StatsPressure 
	_MinDeviationStats integer  -- index into table StatsPressure 
) ;

CREATE TABLE UserDefinedSpeedCharacteristicActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text  
) ;

CREATE TABLE UserDefinedSpeedCharacteristicDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	_Tolerance integer, -- index into table SpeedTolerance 
	NonTolerance text, -- element of text 
	WhatToMeasure text  -- element of text 
) ;

CREATE TABLE UserDefinedSpeedCharacteristicItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE UserDefinedSpeedCharacteristicNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	TargetValue text  
) ;

CREATE TABLE UserDefinedSpeedCharacteristicStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_ValueStats integer, -- index into table StatsWithTolSpeed 
	_MaxValueStats integer, -- index into table StatsSpeed 
	_MinValueStats integer, -- index into table StatsSpeed 
	_DeviationStats integer, -- index into table StatsWithTolSpeed 
	_MaxDeviationStats integer, -- index into table StatsSpeed 
	_MinDeviationStats integer  -- index into table StatsSpeed 
) ;

CREATE TABLE UserDefinedTemperatureCharacteristicActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text  
) ;

CREATE TABLE UserDefinedTemperatureCharacteristicDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	_Tolerance integer, -- index into table TemperatureTolerance 
	NonTolerance text, -- element of text 
	WhatToMeasure text  -- element of text 
) ;

CREATE TABLE UserDefinedTemperatureCharacteristicItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE UserDefinedTemperatureCharacteristicNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	TargetValue text  
) ;

CREATE TABLE UserDefinedTemperatureCharacteristicStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_ValueStats integer, -- index into table StatsWithTolTemperature 
	_MaxValueStats integer, -- index into table StatsTemperature 
	_MinValueStats integer, -- index into table StatsTemperature 
	_DeviationStats integer, -- index into table StatsWithTolTemperature 
	_MaxDeviationStats integer, -- index into table StatsTemperature 
	_MinDeviationStats integer  -- index into table StatsTemperature 
) ;

CREATE TABLE UserDefinedTimeCharacteristicActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text  
) ;

CREATE TABLE UserDefinedTimeCharacteristicDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	_Tolerance integer, -- index into table TimeTolerance 
	NonTolerance text, -- element of text 
	WhatToMeasure text  -- element of text 
) ;

CREATE TABLE UserDefinedTimeCharacteristicItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE UserDefinedTimeCharacteristicNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	TargetValue text  
) ;

CREATE TABLE UserDefinedTimeCharacteristicStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_ValueStats integer, -- index into table StatsWithTolTime 
	_MaxValueStats integer, -- index into table StatsTime 
	_MinValueStats integer, -- index into table StatsTime 
	_DeviationStats integer, -- index into table StatsWithTolTime 
	_MaxDeviationStats integer, -- index into table StatsTime 
	_MinDeviationStats integer  -- index into table StatsTime 
) ;

CREATE TABLE UserDefinedUnitCharacteristicActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text  
) ;

CREATE TABLE UserDefinedUnitCharacteristicDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN  -- element of BOOLEAN 
) ;

CREATE TABLE UserDefinedUnitCharacteristicItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE UserDefinedUnitCharacteristicNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	TargetValue text, 
	MaxValue text, 
	MinValue text, 
	DefinedAsLimit BOOLEAN  -- element of BOOLEAN 
) ;

CREATE TABLE UserDefinedUnitCharacteristicStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_ValueStats integer, -- index into table StatsWithTolUserDefinedUnit 
	_MaxValueStats integer, -- index into table StatsUserDefinedUnit 
	_MinValueStats integer, -- index into table StatsUserDefinedUnit 
	_DeviationStats integer, -- index into table StatsWithTolUserDefinedUnit 
	_MaxDeviationStats integer, -- index into table StatsUserDefinedUnit 
	_MinDeviationStats integer  -- index into table StatsUserDefinedUnit 
) ;

CREATE TABLE UserDefinedUnit (
	_index_  SERIAL PRIMARY KEY,
	WhatIsMeasured text, -- element of text 
	UnitName text, -- element of text 
	StandardName text  -- element of text 
) ;

CREATE TABLE UserDefinedUnits (
	_index_  SERIAL PRIMARY KEY,
	__UserDefinedUnit integer[]  -- index into table UserDefinedUnit 
) ;

CREATE TABLE VersionBase (
	_index_  SERIAL PRIMARY KEY,
	TimeCreated TIMESTAMP, -- element of TIMESTAMP 
	_SignOffs integer  -- index into table SignOffs 
) ;

CREATE TABLE VersionHistory (
	_index_  SERIAL PRIMARY KEY,
	__EarlierVersion integer[]  -- index into table VersionReference 
) ;

CREATE TABLE VersionReference (
	_index_  SERIAL PRIMARY KEY,
	TimeCreated TIMESTAMP, -- element of TIMESTAMP 
	_SignOffs integer, -- index into table SignOffs 
	QPIdReference text  -- element of text 
) ;

CREATE TABLE Version (
	_index_  SERIAL PRIMARY KEY,
	TimeCreated TIMESTAMP, -- element of TIMESTAMP 
	_SignOffs integer, -- index into table SignOffs 
	ThisInstanceQPId text  -- element of text 
) ;

CREATE TABLE VertexSet (
	_index_  SERIAL PRIMARY KEY,
	N text,-- attribute
	__Vertex integer[]  -- index into table Vertex 
) ;

CREATE TABLE Vertex (
	_index_  SERIAL PRIMARY KEY,
	tolerance text NOT NULL,-- attribute
	color text NOT NULL,-- attribute
	transparency text NOT NULL,-- attribute
	hidden text NOT NULL,-- attribute
	size text NOT NULL,-- attribute
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer, -- index into table Attributes 
	_Point integer  -- index into table ElementReference 
) ;

CREATE TABLE VideoInstruction (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_ExternalFile integer  -- index into table ExternalFileReference 
) ;

CREATE TABLE ViewBase (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	label text NOT NULL,-- attribute
	_Attributes integer  -- index into table Attributes 
) ;

CREATE TABLE ViewSet (
	_index_  SERIAL PRIMARY KEY,
	N text,-- attribute
	__Camera integer[], -- index into table Camera 
	__SavedView integer[], -- index into table SavedView 
	__ViewBase integer[]  -- index into table ViewBase 
) ;

CREATE TABLE VisualizationSet (
	_index_  SERIAL PRIMARY KEY,
	_Fonts integer, -- index into table Fonts 
	_PMIDisplaySet integer  -- index into table PMIDisplaySet 
) ;

CREATE TABLE WidthCharacteristicActual (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	_Status integer, -- index into table CharacteristicStatus 
	CharacteristicItemId text, 
	_FeatureActualIds integer, -- index into table ArrayReferenceFull 
	ActualComponentId text, 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	ManufacturingProcessId text, 
	_NotedEventIds integer, -- index into table ArrayReferenceFull 
	NonConformanceDesignator text, -- element of text 
	Value text, 
	MaxValue text, 
	MinValue text  
) ;

CREATE TABLE WidthCharacteristicDefinition (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	FreeState BOOLEAN, -- element of BOOLEAN 
	StatisticalCharacteristic BOOLEAN, -- element of BOOLEAN 
	CommonZone BOOLEAN, -- element of BOOLEAN 
	MedianFeature BOOLEAN, -- element of BOOLEAN 
	EnvelopeRequirement BOOLEAN, -- element of BOOLEAN 
	UnitedFeature BOOLEAN, -- element of BOOLEAN 
	SeparateZone BOOLEAN, -- element of BOOLEAN 
	Dimension text, -- element of text 
	_Tolerance integer, -- index into table LinearTolerance 
	NonTolerance text  -- element of text 
) ;

CREATE TABLE WidthCharacteristicItem (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	Name text, -- element of text 
	QPId text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	_FeatureItemIds integer, -- index into table ArrayReferenceFull 
	_NotableEventIds integer, -- index into table ArrayReferenceFull 
	_MeasurementDeviceIds integer, -- index into table ArrayReferenceFull 
	CharacteristicNominalId text, 
	_LocationOnDrawing integer  -- index into table LocationOnDrawing 
) ;

CREATE TABLE WidthCharacteristicNominal (
	_index_  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table Attributes 
	Description text, -- element of text 
	CharacteristicDefinitionId text, -- element of text 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFull 
	_EntityInternalIds integer, -- index into table ArrayReferenceFull 
	_EntityExternalIds integer, -- index into table ArrayReferenceFull 
	Name text, -- element of text 
	_KeyCharacteristic integer, -- index into table KeyCharacteristic 
	TargetValue text  
) ;

CREATE TABLE WidthCharacteristicStatsEval (
	_index_  SERIAL PRIMARY KEY,
	_Attributes integer, -- index into table Attributes 
	_ActualIds integer, -- index into table StatsArrayId 
	__Subgroup integer[], -- index into table ActualSubgroup 
	_Status integer, -- index into table StatsEvalStatus 
	_StudyIssue integer, -- index into table StudyIssue 
	_DistributionTransformation integer, -- index into table DistributionTransformation 
	_ValueStats integer, -- index into table StatsWithTolLinear 
	_MaxValueStats integer, -- index into table StatsLinear 
	_MinValueStats integer, -- index into table StatsLinear 
	_DeviationStats integer, -- index into table StatsWithTolLinear 
	_MaxDeviationStats integer, -- index into table StatsLinear 
	_MinDeviationStats integer  -- index into table StatsLinear 
) ;

CREATE TABLE WitnessLines (
	_index_  SERIAL PRIMARY KEY,
	width text,-- attribute
	_Segment1 integer, -- index into table LineSegment2d 
	_Segment2 integer  -- index into table LineSegment2d 
) ;

CREATE TABLE WorkInstructionBase (
	_index_  SERIAL PRIMARY KEY,
	id text -- attribute
) ;

CREATE TABLE WorkInstructions (
	_index_  SERIAL PRIMARY KEY,
	__DocumentFileInstruction integer[], -- index into table DocumentFileInstruction 
	__ImageInstruction integer[], -- index into table ImageInstruction 
	__TextInstruction integer[], -- index into table string 
	__VideoInstruction integer[], -- index into table VideoInstruction 
	__WorkInstruction integer[]  -- index into table WorkInstructionBase 
) ;

CREATE TABLE WorkingVolume (
	_index_  SERIAL PRIMARY KEY,
	XAxisLength text, 
	YAxisLength text, 
	ZAxisLength text  
) ;

CREATE TABLE XYZResolution (
	_index_  SERIAL PRIMARY KEY,
	XResolution text, 
	YResolution text, 
	ZResolution text  
) ;

CREATE TABLE ZoneData (
	_index_  SERIAL PRIMARY KEY,
	FeatureItemId text, 
	Bonus text, 
	ReferenceLength text  
) ;

CREATE TABLE ZoneRadii (
	_index_  SERIAL PRIMARY KEY,
	MinRadius text, 
	MaxRadius text  
) ;


