https://wiki.postgresql.org/wiki/XML_Support

You need to specify how to capture func into the lambda.
[] don't capture anything
[&] capture-by-reference
[=] capture-by-value (copy)

Todo:
read all the table indices - either once or live as creating insertion statements

XML Schema provides a mechanism, called substitution groups, that allows elements to be substituted for other elements. More specifically, elements can be assigned to a special group of elements that are said to be substitutable for a particular named element called the head element. 
******(Note that the head element as well as the substitutable elementsmust be declared as global elements.)  *************

XML Schema provides a mechanism to force substitution for a particular element or type.
 When an element or type is declared to be "abstract", it cannot be used in an instance document. 
 When an element is declared to be abstract, a member of that element's substitution group must appear in the instance document. 
 When an element's corresponding type definition is declared as abstract, all instances of that element must use xsi:type to indicate a derived type that is not abstract.

 
CREATE.BAT
"C:\Program Files\PostgreSQL\9.4\bin\psql.exe" -dQIF -Upostgres -f"C:\Users\michalos\Documents\GitHub\QIF\src\MSVCQIF\MSVCQIF\Win32\Debug\QifSql.sql" 2> CreateErrors.log
pause


INSERT.BAT
cd /d %~dp0
"C:\Program Files\PostgreSQL\9.4\bin\psql.exe" -dQIF -Upostgres -f"C:\Users\michalos\Documents\GitHub\QIF\src\MSVCQIF\MSVCQIF\Win32\Debug\insert.sql" 2> Insert.log
pause



http://xerces.apache.org/xerces-c/apiDocs-3/classXSElementDeclaration.html
http://www.w3.org/TR/xmlschema11-1/
http://www.w3.org/TR/xmlschema-0/

CREATE DATABASE "QIF"
  WITH OWNER = postgres
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'English_United States.1252'
       LC_CTYPE = 'English_United States.1252'
       CONNECTION LIMIT = -1;



======================================================================
Wed 05/13/2015_16:53:32.64  

The simpleContent element contains extensions or restrictions on a text-only complex type or on a simple type as content and contains no elements.
LISTS


 ======================================================================
 Wed 05/13/2015_16:06:35.24  

DROP TABLE IF EXISTS CharacteristicActuals;
CREATE TABLE CharacteristicActuals (
	index  SERIAL PRIMARY KEY 
) ;
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
  ======================================================================
  Wed 05/13/2015_16:06:35.24  
<xs:complexType name="ActualUnitVectorType">
    <xs:simpleContent>
      <xs:extension base="UnitVectorType">
        <xs:attributeGroup ref="AttrActualPoint"/>
      </xs:extension>
    </xs:simpleContent>
  </xs:complexType>
  <xs:attributeGroup name="AttrActualPoint">
    <xs:attribute name="combinedUncertainty" type="xs:decimal"/>
    <xs:attribute name="meanError" type="xs:decimal"/>
    <xs:attribute name="xCombinedUncertainty" type="xs:decimal"/>
    <xs:attribute name="xMeanError" type="xs:decimal"/>
    <xs:attribute name="yCombinedUncertainty" type="xs:decimal"/>
    <xs:attribute name="yMeanError" type="xs:decimal"/>
    <xs:attribute name="zCombinedUncertainty" type="xs:decimal"/>
    <xs:attribute name="zMeanError" type="xs:decimal"/>
  </xs:attributeGroup>
   <xs:attributeGroup name="AttrPoint">
    <xs:attribute name="linearUnit" type="xs:token"/>
    <xs:attribute name="decimalPlaces" type="xs:nonNegativeInteger"/>
    <xs:attribute name="significantFigures" type="xs:nonNegativeInteger"/>
    <xs:attribute name="validity" type="ValidityEnumType"/>
    <xs:attribute name="xDecimalPlaces" type="xs:nonNegativeInteger"/>
    <xs:attribute name="xSignificantFigures" type="xs:nonNegativeInteger"/>
    <xs:attribute name="xValidity" type="ValidityEnumType"/>
    <xs:attribute name="yDecimalPlaces" type="xs:nonNegativeInteger"/>
    <xs:attribute name="ySignificantFigures" type="xs:nonNegativeInteger"/>
    <xs:attribute name="yValidity" type="ValidityEnumType"/>
    <xs:attribute name="zDecimalPlaces" type="xs:nonNegativeInteger"/>
    <xs:attribute name="zSignificantFigures" type="xs:nonNegativeInteger"/>
    <xs:attribute name="zValidity" type="ValidityEnumType"/>
  </xs:attributeGroup>
   <xs:complexType name="UnitVectorType">
    <xs:simpleContent>
      <xs:extension base="UnitVectorSimpleType">
        <xs:attributeGroup ref="AttrPoint"/>
      </xs:extension>
    </xs:simpleContent>
  </xs:complexType>
   <xs:simpleType name="UnitVectorSimpleType">
    <xs:restriction base="ListDoubleType">
      <xs:length value="3"/>
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="ListDoubleType">
    <xs:list itemType="xs:double"/>
  </xs:simpleType>
===========================================================================================
Tue 05/12/2015_16:44:02.65  

Problem: derived type adds in attributes, and these attributes appear in type definition too

DROP TABLE IF EXISTS ActualAngularValue;
CREATE TABLE ActualAngularValue (
	index  SERIAL PRIMARY KEY,
	angularUnit text NOT NULL,-- attribute
	combinedUncertainty text NOT NULL,-- attribute
	meanError text NOT NULL,-- attribute
	decimalPlaces text NOT NULL,-- attribute
	significantFigures text NOT NULL,-- attribute

	combinedUncertainty text NOT NULL,-- attribute
	meanError text NOT NULL,-- attribute
	decimalPlaces text NOT NULL,-- attribute
	significantFigures text NOT NULL,-- attribute

	decimalPlaces text NOT NULL,-- attribute
	significantFigures text NOT NULL -- attribute
) ;

<xs:complexType name="ActualAngularValueType">
    <xs:simpleContent>
      <xs:extension base="ActualDecimalType">
        <xs:attribute name="angularUnit"  type="xs:token"/>
       </xs:extension>
    </xs:simpleContent>
  </xs:complexType>
<xs:complexType name="ActualDecimalType">
    <xs:simpleContent>
      <xs:extension base="SpecifiedDecimalType">
        <xs:attribute name="combinedUncertainty" type="NonNegativeDecimalType">
        <xs:attribute name="meanError"  type="NonNegativeDecimalType">
      </xs:extension>
    </xs:simpleContent>
  </xs:complexType>
   <xs:complexType name="SpecifiedDecimalType">
    <xs:simpleContent>
      <xs:extension base="xs:decimal">
        <xs:attribute name="decimalPlaces"       type="xs:nonNegativeInteger">
        <xs:attribute name="significantFigures"    type="xs:nonNegativeInteger">
      </xs:extension>
    </xs:simpleContent>
  </xs:complexType>
=======================================================================================
Tue 05/12/2015_16:20:47.66  

1) Revised to insert into typename (minus type word) of element
2) Fixed use of type to enclose string in single quote i.e., '
3) all attributes now be text and input to them will be a quoted string type

INSERT INTO Part (id,DefinitionExternal,Description,ModelNumber,Name,QPId,Version) values (1,1,Wing Mirror Re-enforcement,QM_X_123456,WING_MIR_REENF,2bbeb82a-96bf-4f1e-a327-4ba3500490e1,1.02);
INSERT INTO Part (Id) values (1);

      <ComponentSet N="1">
      <Component id="2">
        <QPId>af4d1612-8918-4a69-a716-709beee7a953</QPId>
        <Part>
          <Id>1</Id>
        </Part>
      </Component>
    </ComponentSet>

 <xs:complexType name="PartType">
    <xs:complexContent>
      <xs:extension base="ProductDefinitionBaseType">
        <xs:sequence>
          <xs:element name="DefinitionInternal"      type="InternalPartAssemblyType"         minOccurs="0"/>
          <xs:element name="DefinitionExternal"   type="DefinitionExternalType"      minOccurs="0"/>
          <xs:element name="PartFamily"  type="PartFamilyType"   minOccurs="0"/>
        </xs:sequence>
      </xs:extension>
    </xs:complexContent>
  </xs:complexType>
<xs:complexType name="ProductDefinitionBaseType" abstract="true">
    <xs:sequence>
      <xs:element ref="Attributes"  minOccurs="0">
      <xs:element name="Name"   type="xs:string"  minOccurs="0">
      <xs:element name="QPId"   type="QPIdType" minOccurs="0"/>
      <xs:element name="ModelNumber"  type="xs:string"   minOccurs="0"/>
      <xs:element name="Description"  type="xs:string" minOccurs="0"/>
      <xs:element name="Version"  type="xs:string" minOccurs="0"/>
      <xs:element name="Material"   type="xs:string"    minOccurs="0"  maxOccurs="unbounded"/>
      <xs:element name="SecurityClassification"  type="SecurityClassificationType"   minOccurs="0"/>
      <xs:element name="ExportControlClassification"  type="xs:string"  minOccurs="0"/>
      <xs:element name="FeatureNominalIds" type="ArrayReferenceFullType"  minOccurs="0"/>
      <xs:element name="CharacteristicNominalIds"   type="ArrayReferenceFullType"  minOccurs="0"/>
      <xs:element name="NoteIds" type="ArrayReferenceFullType"  minOccurs="0"/>
      <xs:element name="PartNoteIds"    type="ArrayReferenceFullType"   minOccurs="0">
      <xs:element name="DatumDefinitionIds"   type="ArrayReferenceFullType"      minOccurs="0"/>    
      <xs:element name="DatumTargetDefinitionIds"   type="ArrayReferenceFullType" minOccurs="0"/>
      <xs:element name="DatumReferenceFrameIds"     type="ArrayReferenceFullType"   minOccurs="0"/>
    </xs:sequence>
    <xs:attribute name="id"   type="QIFIdType"   use="required"/>
  </xs:complexType>

   <xs:complexType name="PartFamilyType">
    <xs:sequence>
      <xs:element name="PrimaryShapeClass"   type="ShapeClassType"     minOccurs="0">
      <xs:element name="MinimumTolerance"    type="LinearValueType"    minOccurs="0">  
	  <xs:element name="MinimumBoundingBox"  type="BoundingBoxType"    minOccurs="0">
      <xs:element name="PrimaryManufacturingMethod"  type="ManufacturingMethodType" minOccurs="0">
    </xs:sequence>
  </xs:complexType>

<xs:complexType name="ComponentType">
    <xs:sequence>
      <xs:element ref="Attributes"  minOccurs="0"/>
      <xs:element name="QPId"    type="QPIdType"  minOccurs="0"/>
      <xs:element name="Transform"    type="ElementReferenceType"      minOccurs="0"/>
      <xs:element name="Traceability"    type="ProductTraceabilityType"   minOccurs="0"/>
      <xs:choice>
        <xs:element name="Part"        type="ElementReferenceType"/>
        <xs:element name="Assembly"     type="ElementReferenceType"/>
      </xs:choice>
      <xs:element name="DefinitionInternal"   type="InternalComponentType"   minOccurs="0"/>
    </xs:sequence>
    <xs:attribute name="id"
      type="QIFIdType"
      use="required"/>
  </xs:complexType>
=============================
Tue 05/12/2015_12:13:09.13  
Give up on extracting element name from type particle breakdown.

     <LinearCoordinateCharacteristicDefinition id="25">
        <Tolerance>  type is AreaToleranceType
          <MaxValue>0.2</MaxValue>
          <MinValue>-0.2</MinValue>
          <DefinedAsLimit>false</DefinedAsLimit>
        </Tolerance>
      </LinearCoordinateCharacteristicDefinition>

  <xs:complexType name="AreaToleranceType">
    <xs:sequence>
      <xs:choice>
        <xs:sequence>
          <xs:element name="MaxValue"     type="SpeedValueType"/>
          <xs:element name="MinValue"     type="SpeedValueType"      minOccurs="0"/>
         </xs:sequence>
        <xs:element name="MinValue"     type="SpeedValueType">
       </xs:choice>
      <xs:element name="DefinedAsLimit"     type="xs:boolean"/>
    </xs:sequence>
  </xs:complexType>

Name=DefinedAsLimit [1,1] TypeName=boolean Type=entity_ SimpleType=F BaseType=anySimpleType Global=False Parent=UserDefinedUnitCharacteristicNominal  OuterElementName=UserDefinedUnitCharacteristicNominal
  <xs:element name="UserDefinedUnitCharacteristicNominal"
    type="UserDefinedUnitCharacteristicNominalType"
    substitutionGroup="CharacteristicNominal">
    <xs:annotation>
      <xs:documentation>
        The global UserDefinedUnitCharacteristicNominal element gives
        information about a user-defined characteristic nominal with
        a user-defined unit.
      </xs:documentation>
    </xs:annotation>
  </xs:element>

<xs:complexType name="UserDefinedUnitCharacteristicNominalType">
    <xs:complexContent>
      <xs:extension base="CharacteristicNominalBaseType">
        <xs:sequence>
          <xs:element name="TargetValue"     type="UserDefinedUnitValueType"/>
          <xs:choice>
            <xs:sequence>
              <xs:element name="MaxValue"         type="UserDefinedUnitValueType"/>
              <xs:element name="MinValue"     type="UserDefinedUnitValueType"           minOccurs="0"/>
            </xs:sequence>
            <xs:element name="MinValue"              type="UserDefinedUnitValueType"/>
          </xs:choice>
          <xs:element name="DefinedAsLimit"            type="xs:boolean"/>
        </xs:sequence>
      </xs:extension>
    </xs:complexContent>
  </xs:complexType>

XML Schema provides a mechanism, called substitution groups, that allows elements to be substituted for other elements. More specifically, elements can be assigned to a special group of elements that are said to be substitutable for a particular named element called the head element. 
******(Note that the head element as well as the substitutable elementsmust be declared as global elements.)  *************

XML Schema provides a mechanism to force substitution for a particular element or type.
 When an element or type is declared to be "abstract", it cannot be used in an instance document. 
 When an element is declared to be abstract, a member of that element's substitution group must appear in the instance document. 
 When an element's corresponding type definition is declared as abstract, all instances of that element must use xsi:type to indicate a derived type that is not abstract.

Sun 05/10/2015_16:15:35.79  

Symbol problem: not all kept as pointers.
					ISymbol symbol;
					symbol.Name() = StrX(attr->getName()).localForm();
					symbol.Required() = attrUse->getRequired();
					symbol.TypeName() = GetText(simpletype->getName());
					typeSymbol->Attributes().push_back(symbol);


==============================================================
 <xs:complexType name="CharacteristicDefinitionsType">
    <xs:sequence>
      <xs:element ref="CharacteristicDefinition"  maxOccurs="unbounded">
      </xs:element>
    </xs:sequence>
  </xs:complexType>

<xs:element name="CharacteristicDefinition"  type="CharacteristicDefinitionBaseType"/>
<xs:element name="AngleBetweenCharacteristicDefinition"  type="AngleBetweenCharacteristicDefinitionType"  substitutionGroup="CharacteristicDefinition"/>

  CharacteristicDefinitionsType
  +		((*(ISymbol*)(&*typeptr)))._vLowerBounds	[1](-2)	std::vector<int,std::allocator<int> >
+		((*(ISymbol*)(&*typeptr))).vUpperBounds	[1](-2)	std::vector<int,std::allocator<int> >

====================================================================

XSModelGroupDefinition - yikes - whole new apparatus of definition ...
http://www.w3schools.com/schema/el_group.asp

Name=CharacteristicItem TypeName=CharacteristicItemBaseType Type=entity_ Simple=F BaseType=CharacteristicBaseType Outer=True Parent=  OuterElementTypeName=
Name=CharacteristicItem TypeName=CharacteristicItemBaseType Type=entity_ Simple=F BaseType=CharacteristicBaseType Outer=False Parent=CharacteristicItemsType  OuterElementTypeName=CharacteristicItemsType

bounds?
<xs:complexType name="CharacteristicItemsType">
    <xs:sequence>
      <xs:element ref="CharacteristicItem"
        maxOccurs="unbounded">
      </xs:element>
    </xs:sequence>
  </xs:complexType>
 
 <xs:element name="CharacteristicItem"
    type="CharacteristicItemBaseType">
  </xs:element>

  <xs:element name="AngleBetweenCharacteristicItem"
    type="AngleBetweenCharacteristicItemType"
    substitutionGroup="CharacteristicItem">
  </xs:element>

CREATE TABLE WidthCharacteristicNominal (
	index  SERIAL PRIMARY KEY,
	id text,-- attribute
	id text,-- attribute
	id text,-- attribute
	id text,-- attribute
	id text,-- attribute
	_Attributes integer, -- index into table AttributesType 
	Description text, 
	_Attributes integer, -- index into table AttributesType 
	Description text, 
	CharacteristicDefinitionId text NOT NULL, 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFullType 
	_EntityInternalIds integer, -- index into table ArrayReferenceFullType 
	_EntityExternalIds integer, -- index into table ArrayReferenceFullType 
	Name text, 
	_KeyCharacteristic integer, -- index into table KeyCharacteristicType 
	_Attributes integer, -- index into table AttributesType 
	Description text, 
	CharacteristicDefinitionId text NOT NULL, 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFullType 
	_EntityInternalIds integer, -- index into table ArrayReferenceFullType 
	_EntityExternalIds integer, -- index into table ArrayReferenceFullType 
	Name text, 
	_KeyCharacteristic integer, -- index into table KeyCharacteristicType 
	_Attributes integer, -- index into table AttributesType 
	Description text, 
	CharacteristicDefinitionId text NOT NULL, 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFullType 
	_EntityInternalIds integer, -- index into table ArrayReferenceFullType 
	_EntityExternalIds integer, -- index into table ArrayReferenceFullType 
	Name text, 
	_KeyCharacteristic integer, -- index into table KeyCharacteristicType 
	_TargetValue integer, -- index into table AreaValueType 
	_Attributes integer, -- index into table AttributesType 
	Description text, 
	CharacteristicDefinitionId text NOT NULL, 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFullType 
	_EntityInternalIds integer, -- index into table ArrayReferenceFullType 
	_EntityExternalIds integer, -- index into table ArrayReferenceFullType 
	Name text, 
	_KeyCharacteristic integer, -- index into table KeyCharacteristicType 
	_TargetValue integer  -- index into table AreaValueType 
) ;
Name=WidthCharacteristicNominalType TypeName=type_ Type=WidthCharacteristicNominalType Simple=F  BaseType=LinearCharacteristicNominalBaseType Abstract=0 [-2,-2]
	Attributes: 0. id(1) 
	Subtypes: LinearCharacteristicNominalBaseType->LinearCharacteristicNominalBaseType->DimensionalCharacteristicNominalBaseType->CharacteristicNominalBaseType->CharacteristicBaseType->
	 VarName=id Type=attribute_ TypeName=  Basetype= [-2,-2]
	 Derived:LinearCharacteristicNominalBaseType
		 VarName=id Type=attribute_ TypeName=  Basetype= [-2,-2]
		 Derived:DimensionalCharacteristicNominalBaseType
			 VarName=id Type=attribute_ TypeName=  Basetype= [-2,-2]
			 Derived:CharacteristicNominalBaseType
				 VarName=id Type=attribute_ TypeName=  Basetype= [-2,-2]
				 Derived:CharacteristicBaseType
					 VarName=id Type=attribute_ TypeName=  Basetype= [-2,-2]
					 VarName=Attributes Type=element_ TypeName=AttributesType  Basetype=anyType [0,1]
					 VarName=Description Type=element_ TypeName=string  Basetype=anySimpleType [0,1]
				 Group:
					 VarName=Attributes Type=element_ TypeName=AttributesType  Basetype=anyType [0,1]
					 VarName=Description Type=element_ TypeName=string  Basetype=anySimpleType [0,1]
				 Group:
					 VarName=CharacteristicDefinitionId Type=element_ TypeName=QIFReferenceType  Basetype=QIFIdType [1,1]
					 VarName=FeatureNominalIds Type=element_ TypeName=ArrayReferenceFullType  Basetype=anyType [0,1]
					 VarName=EntityInternalIds Type=element_ TypeName=ArrayReferenceFullType  Basetype=anyType [0,1]
					 VarName=EntityExternalIds Type=element_ TypeName=ArrayReferenceFullType  Basetype=anyType [0,1]
					 VarName=Name Type=element_ TypeName=token  Basetype=normalizedString [0,1]
					 VarName=KeyCharacteristic Type=element_ TypeName=KeyCharacteristicType  Basetype=anyType [0,1]
			 Group:
				 VarName=Attributes Type=element_ TypeName=AttributesType  Basetype=anyType [0,1]
				 VarName=Description Type=element_ TypeName=string  Basetype=anySimpleType [0,1]
			 Group:
				 VarName=CharacteristicDefinitionId Type=element_ TypeName=QIFReferenceType  Basetype=QIFIdType [1,1]
				 VarName=FeatureNominalIds Type=element_ TypeName=ArrayReferenceFullType  Basetype=anyType [0,1]
				 VarName=EntityInternalIds Type=element_ TypeName=ArrayReferenceFullType  Basetype=anyType [0,1]
				 VarName=EntityExternalIds Type=element_ TypeName=ArrayReferenceFullType  Basetype=anyType [0,1]
				 VarName=Name Type=element_ TypeName=token  Basetype=normalizedString [0,1]
				 VarName=KeyCharacteristic Type=element_ TypeName=KeyCharacteristicType  Basetype=anyType [0,1]
		 Group:
			 Group:
				 VarName=Attributes Type=element_ TypeName=AttributesType  Basetype=anyType [0,1]
				 VarName=Description Type=element_ TypeName=string  Basetype=anySimpleType [0,1]
			 Group:
				 VarName=CharacteristicDefinitionId Type=element_ TypeName=QIFReferenceType  Basetype=QIFIdType [1,1]
				 VarName=FeatureNominalIds Type=element_ TypeName=ArrayReferenceFullType  Basetype=anyType [0,1]
				 VarName=EntityInternalIds Type=element_ TypeName=ArrayReferenceFullType  Basetype=anyType [0,1]
				 VarName=EntityExternalIds Type=element_ TypeName=ArrayReferenceFullType  Basetype=anyType [0,1]
				 VarName=Name Type=element_ TypeName=token  Basetype=normalizedString [0,1]
				 VarName=KeyCharacteristic Type=element_ TypeName=KeyCharacteristicType  Basetype=anyType [0,1]
		 Group:
			 VarName=TargetValue Type=element_ TypeName=LinearValueType  Basetype=SpecifiedDecimalType [0,1]
	 Group:
		 Group:
			 VarName=Attributes Type=element_ TypeName=AttributesType  Basetype=anyType [0,1]
			 VarName=Description Type=element_ TypeName=string  Basetype=anySimpleType [0,1]
		 Group:
			 VarName=CharacteristicDefinitionId Type=element_ TypeName=QIFReferenceType  Basetype=QIFIdType [1,1]
			 VarName=FeatureNominalIds Type=element_ TypeName=ArrayReferenceFullType  Basetype=anyType [0,1]
			 VarName=EntityInternalIds Type=element_ TypeName=ArrayReferenceFullType  Basetype=anyType [0,1]
			 VarName=EntityExternalIds Type=element_ TypeName=ArrayReferenceFullType  Basetype=anyType [0,1]
			 VarName=Name Type=element_ TypeName=token  Basetype=normalizedString [0,1]
			 VarName=KeyCharacteristic Type=element_ TypeName=KeyCharacteristicType  Basetype=anyType [0,1]
	 Group:
		 VarName=TargetValue Type=element_ TypeName=LinearValueType  Basetype=SpecifiedDecimalType [0,1]
=================================================================================
Fri 05/08/2015_16:15:35.79  
Simple Designation was wrong
INSERT INTO QIFDocument (versionQIF,idMax,Characteristics,DatumDefinitions,DatumReferenceFrames,Features,FileUnits,Header,MeasurementResources,MeasurementsResults,PreInspectionTraceability,Product,Version) 
values (2.0.0,86,-842150450,-842150450,-842150450,-842150450,-842150450,-842150450,-842150450,-842150450,-842150450,-842150450,-842150450);
=================================================================================
Fri 05/08/2015_ 9:58:14.79  

Problem: cannot resolve element from XML elemnt-last element pairing - cant seem to discern from XSD :(

Problem: types repeating cvardefs - need to lookup, can there be multiple derivations (inheritance - dont think so)
only 1 inherited definition?

Problem: difference between inherited particle and derived inherited?

Problem: each supertype seems to be adding to the ActionGroupBaseType
Name=ActionGroupBaseType TypeName=type_ Type=ActionGroupBaseType BaseType=F Simple=PlanElementBaseType Abstract=1 [-2,-2]
	Subtypes: PlanElementBaseType->PlanElementBaseType->
	Supertypes: (OrderedActionGroupType, PickSomeActionGroupType, PartiallyOrderedActionGroupType, OneOfActionGroupType, UnorderedActionGroupType, )
	 Name=ActionGroupBaseType Type=simplecontent_ TypeName=ActionGroupBaseType  Basetype= [-2,-2]
	 Name=ActionGroupBaseType Type=simplecontent_ TypeName=ActionGroupBaseType  Basetype= [-2,-2]
	 Name=ActionGroupBaseType Type=simplecontent_ TypeName=ActionGroupBaseType  Basetype= [-2,-2]
	 Name=ActionGroupBaseType Type=simplecontent_ TypeName=ActionGroupBaseType  Basetype= [-2,-2]
	 Name=ActionGroupBaseType Type=simplecontent_ TypeName=ActionGroupBaseType  Basetype= [-2,-2]
		 Name=WorkInstructionIds Type=element_ TypeName=ArrayReferenceFullType  Basetype=anyType [0,1]
		 Name=PlanElementBaseType Type=simplecontent_ TypeName=PlanElementBaseType  Basetype= [-2,-2]
		 Name=PlanElementBaseType Type=simplecontent_ TypeName=PlanElementBaseType  Basetype= [-2,-2]
		 Name=WorkInstructionIds Type=element_ TypeName=ArrayReferenceFullType  Basetype=anyType [0,1]
		 Name=MeasureActionGroupFunction Type=element_ TypeName=MeasureActionGroupFunctionType  Basetype=anyType [0,1]

Name=OrderedActionGroupType TypeName=type_ Type=OrderedActionGroupType BaseType=F Simple=ActionGroupBaseType Abstract=0 [-2,-2]
	Subtypes: ActionGroupBaseType->ActionGroupBaseType->PlanElementBaseType->
		 Name=ActionGroupBaseType Type=simplecontent_ TypeName=ActionGroupBaseType  Basetype= [-2,-2]
		 Name=ActionGroupBaseType Type=simplecontent_ TypeName=ActionGroupBaseType  Basetype= [-2,-2]
		 Name=ActionGroupBaseType Type=simplecontent_ TypeName=ActionGroupBaseType  Basetype= [-2,-2]
		 Name=ActionGroupBaseType Type=simplecontent_ TypeName=ActionGroupBaseType  Basetype= [-2,-2]
		 Name=ActionGroupBaseType Type=simplecontent_ TypeName=ActionGroupBaseType  Basetype= [-2,-2]
			 Name=WorkInstructionIds Type=element_ TypeName=ArrayReferenceFullType  Basetype=anyType [0,1]
			 Name=PlanElementBaseType Type=simplecontent_ TypeName=PlanElementBaseType  Basetype= [-2,-2]
			 Name=PlanElementBaseType Type=simplecontent_ TypeName=PlanElementBaseType  Basetype= [-2,-2]
			 Name=WorkInstructionIds Type=element_ TypeName=ArrayReferenceFullType  Basetype=anyType [0,1]
			 Name=MeasureActionGroupFunction Type=element_ TypeName=MeasureActionGroupFunctionType  Basetype=anyType [0,1]
			 Name=WorkInstructionIds Type=element_ TypeName=ArrayReferenceFullType  Basetype=anyType [0,1]
			 Name=MeasureActionGroupFunction Type=element_ TypeName=MeasureActionGroupFunctionType  Basetype=anyType [0,1]
		 Name=Steps Type=element_ TypeName=NumberedPlanElementsType  Basetype=anyType [1,1]

=================================================================================
Thu 05/07/2015_13:29:34.57  
+		nodename	"DiameterCharacteristicDefinition"	std::basic_string<char,std::char_traits<char>,std::allocator<char> >
+		nodename	"DiameterCharacteristicDefinition"	std::basic_string<char,std::char_traits<char>,std::allocator<char> >


// have to find more exact element name, outername matching mechanism
		std::string outerelemname;
		xercesc::DOMNode * parentnode = node->getParentNode();
		outerelemname=(parentnode->getNodeName()!=NULL)? ToStr(parentnode->getNodeName()) : "";
		elem = _symbols.FindNamedEntity(nodename,outerelemname);


Name=Part TypeName=ElementReferenceType Type=entity_ BaseType=anyType Outer=False Parent=  OuterElementName=ComponentType
Name=Part TypeName=PartType Type=entity_ BaseType=ProductDefinitionBaseType Outer=False Parent=  OuterElementName=PartSetType
Name=Part TypeName=PartType Type=entity_ BaseType=ProductDefinitionBaseType Outer=True Parent=  OuterElementName=



+		childname	"DefinitionExternal"	
Nodename: Part, Type: PartType?
+		((*(ISymbol*)(&*typeptr)))._Name	"ElementReferenceType"	

Name=DefinitionExternal TypeName=DefinitionExternalType Type=entity_ BaseType=anyType Outer=False Parent=  OuterElementName=AssemblyType
Name=DefinitionExternal TypeName=DefinitionExternalType Type=entity_ BaseType=anyType Outer=False Parent=  OuterElementName=PartType
 <Product>
    <PartSet N="1">
      <Part id="1">
        <Name>WING_MIR_REENF</Name>
        <QPId>2bbeb82a-96bf-4f1e-a327-4ba3500490e1</QPId>
        <ModelNumber>QM_X_123456</ModelNumber>
        <Description>Wing Mirror Re-enforcement</Description>
        <Version>1.02</Version>
        <DefinitionExternal id="6">
          <PrintedDrawing id="5">
            <Name>sheet2_solid4</Name>
            <Version>1.0.0</Version>
            <Description>Sample QIF elements</Description>
            <DrawingNumber>#1</DrawingNumber>
            <AdditionalChanges>none</AdditionalChanges>
            <Location>Cabinet 17, Drawer 3</Location>
          </PrintedDrawing>
        </DefinitionExternal>
      </Part>
    </PartSet>

<xs:element name="Part"    type="ElementReferenceType"/>

 <xs:complexType name="PartType">
    <xs:complexContent>
      <xs:extension base="ProductDefinitionBaseType">
        <xs:sequence>
          <xs:element name="DefinitionInternal"    type="InternalPartAssemblyType"        minOccurs="0"/>
          <xs:element name="DefinitionExternal"    type="DefinitionExternalType"          minOccurs="0"/>
          <xs:element name="PartFamily"        type="PartFamilyType"         minOccurs="0"/>
        </xs:sequence>
      </xs:extension>
    </xs:complexContent>
  </xs:complexType>
=================================================================================
Wed 05/06/15 08:47:16 PM
Problem tolerance is inner element, with lots of different associated types, but has no outer element or parent ptr

        <xs:element name="Tolerance"      type="TemperatureToleranceType"/>
		 <xs:complexType name="TemperatureToleranceType"> -- vrety complex with choices etc.

Name=Tolerance TypeName=AngularToleranceType Type=entity_ BaseType=anyType Outer=False Parent=  OuterElementName=AngularCoordinateCharacteristicDefinitionType
Name=Tolerance TypeName=LinearToleranceType Type=entity_ BaseType=anyType Outer=False Parent=  OuterElementName=CurveLengthCharacteristicDefinitionType
Name=Tolerance TypeName=LinearToleranceType Type=entity_ BaseType=anyType Outer=False Parent=  OuterElementName=DistanceBetweenCharacteristicDefinitionType
Name=Tolerance TypeName=LinearToleranceType Type=entity_ BaseType=anyType Outer=False Parent=  OuterElementName=HeightCharacteristicDefinitionType
Name=Tolerance TypeName=LinearToleranceType Type=entity_ BaseType=anyType Outer=False Parent=  OuterElementName=LinearCoordinateCharacteristicDefinitionType
Name=Tolerance TypeName=TimeToleranceType Type=entity_ BaseType=anyType Outer=False Parent=  OuterElementName=TimeCharacteristicDefinitionBaseType
Name=Tolerance TypeName=AngularToleranceType Type=entity_ BaseType=anyType Outer=False Parent=  OuterElementName=
Name=Tolerance TypeName=LinearToleranceType Type=entity_ BaseType=anyType Outer=False Parent=  OuterElementName=
Name=Tolerance TypeName=TemperatureToleranceType Type=entity_ BaseType=anyType Outer=False Parent=  OuterElementName=TemperatureCharacteristicDefinitionBaseType
Name=Tolerance TypeName=MassToleranceType Type=entity_ BaseType=anyType Outer=False Parent=  OuterElementName=MassCharacteristicDefinitionBaseType
Name=Tolerance TypeName=TemperatureToleranceType Type=entity_ BaseType=anyType Outer=False Parent=  OuterElementName=
Name=Tolerance TypeName=ForceToleranceType Type=entity_ BaseType=anyType Outer=False Parent=  OuterElementName=ForceCharacteristicDefinitionBaseType
Name=Tolerance TypeName=LinearToleranceType Type=entity_ BaseType=anyType Outer=False Parent=  OuterElementName=DiameterCharacteristicDefinitionType
Name=Tolerance TypeName=LinearToleranceType Type=entity_ BaseType=anyType Outer=False Parent=  OuterElementName=LengthCharacteristicDefinitionType
Name=Tolerance TypeName=AngularToleranceType Type=entity_ BaseType=anyType Outer=False Parent=  OuterElementName=AngularCharacteristicDefinitionBaseType
Name=Tolerance TypeName=AngularToleranceType Type=entity_ BaseType=anyType Outer=False Parent=  OuterElementName=AngleBetweenCharacteristicDefinitionType
Name=Tolerance TypeName=LinearToleranceType Type=entity_ BaseType=anyType Outer=False Parent=  OuterElementName=SquareCharacteristicDefinitionType
Name=Tolerance TypeName=LinearToleranceType Type=entity_ BaseType=anyType Outer=False Parent=  OuterElementName=DistanceFromCharacteristicDefinitionType
Name=Tolerance TypeName=SpeedToleranceType Type=entity_ BaseType=anyType Outer=False Parent=  OuterElementName=
Name=Tolerance TypeName=LinearToleranceType Type=entity_ BaseType=anyType Outer=False Parent=  OuterElementName=LinearCharacteristicDefinitionBaseType
Name=Tolerance TypeName=AreaToleranceType Type=entity_ BaseType=anyType Outer=False Parent=  OuterElementName=
Name=Tolerance TypeName=LinearToleranceType Type=entity_ BaseType=anyType Outer=False Parent=  OuterElementName=DepthCharacteristicDefinitionType
Name=Tolerance TypeName=LinearToleranceType Type=entity_ BaseType=anyType Outer=False Parent=  OuterElementName=
Name=Tolerance TypeName=AngularToleranceType Type=entity_ BaseType=anyType Outer=False Parent=  OuterElementName=AngleFromCharacteristicDefinitionType
Name=Tolerance TypeName=PressureToleranceType Type=entity_ BaseType=anyType Outer=False Parent=  OuterElementName=PressureCharacteristicDefinitionBaseType
Name=Tolerance TypeName=PressureToleranceType Type=entity_ BaseType=anyType Outer=False Parent=  OuterElementName=
Name=Tolerance TypeName=AreaToleranceType Type=entity_ BaseType=anyType Outer=False Parent=  OuterElementName=AreaCharacteristicDefinitionBaseType
Name=Tolerance TypeName=ForceToleranceType Type=entity_ BaseType=anyType Outer=False Parent=  OuterElementName=
Name=Tolerance TypeName=LinearToleranceType Type=entity_ BaseType=anyType Outer=False Parent=  OuterElementName=WidthCharacteristicDefinitionType
Name=Tolerance TypeName=SpeedToleranceType Type=entity_ BaseType=anyType Outer=False Parent=  OuterElementName=SpeedCharacteristicDefinitionBaseType
Name=Tolerance TypeName=AngularToleranceType Type=entity_ BaseType=anyType Outer=False Parent=  OuterElementName=AngleCharacteristicDefinitionType
Name=Tolerance TypeName=TimeToleranceType Type=entity_ BaseType=anyType Outer=False Parent=  OuterElementName=
Name=Tolerance TypeName=LinearToleranceType Type=entity_ BaseType=anyType Outer=False Parent=  OuterElementName=ThicknessCharacteristicDefinitionType
Name=Tolerance TypeName=MassToleranceType Type=entity_ BaseType=anyType Outer=False Parent=  OuterElementName=
Name=Tolerance TypeName=LinearToleranceType Type=entity_ BaseType=anyType Outer=False Parent=  OuterElementName=ChordCharacteristicDefinitionType

********** Printing out information from Schema **********

        Parse QIFDocument
                Parse Characteristics
                        Parse CharacteristicDefinitions
                                Parse DiameterCharacteristicDefinition
Assertion failed: varentity!=NULL, file d:\michalos\my work\qif\src\msvcqif\msvc
qif\xmlandsql.cpp, line 602


=================================================================================
Wed 05/06/15 06:47:16 PM
Does substituion group alias work:

CoordinateMeasureFeatureMethod=ActionMethod
GageMeasureFeatureMethod=ActionMethod
ManualMeasureFeatureMethod=ActionMethod
OtherMeasureFeatureMethod=ActionMethod

 <xs:element name="ActionMethod" type="ActionMethodBaseType" />  // not declared abstract ...

  <xs:element name="CoordinateMeasureFeatureMethod"   type="CoordinateMeasureFeatureMethodType"   substitutionGroup="ActionMethod"/>
  <xs:element name="GageMeasureFeatureMethod"   type="GageMeasureFeatureMethodType"   substitutionGroup="ActionMethod"/>
  <xs:element name="ManualMeasureFeatureMethod"   type="ManualMeasureFeatureMethodType"   substitutionGroup="ActionMethod"/>
  <xs:element name="OtherMeasureFeatureMethod"   type="OtherMeasureFeatureMethodType"    substitutionGroup="ActionMethod"/>


=========================================================================
Wed 05/06/15 04:47:16 PM

https://xerces.apache.org/xerces2-j/xml-schema.html
A list of Xerces "Limitations"
http://www.ibm.com/developerworks/library/x-xsdxerc/index.html
Good xml reading list at end
=========================================================================
Wed 05/06/15 04:47:16 PM

Need to resolve elements within subsitution group as in:
(May need to find match - but then how to find type?)

_symbols.FindNamedEntity "DiameterCharacteristicDefinition"	, "CharacteristicDefinitionsType" 
FAILS
 <xs:element name="DiameterCharacteristicDefinition"  type="DiameterCharacteristicDefinitionType"
    substitutionGroup="CharacteristicDefinition">
  </xs:element>

OR 
 <xs:complexType name="DiameterCharacteristicDefinitionType">
    <xs:complexContent>
      <xs:extension base="LinearCharacteristicDefinitionBaseType"/>
    </xs:complexContent>
  </xs:complexType>

  <xs:complexType name="LinearCharacteristicDefinitionBaseType"    abstract="true">
    <xs:complexContent>
      <xs:extension base="DimensionalCharacteristicDefinitionBaseType">
        <xs:choice>
          <xs:element name="Tolerance" type="LinearToleranceType"/>
          <xs:element name="NonTolerance"  type="NonToleranceEnumType">
          </xs:element>
        </xs:choice>
      </xs:extension>
    </xs:complexContent>
  </xs:complexType>

=======================================================================
Wed 05/06/15 02:41:53 PM

 <xs:complexType name="CharacteristicIsType">
    <xs:complexContent>
      <xs:extension base="BooleanExpressionBaseType">
        <xs:attribute name="val"   type="CharacteristicTypeEnumType"      use="required"/>
      </xs:extension>
    </xs:complexContent>
  </xs:complexType>
  <xs:complexType name="BooleanExpressionBaseType"  abstract="true">
  </xs:complexType>
  WORKED:

DROP TABLE IF EXISTS CharacteristicIs;
CREATE TABLE CharacteristicIs (
	index  SERIAL PRIMARY KEY,
	val text -- attribute
) ;

=======================================================================
Wed 05/06/15 12:09:03 PM

CREATE TABLE ActionMethods (
	index  SERIAL PRIMARY KEY,
	__ManualMeasureFeatureMethodType integer[], -- index into table ManualMeasureFeatureMethodType 
	__OtherMeasureFeatureMethodType integer[], -- index into table OtherMeasureFeatureMethodType 
	__CoordinateMeasureFeatureMethodType integer[], -- index into table CoordinateMeasureFeatureMethodType 
	__GageMeasureFeatureMethodType integer[], -- index into table GageMeasureFeatureMethodType 
	__MeasureFeatureMethodBaseType integer[]  -- index into table MeasureFeatureMethodBaseType <- declared as abstract
) ;

<xs:complexType name="ActionMethodsType">
     <xs:sequence>
      <xs:element ref="ActionMethod"      maxOccurs="unbounded"/>
     </xs:sequence>
  </xs:complexType>

 <xs:element name="ActionMethod" type="ActionMethodBaseType" />  // not declared abstract ...

  <xs:element name="CoordinateMeasureFeatureMethod"   type="CoordinateMeasureFeatureMethodType"   substitutionGroup="ActionMethod"/>
  <xs:element name="GageMeasureFeatureMethod"   type="GageMeasureFeatureMethodType"   substitutionGroup="ActionMethod"/>
  <xs:element name="ManualMeasureFeatureMethod"   type="ManualMeasureFeatureMethodType"   substitutionGroup="ActionMethod"/>
  <xs:element name="OtherMeasureFeatureMethod"   type="OtherMeasureFeatureMethodType"    substitutionGroup="ActionMethod"/>

=======================================================================
The default values for minOccurs and maxOccurs are 1. Thus:

<xsd:element minOccurs="1" name="asdf"/>
cardinality is [1-1] Note: if you specify only minOccurs attribute, it can't be greater than 1, because the default value for maxOccurs is 1.

<xsd:element minOccurs="5" maxOccurs="2" name="asdf"/>

      <xs:element name="NotableEventIds"
        type="ArrayReferenceFullType"
        minOccurs="0">

WRONG!!!!!!!!!!!!!
DROP TABLE IF EXISTS ArrayReferenceFull;
CREATE TABLE ArrayReferenceFull (
	index  SERIAL PRIMARY KEY,
	N text -- attribute
) 
 <xs:complexType name="ArrayReferenceFullType">
     <xs:sequence>
      <xs:element name="Id"        type="QIFReferenceFullType"        maxOccurs="unbounded">
      </xs:element>
    </xs:sequence>
    <xs:attribute name="N"      type="NaturalType"      use="required">
    </xs:attribute>
  </xs:complexType>

  PROBLEM IS HERE:
  					if(s3->DerivedType() == XercesAdditions::DERIVATION_EXTENSION)
					{
						//_asm int 3;
						continue;
					}
	The type is an extension. But were are going to index into it.
=======================================================================
Tue 05/05/2015_14:23:03.69  

CREATE TABLE ActionMethods (
	index  SERIAL PRIMARY KEY,
	__ManualMeasureFeatureMethodType integer[], -- index into table ManualMeasureFeatureMethodType 
	__OtherMeasureFeatureMethodType integer[], -- index into table OtherMeasureFeatureMethodType 
	__CoordinateMeasureFeatureMethodType integer[], -- index into table CoordinateMeasureFeatureMethodType 
	__GageMeasureFeatureMethodType integer[], -- index into table GageMeasureFeatureMethodType 
	__MeasureFeatureMethodBaseType integer[]  -- index into table MeasureFeatureMethodBaseType 
) ;
====> remove all asbract definitions from tables and fields, abstract are subsumed elsewhere x()x
<!-- start ActionMethod substitution group -->

  <xs:element name="ActionMethod"
    type="ActionMethodBaseType">
  </xs:element>

   <xs:complexType name="ActionMethodBaseType"
    abstract="true">
    <xs:sequence>
      <xs:element name="ChosenResourceIds"   type="ArrayReferenceFullType"    minOccurs="0">
      </xs:element>
      <xs:element name="WorkInstructionIds"    type="ArrayReferenceFullType"   minOccurs="0">
      </xs:element>
    </xs:sequence>
    <xs:attribute name="id"      type="QIFIdType"   use="required">
    </xs:attribute>
  </xs:complexType>

  <xs:element name="CoordinateMeasureFeatureMethod"
    type="CoordinateMeasureFeatureMethodType"
    substitutionGroup="ActionMethod"/>

  <xs:element name="GageMeasureFeatureMethod"
    type="GageMeasureFeatureMethodType"
    substitutionGroup="ActionMethod"/>

  <xs:element name="ManualMeasureFeatureMethod"
    type="ManualMeasureFeatureMethodType"
    substitutionGroup="ActionMethod"/>

  <xs:element name="OtherMeasureFeatureMethod"
    type="OtherMeasureFeatureMethodType"
    substitutionGroup="ActionMethod"/>
=======================================================================


DROP TABLE IF EXISTS ActionMethods;
CREATE TABLE ActionMethods (
	index  SERIAL PRIMARY KEY,
	__ActionMethod integer[]  -- index into table ActionMethodBaseType 
) ;
No ActionMethodBaseType table declared, since it is only abstract.

=======================================================================
Tue 05/05/2015_12:22:32.60  

DROP TABLE IF EXISTS ActualAngularValue;
CREATE TABLE ActualAngularValue (
	index  SERIAL PRIMARY KEY,
	angularUnit text NOT NULL,-- attribute
	combinedUncertainty text NOT NULL,-- attribute
	meanError text NOT NULL,-- attribute
	decimalPlaces text NOT NULL,-- attribute
	significantFigures text NOT NULL,-- attribute
	ActualDecimalType text  
) ;
<xs:complexType name="ActualDecimalType">
    <xs:simpleContent>
      <xs:extension base="SpecifiedDecimalType">
        <xs:attribute name="combinedUncertainty"   type="NonNegativeDecimalType">
        </xs:attribute>
        <xs:attribute name="meanError"
          type="NonNegativeDecimalType">
        </xs:attribute>
      </xs:extension>
    </xs:simpleContent>
  </xs:complexType>

<complexType> and <simpleType> both define types. Complex types can have element descendants and attributes while simple types can't.

Complex types can have simple or complex content. Types with <complexContent> can contain child elements while those with <simpleContent> can only contain characters.

Example 1
Here is an example of an XML element (<shoesize>) that contains text-only:

<shoesize country="france">35</shoesize>
The following example declares a complexType, "shoesize", with its content defined as a integer data type and with a country attribute:

<xs:element name="shoesize">
  <xs:complexType>
    <xs:simpleContent>
      <xs:extension base="xs:integer">
        <xs:attribute name="country" type="xs:string" />
      </xs:extension>
    </xs:simpleContent>
  </xs:complexType>
</xs:element>
=======================================================================
Tue 05/05/2015_11:11:27.39  
CREATE TABLE ActualAngularValue
ActualAngularValueType
Inherited:ActualDecimalType


ActualDecimalType
<xs:element name="Datum"     type="DatumWithPrecedenceType"
<xs:element name="Datum"      type="SequencedDatumType"

Problem: If embedded element, could use same name and have different type.
Must associate embedded element with outer element?
=======================================================================
Finding type based on choice....
+		childname	"Precedence"	std::basic_string<char,std::char_traits<char>,std::allocator<char> >
  <xs:complexType name="PrecedenceType">
    <xs:annotation>
      <xs:documentation>
        The PrecedenceType defines the precedence of a datum in a feature
        control frame or compound datum.
      </xs:documentation>
    </xs:annotation>
    <xs:choice>
      <xs:element name="PrecedenceEnum"
        type="PrecedenceEnumType">
        <xs:annotation>
          <xs:documentation>
            The PrecedenceEnum element describes an often-used precedence
            of a datum in a feature control frame or compound datum.
          </xs:documentation>
        </xs:annotation>
      </xs:element>
      <xs:element name="OtherPrecedence"

<xs:complexType name="FeatureDefinitionBaseType"
    abstract="true">
    <xs:complexContent>
      <xs:extension base="FeatureBaseType"/>
    </xs:complexContent>
  </xs:complexType>

  <xs:complexType name="ArcFeatureDefinitionType">
    <xs:complexContent>
      <xs:extension base="FeatureDefinitionBaseType">
        <xs:sequence>
          <xs:element name="InternalExternal" type="InternalExternalEnumType">
          </xs:element>
          <xs:element name="Radius" type="LinearValueType">
          </xs:element>
        </xs:sequence>
      </xs:extension>
    </xs:complexContent>
  </xs:complexType>
  <xs:complexType name="CompositeFeatureDefinitionBaseType"
    abstract="true">
    <xs:complexContent>
      <xs:extension base="FeatureDefinitionBaseType"/>
    </xs:complexContent>
  </xs:complexType> 
  <xs:complexType name="CompoundFeatureDefinitionType">
    <xs:complexContent>
      <xs:extension base="CompositeFeatureDefinitionBaseType"/>
    </xs:complexContent>
  </xs:complexType>
   <xs:element name="FeatureDefinition" type="FeatureDefinitionBaseType">
    <xs:annotation>
      <xs:documentation>
        The global FeatureDefinition element is the head of a substitution
        group. Any element that is a member of the group may be substituted
        for the FeatureDefinition element anywhere the FeatureDefinition
        element may be used in an instance file.
      </xs:documentation>
    </xs:annotation>
  </xs:element>
    <xs:element name="ArcFeatureDefinition"  type="ArcFeatureDefinitionType"
    substitutionGroup="FeatureDefinition">
    <xs:annotation>
      <xs:documentation>
        The global ArcFeatureDefinition element gives information about an
        arc feature that may be used by more than one feature.
      </xs:documentation>
    </xs:annotation>
  </xs:element>
=======================================================================
Found match using all derived type
Lots of confusion between variable Name and variable TypeName!
+		name	"CircleFeatureNominal"	std::basic_string<char,std::char_traits<char>,std::allocator<char> > &


  <FeatureNominals>
      <EdgePointFeatureNominal id="8">
        <FeatureDefinitionId>7</FeatureDefinitionId>
        <Location>2460.7099609375 770.604614257813 944.993591308594</Location>
        <Normal>-0.735465884156759 -0.307902932144912 0.603560864882807</Normal>
        <AdjacentNormal>0.0411800179070265 -0.909449806293278 -0.413769568671133</AdjacentNormal>
      </EdgePointFeatureNominal>

	  INSERT INTO FeatureNominals ( values (;
had to allow for derived types to match
=======================================================================
	ISymbolPtr   FindSymbolOrParents(IXmlNodePtr pNode, std::string &name );
	  
	  had to allow for derived types to match

=======================================================================
COULD NOT FIND ELEMENT
Not an outer elment = so not detected...
		elem = FindNamedEntity(nodename).get();

+		nodename	"CharacteristicDefinitions"	std::basic_string<char,std::char_traits<char>,std::allocator<char> >

cannot easily get nested elements (inside elements) - so added create element/entity inside of variable definition list
=======================================================================

// Xerces C++ Namespace string, concatenated with full version string
#define XERCES_PRODUCT xercesc
#define XERCES_CPP_NAMESPACE INVK_CAT3_RAW_NUMERIC_SEP_UNDERSCORE(XERCES_PRODUCT,XERCES_VERSION_MAJOR,XERCES_VERSION_MINOR)

http://stackoverflow.com/questions/4336259/query-the-schema-details-of-a-table-in-postgresql
There is a much simpler way in PostgreSQL to get the type of a column.
SELECT pg_typeof(col)::text FROM tbl LIMIT 1

Install Postgres C++ library on Ubuntu
http://tutorialspoint.com/postgresql/postgresql_c_cpp.htm

Using Postgres in Visual Studio
http://www.dirkbertels.net/computing/postgres.php
=======================================================================
Xerces-C++ Class Reference
http://xerces.apache.org/xerces-c/apiDocs-3/classXSElementDeclaration.html#ac586c786e938dcc52c48488f6f457614
=======================================================================
Postgres Arrays
http://www.postgresql.org/docs/9.1/static/arrays.html
=======================================================================
Rows count in Postgres Table:
A full count of rows in a table can be comparatively slow performing in PostgreSQL, typically using this SQL:
SELECT COUNT(*) FROM tbl;
https://wiki.postgresql.org/wiki/Slow_Counting
=======================================================================
select datatype of the field in postgres
http://stackoverflow.com/questions/2146705/select-datatype-of-the-field-in-postgres
=======================================================================

Name=MeasurementResourceBaseType TypeName= Type=unknown_ BaseType=anyType Abstract=1 LowerBounds=-2 UpperBounds=-2
	Attributes: 0. id(1) 
	Supertypes: (FixtureType, CarriageType, ToolType, SensorType, MeasurementDeviceType, )
		 Name=Name Type=token TypeName=element_  Basetype= LowerBounds=1 UpperBounds=1
		 Name=Description Type=string TypeName=element_  Basetype= LowerBounds=0 UpperBounds=1
		 Name=Manufacturer Type=string TypeName=element_  Basetype= LowerBounds=0 UpperBounds=1
		 Name=ModelNumber Type=string TypeName=element_  Basetype= LowerBounds=0 UpperBounds=1
		 Name=SerialNumber Type=string TypeName=element_  Basetype= LowerBounds=0 UpperBounds=1
			 Name=LocationId Type=QIFReferenceFullType TypeName=element_  Basetype= LowerBounds=1 UpperBounds=1
			 Name=Location Type=LocationType TypeName=element_  Basetype= LowerBounds=1 UpperBounds=1
Name=MeasurementResourcesType TypeName= Type=unknown_ BaseType=anyType Abstract=0 LowerBounds=-2 UpperBounds=-2
		 Name=Version Type=VersionType TypeName=element_  Basetype= LowerBounds=0 UpperBounds=1
		 Name=Carriages Type=CarriagesType TypeName=element_  Basetype= LowerBounds=0 UpperBounds=1
		 Name=Fixtures Type=FixturesType TypeName=element_  Basetype= LowerBounds=0 UpperBounds=1
		 Name=MeasurementDevices Type=MeasurementDevicesType TypeName=element_  Basetype= LowerBounds=0 UpperBounds=1
		 Name=Sensors Type=SensorsType TypeName=element_  Basetype= LowerBounds=0 UpperBounds=1
		 Name=Tools Type=ToolsType TypeName=element_  Basetype= LowerBounds=0 UpperBounds=1
		 ame=MeasurementDeviceType TypeName= Type=unknown_ BaseType=MeasurementResourceBaseType Abstract=0 LowerBounds=-2 UpperBounds=-2
	Attributes: 0. id(1) 
	Subtypes: MeasurementResourceBaseType->
	Supertypes: (ProbingDeviceType, GageDeviceType, ManualDeviceType, )
			 Name=Name Type=token TypeName=element_  Basetype= LowerBounds=1 UpperBounds=1
			 Name=Description Type=string TypeName=element_  Basetype= LowerBounds=0 UpperBounds=1
			 Name=Manufacturer Type=string TypeName=element_  Basetype= LowerBounds=0 UpperBounds=1
			 Name=ModelNumber Type=string TypeName=element_  Basetype= LowerBounds=0 UpperBounds=1
			 Name=SerialNumber Type=string TypeName=element_  Basetype= LowerBounds=0 UpperBounds=1
				 Name=LocationId Type=QIFReferenceFullType TypeName=element_  Basetype= LowerBounds=1 UpperBounds=1
				 Name=Location Type=LocationType TypeName=element_  Basetype= LowerBounds=1 UpperBounds=1
			 Name=Calibrations Type=CalibrationsType TypeName=element_  Basetype= LowerBounds=0 UpperBounds=1
			 Name=InspectionTemperatures Type=TemperaturesType TypeName=element_  Basetype= LowerBounds=0 UpperBounds=1
Name=MeasurementDevicesType TypeName= Type=unknown_ BaseType=anyType Abstract=0 LowerBounds=-2 UpperBounds=-2
		 Name=MeasurementDevice Type=MeasurementDeviceType TypeName=element_  Basetype= LowerBounds=1 UpperBounds=-1		 
		 
Name=MeasurementDeviceType TypeName= Type=unknown_ BaseType=MeasurementResourceBaseType Abstract=0 LowerBounds=-2 UpperBounds=-2
	Attributes: 0. id(1) 
	Subtypes: MeasurementResourceBaseType->
	Supertypes: (ProbingDeviceType, GageDeviceType, ManualDeviceType, )
			 Name=Name Type=token TypeName=element_  Basetype= LowerBounds=1 UpperBounds=1
			 Name=Description Type=string TypeName=element_  Basetype= LowerBounds=0 UpperBounds=1
			 Name=Manufacturer Type=string TypeName=element_  Basetype= LowerBounds=0 UpperBounds=1
			 Name=ModelNumber Type=string TypeName=element_  Basetype= LowerBounds=0 UpperBounds=1
			 Name=SerialNumber Type=string TypeName=element_  Basetype= LowerBounds=0 UpperBounds=1
				 Name=LocationId Type=QIFReferenceFullType TypeName=element_  Basetype= LowerBounds=1 UpperBounds=1
				 Name=Location Type=LocationType TypeName=element_  Basetype= LowerBounds=1 UpperBounds=1
			 Name=Calibrations Type=CalibrationsType TypeName=element_  Basetype= LowerBounds=0 UpperBounds=1
			 Name=InspectionTemperatures Type=TemperaturesType TypeName=element_  Basetype= LowerBounds=0 UpperBounds=1
Name=MeasurementDevicesType TypeName= Type=unknown_ BaseType=anyType Abstract=0 LowerBounds=-2 UpperBounds=-2
		 Name=MeasurementDevice Type=MeasurementDeviceType TypeName=element_  Basetype= LowerBounds=1 UpperBounds=-1
#if 0
		str+=parser._symbols.CreateSQL(StringVector(std::string("QIFDocumentType"), 
			std::string("QIFDocumentHeaderType"),
			std::string("AuthorType"),
			std::string("AttributesType"),
			std::string("VersionHistoryType"),
			std::string("VersionType"),			
			std::string("PreInspectionTraceabilityType"),			
			std::string("FileUnitsType"),			
			std::string("DatumDefinitionsType"),	
			std::string("MeasurementsResultsType"),	
			std::string("MeasurementResultsType"),	
			
			//
			//  Measurement Resources
			std::string("MeasurementResourcesType"),
			//std::string("MeasurementResourceType"), // Not Referenced
			std::string("MeasurementDevicesType"),
//			std::string("MeasurementDeviceType"),  .. superceded by inherited type
			std::string("CarriagesType"),
			std::string("CarriageType"),
			std::string("FixturesType"),
			std::string("FixtureType"),
			std::string("ToolsType"),
			std::string("ToolType"),
			std::string("SensorsType"),
			std::string("SensorType"),
			std::string("FixtureType"),
			std::string("MeasurementDeviceAccuracyBaseType"),
			std::string("CalibrationMasterType"),

			std::string("CalibrationsType"),
			std::string("CalibrationType"),
			std::string("TemperaturesType"),
			std::string("TemperatureType"),

			std::string("QualificationsType"),
			std::string("QualificationType"),

			std::string("TouchProbeType"),
			std::string("RotaryTableType"),

			// Union: MeasurementDeviceType ProbingDeviceType GageDeviceType ManualDeviceType ComparatorType CMMType CaliperType');
			// std::string("ProbingDeviceType"),	// part of  inherited MeasurementDeviceType union				
			// std::string("CMMType"),				// part of  inherited MeasurementDeviceType union
			// std::string("ComparatorType"),		// part of  inherited MeasurementDeviceType union

			std::string("CMMGeometryType"),
			std::string("CMMAxisDirectionsType"),
			std::string("CMMSpeedsType"),
			std::string("CMMAccuracyType"),
			std::string("CMMScalesType"),
			std::string("CMMScaleType"),

			std::string("WorkingVolumeType"),
			std::string("EffectiveWorkingVolumeType"),

			std::string("ResolutionType"),
			std::string("XYZResolutionType"),
			std::string("LinearValueType"),
			std::string("AngularValueType"),
			std::string("MassValueType"),
			std::string("SpeedValueType"),
			std::string("PointType"),
			std::string("UnitVectorType"),
			std::string("TableErrorsType"),
			std::string("LengthFunctionDiscreteType"),
			std::string("AngleFunctionDiscreteType"),
			std::string("SpecifiedDecimalType"),
//			std::string("FunctionDiscreteType"),  // derivation use only?
			
			std::string("CMMAccuracyTestBaseType"), 
			std::string("FPSTestType"),
			std::string("B89TestType"),
			std::string("ISO10360TestType"),
			std::string("PointAccuracyTestType"),


			std::string("LesserErrorType"),
			std::string("LinearErrorType"),
			std::string("ArrayReferenceFullType"),
			std::string("ArrayPointType"),

			std::string()));

		str+=parser._symbols.CreateSqlInheritance(
			"MeasurementDeviceType", 
			StringVector(std::string("MeasurementDeviceType"), std::string("")), 
			"MeasurementDeviceType");
#endif
Server [localhost]:
Database [postgres]:
Port [5432]:
Username [postgres]:
Password for user postgres:
psql (9.4.1)
WARNING: Console code page (437) differs from Windows code page (1252)
         8-bit characters might not work correctly. See psql reference
         page "Notes for Windows users" for details.
Type "help" for help.

"C:\Program Files\PostgreSQL\9.4\bin\psql.exe" -dQIF -Upostgres -f"C:\Users\michalos\Documents\GitHub\QIF\src\MSVCQIF\MSVCQIF\Win32\Debug\QifSql.sql"
pause
# This connect to database QIF(which I manually created) and then runs the script -f file of SQL statements (CREATETABLE etc)
password: jlmcbm1984


I switched to postgres because it seems to keep up with the SQL standard (allowing arrays, etc.) Arrays fit perfectly into the XSD schema with multiple files.


CharacteristicDefinitionBaseType


      <PointProfileCharacteristicDefinition id="11">
        <ToleranceValue>4</ToleranceValue>
        <DatumReferenceFrameId>12</DatumReferenceFrameId>
      </PointProfileCharacteristicDefinition>
	  
      <PointProfileCharacteristicNominal id="13">
        <CharacteristicDefinitionId>11</CharacteristicDefinitionId>
      </PointProfileCharacteristicNominal>

      <LinearCoordinateCharacteristicDefinition id="21">
        <NonTolerance>MEASURED</NonTolerance>
      </LinearCoordinateCharacteristicDefinition>
	  <LinearCoordinateCharacteristicNominal id="22">
        <CharacteristicDefinitionId>21</CharacteristicDefinitionId>
        <TargetValue>2466.729248046875</TargetValue>
        <Direction>XAXIS</Direction>
      </LinearCoordinateCharacteristicNominal> 
	   
///////////////////////////////////////////////////////////////////////////
<?xml version="1.0" encoding="UTF-8" standalone="no" ?>
<QIFDocument xmlns="http://qifstandards.org/xsd/qif2" versionQIF="2.0.0" xmlns:x
si="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://qifsta
ndards.org/xsd/qif2 http://qifstandards.org/xsd/qif2 ../QIFApplications/QIFDocum
ent.xsd">
  <Version>
    <ThisInstanceQPId>1.0</ThisInstanceQPId>
  </Version>
  <Header>
    <Author>
      <Name>John Michaloski</Name>
      <Organization>NIST</Organization>
    </Author>
    <Description>Hello World</Description>
    <Scope>Results</Scope>
  </Header>
  <MeasurementsResults>
    <Version>
      <ThisInstanceQPId>234</ThisInstanceQPId>
    </Version>
    <MeasurementResults id="58">
      <ThisResultsInstanceQPId>8521ff0f-4c05-4f13-a2be-1386190f75a6</ThisResults
InstanceQPId>
      <ExternalFileReference>
        <URI>C:\R19_parts\5802804.res</URI>
        <FileSpec>
          <OtherFileSpec>res</OtherFileSpec>
        </FileSpec>
        <Description>Brown/Sharpe CMM Results</Description>
      </ExternalFileReference>
      <MeasuredFeatures>
        <FeatureActuals>
          <EdgePointFeatureActual id="10">
            <FeatureItemId>9</FeatureItemId>
            <Location>2460.72 770.62 944.98</Location>
            <Normal>-0.735465884156759 -0.307902932144912 0.603560864882807</Nor
mal>
          </EdgePointFeatureActual>
        </FeatureActuals>
      </MeasuredFeatures>
      <InspectionStatus/>
    </MeasurementResults>
  </MeasurementsResults>
</QIFDocument>
========================================================================

XSD command to generate code:
xsd.exe cxx-tree --generate-serialization --generate-polymorphic    QIFDocument.xsd

cxx-tree means to generate code for DOM parsing (not SAX)
Withhout --generate-serialization you cannot serialize  code. By default only parse methods are emitted.
Without  --generate-polymorphic  there is no inheritance in the XSD hierarchy
BUT you must add /bigobj  to the C++ compilation flags - generates a lot of object code

========================================================================
Version:                 1.0
Scope:                   Results
Description:             Hello World
Author:                  John Michaloski
Organization:            NIST
inspecting Organization: NIST
Address:                 100 Bureau Drive
                         Gaithersburg, Maryland
                         1-301-975-3458
                         john.michaloski@nist.gov
Inspection               John Michaloski
                         2015/3/19T12:24:6Z
========================================================================

To obtain the corresponding DOM node from an object model node you will need to call the _node accessor function which returns a pointer to DOMNode. 
You can then query this DOM node's type and cast it to either DOMAttr* or DOMElement*. 
To obtain the corresponding object model node from a DOM node, the DOM user data API is used. 
The xml_schema::dom::tree_node_key variable contains the key for object model nodes. 
The following schema and code fragment show how to navigate from DOM to object model nodes and in the opposite direction:
http://www.codesynthesis.com/projects/xsd/documentation/cxx/tree/manual/#5.1
// Get from the 'a' DOM element to xml_schema::string object model
  // node.
  //
  xml_schema::type& t (
    *reinterpret_cast<xml_schema::type*> (
       ae->getUserData (xml_schema::dom::tree_node_key)));

  xml_schema::string& a (dynamic_cast<xml_schema::string&> (t));


========================================================================
Accessing DOM Element 
  auto_ptr<text> t (
      text_ (argv[1],
             xml_schema::flags::keep_dom |
             xml_schema::flags::dont_initialize));

      DOMNode* root (t._node ());
should do it
========================================================================
Cloning DOM Document
  auto_ptr<text> t (
      text_ (argv[1],
             xml_schema::flags::keep_dom |
             xml_schema::flags::dont_initialize));

    // The DOM association can be recreated in a copy (the underlying
    // DOM document is cloned) if explicitly requested with the keep_dom
    // flag and only if this copy is "complete", i.e., made from the root
    // of the tree.
    //
    text copy (*t, xml_schema::flags::keep_dom);
========================================================================


XML transcode - XMLCh to char

void CADCXMLEventHandler::startElement(
const XMLCh* const uri,
const XMLCh* const localname_parameter,
const XMLCh* const qname,
const Attributes& attrs)
{

std::auto_ptr<char> localname
(XMLString::transcode(localname_parameter))

----------------------------------------
XML transcode - CString to XMLCh

CString csFilePath(_T("Test Path"));
char szDest[MAX_PATH+1];
WideCharToMultiByte( CP_ACP, 0, (LPCTSTR)csFilePath, -1,
szPathdest, MAX_PATH, NULL, NULL );

std::auto_ptr<XMLCh> xchFilePath (XMLString::transcode(szDest));

m_source =new LocalFileInputSource(xchFilePath .get());



#if 0
			doc->createElement(X("InspectionStatus"));

			//results.MeasurementResults().push_back(*(doc->createElement(X("MeasurementResults"))));
 			MeasurementResultsType &m=MeasurementResultsType(*(doc->createElement(X("MeasurementResults"))));
//			m.id(CreateNode(doc, "id",  QIFIdType(86)));
			//m.Version(::xsd::qif2::VersionType(*(doc->createElement(X("Version"))))) ; // CreateNode(doc, "Version", v));
			m.ThisResultsInstanceQPId().get()="8521ff0f-4c05-4f13-a2be-1386190f75a6";
			
			ExternalFileReferenceType &file((ExternalFileReferenceType &)*(doc->createElement(X("MeasurementsResults"))));
			file.URI()="C:\\R19_parts\\5802804.res";
			m.ExternalFileReference ().push_back(file);
#endif

			//DOMElement*  versionElem = doc->createElement(X("Version"));
			//rootElem->appendChild(versionElem);
			//DOMElement* r (doc->createElement (xml::string ("Version").c_str ()));



#if 0
		//fair.char_no = utils.GetXpathResults(e, "//QIFDocument/Characteristics/CharacteristicItems/*/Name");  // this is subtyped
		//fair.characteristic_designator= utils.GetXpathResults(e, "//QIFDocument/Characteristics/CharacteristicItems/*/KeyCharacteristic/Criticality");
		fair.requirement= utils.GetXpathResults(e, "//QIFDocument/Characteristics/CharacteristicItems/*/Name");

		fair.results= utils.GetXpathResults(e, "//QIFDocument/MeasurementResults/MeasuredCharacteristics/CharacteristicActuals/*/Status/CharacteristicStatusEnum");

		fair.non_conformance_number= utils.GetXpathResults(e, "//QIFDocument/MeasurementResults/MeasuredCharacteristics/CharacteristicActuals/NonConformanceDesignator");	

		fair.designed_toolingIds= utils.GetXpathResults(e, "//QIFDocument/Characteristics/CharacteristicItems/*/MeasurementDeviceIds/Id");
		for(int i=0; i< fair.designed_toolingIds.size(); i++)
		{
			fair.designed_toolings= utils.GetXpathResults(e, 
				CFairReports::StdStringFormat("//QIFDocument/MeasurementResources/MeasurementDevices/MeasurementDevice[id = %s]/Name", 
				fair.designed_toolingIds[i].c_str()));

		}

		//fair.reference_locationId= utils.GetXpathResults(e, "//QIFDocument/Characteristics/CharacteristicItems/*/LocationOnDrawing/DrawingId");
		//std::vector<xsd::qif2::CharacteristicItemBaseType*> nodes = utils.GetXpathAsStructs<CharacteristicItemBaseType>(e, "//QIFDocument/Characteristics/CharacteristicItems/*");
		for(int j=0; j< fair.reference_locationId.size(); j++)
		{
			for(int i=0; i< nodes.size(); i++)
			{
				xsd::qif2::PrintedDrawingType* base = nodes[i];
				if(base->id() == atoi(fair.reference_locationId[j].c_str()))
				{
					fair.reference_locationA.push_back(base->Name());
					break;
				}
			}
		}
#endif
		//for(int i=0; i< fair.reference_locationId.size(); i++)
		//{
		//	fair.reference_locationA= utils.GetXpathResults(e, 
		//		CFairReports::StdStringFormat("//QIFDocument/Product/PartSet/Part/DefinitionExternal/PrintedDrawing/PrintedDrawing/DrawingNumber[id = '%s']",
		//		fair.reference_locationId[i].c_str()));
		//}
		//fair.reference_locationB= utils.GetXpathResults(e, "//QIFDocument/Characteristics/CharacteristicItems/CharacteristicItem/LocationOnDrawing/SheetNumber");
		//fair.reference_locationC= utils.GetXpathResults(e, "//QIFDocument/Characteristics/CharacteristicItems/CharacteristicItem/LocationOnDrawing/DrawingZone");


		//for(size_t j=0; j< fair.char_info.size(); j++)
		//{
		//	for(size_t i=0; i< nodes.size(); i++)
		//	{
		//		int id = fair.char_info[j].designed_toolingId;
		//		xsd::qif2::PrintedDrawingType* base = nodes[i];
		//		if(base->id() == id)
		//		{
		//			fair.char_info[j].designed_tooling = base->Name();
		//			break;
		//		}
		//	}
		//}

#if 0
		for (::xsd::cxx::tree::sequence< PartType >::iterator it=qif->Product()->PartSet()->Part().begin (); 
			it != qif->Product()->PartSet()->Part().end ();
			++it)
		{
			std::string product_name = *((*it).Name());
			std::string additional_changes= *((*it).DefinitionExternal()->PrintedDrawing().begin()->AdditionalChanges());
			std::string part_revision_level= *((*it).Version());
			std::string drawing_revision_level=*((*it).DefinitionExternal()->PrintedDrawing().begin()->Version());
			
			//std::string serial_number= *( qif->MeasurementsResults()->ActualComponentSet().begin()->ActualComponent().begin()->SerialNumber());
			std::string serial_number= *( qif->MeasurementsResults()->ActualComponentSet().at(0).ActualComponent().at(0).SerialNumber());
			std::string prepared_by= qif->MeasurementsResults()->InspectionTraceability()->ReportPreparer()->Name();
			std::string prepared_date= GetStrDateTimestamp(qif->MeasurementsResults()->InspectionTraceability()->ReportPreparationDate());
			std::string organization_name = qif->PreInspectionTraceability()->InspectingOrganization()->Name();

			std::string ponumber = *qif->PreInspectionTraceability()->PurchaseOrderNumber(); // optional
			std::string suppliercode = *qif->PreInspectionTraceability()->SupplierCode();  // optional


			SAFESTORE(product_name,*((*it).Name()), "");
			SAFESTORE(additional_changes,*((*it).DefinitionExternal()->PrintedDrawing().begin()->AdditionalChanges()), "");
			SAFESTORE(part_revision_level,*((*it).Version()), "");

			SAFESTORE(prepared_by,qif->MeasurementsResults()->InspectionTraceability()->ReportPreparer()->Name(), "");
			SAFESTORE(prepared_date,GetStrDateTimestamp(qif->MeasurementsResults()->InspectionTraceability()->ReportPreparationDate()), "");
			SAFESTORE(organization_name,qif->PreInspectionTraceability()->InspectingOrganization()->Name(), "");
			SAFESTORE(ponumber,*qif->PreInspectionTraceability()->PurchaseOrderNumber(), "");
			SAFESTORE(suppliercode, *qif->PreInspectionTraceability()->SupplierCode(), "");
		}
#endif

		//// Form 1
		//// 
		//fair.part_numbers = utils.GetXpathResults(e, "//QIFDocument/Product/PartSet/Part/ModelNumber");
		//fair.part_names = utils.GetXpathResults(e, "//QIFDocument/Product/PartSet/Part/Name");
		//fair.serial_numbers = utils.GetXpathResults(e, "//QIFDocument/MeasurementsResults/ActualComponentSet/ActualComponent/SerialNumber");
		//fair.FAI_report_numbers = utils.GetXpathResults(e, "//QIFDocument/PreInspectionTraceability/ReportNumber");
		//
		//fair.part_revisions= utils.GetXpathResults(e, "//QIFDocument/Product/PartSet/Part/Version");
		//fair.drawing_numbers= utils.GetXpathResults(e, "//QIFDocument/Product/PartSet/Part/DefinitionExternal/PrintedDrawing/DrawingNumber");
		//fair.drawing_revisions= utils.GetXpathResults(e, "//QIFDocument/Product/PartSet/Part/DefinitionExternal/PrintedDrawing/Version");
		//fair.additional_changes= utils.GetXpathResults(e, "//QIFDocument/Product/PartSet/Part/DefinitionExternal/PrintedDrawing/AdditionalChanges");
		//
		//fair.organization_names= utils.GetXpathResults(e, "//QIFDocument/PreInspectionTraceability/InspectingOrganization/Name");
		//fair.supplier_codes= utils.GetXpathResults(e, "//QIFDocument/PreInspectionTraceability/SupplierCode");
		//fair.po_numbers= utils.GetXpathResults(e, "//QIFDocument/PreInspectionTraceability/PurchaseOrderNumber");
		//
		//fair.detail_fai= utils.GetXpathResults(e, "//QIFDocument/PreInspectionTraceability/InspectionScope");
		//fair.full_fai= utils.GetXpathResults(e, "//QIFDocument/PreInspectionTraceability/InspectionMode");

		//std::string report1 = fair.Form1();
		/////////////////////////////////////////////////////////////////////////////////////////////////
		//// FAIR Form 3 new additions - generally arrays of values - array size *should* match but doesnt
		/////////////////////////////////////////////////////////////////////////////////////////////////

		//// Get all the XML nodes to help fill out form
		////
		//std::vector<xsd::qif2::CharacteristicItemBaseType*> cis=   utils.GetXpathAsStructs<xsd::qif2::CharacteristicItemBaseType>(e, "//QIFDocument/Characteristics/CharacteristicItems/*");

		//for(size_t k=0; k< cis.size(); k++)
		//{
		//	CFairReports::CharacteristicInfo ci;
		//	std::string tooling_id;
		//	std::string ci_id;
		//	SAFESTORE(ci.Name,cis[k]->Name(),"");
		//	SAFESTORE(ci.characteristic_designator,*(cis[k]->KeyCharacteristic()->Criticality()),"");
		//	SAFESTORE(ci.sheet_number,*(cis[k]->LocationOnDrawing()->SheetNumber()),"");
		//	SAFESTORE(ci.drawing_zone,*(cis[k]->LocationOnDrawing()->DrawingZone()),"");

		//	SAFESTORE(ci_id,cis[k]->id(),"");
		//	ci.id = GetIdFromString(ci_id);

		//	ci.optional= utils.GetElementName(static_cast<DOMElement*> ((*cis[k])._node ()));
		//	ci.optional=ci.optional.substr(0,ci.optional.find("CharacteristicItem"));

		//	SAFESTORE(tooling_id, *(cis[k]->LocationOnDrawing()->DrawingId()), "-1");
		//	ci.designed_toolingId= GetIdFromString(tooling_id); // atoi(tooling_id.c_str());

		//	int num;
		//	SAFESTORE(num,cis[k]->MeasurementDeviceIds()->Id().size(),0);  // in case no device specified, catch exception

		//	for(size_t m=0; m < num; m++)
		//	{
		//		std::string id;
		//		SAFESTORE(id,cis[k]->MeasurementDeviceIds()->Id().at(m),"-1");
		//		ci.measurement_ids.push_back(GetIdFromString(id));
		//	}
		//	
		//	fair.char_info.push_back(ci);
		//}

		//// MeasurementDevice lookup id and then get associatd name, save in devicemap
		////
		//std::vector<xsd::qif2::MeasurementDeviceType*> devices= utils.GetXpathAsStructs<xsd::qif2::MeasurementDeviceType>(e, "//QIFDocument/MeasurementResources/MeasurementDevices/MeasurementDevice");
		//std::map<int, std::string> devicemap;
		//for(size_t i=0; i< devices.size(); i++)
		//{
		//	std::string device_name;
		//	std::string device_id;
		//	SAFESTORE(device_name, devices[i]->Name(), "Unknown");
		//	SAFESTORE(device_id, devices[i]->id(), "-1");
		//	devicemap[GetIdFromString(device_id)]=device_name;
		//}

		//// now resolve form 3 MeasurementDevice Id to measurement name
		////
		//for(size_t j=0; j< fair.char_info.size(); j++)
		//{
		//	for(size_t k=0; k< fair.char_info[j].measurement_ids.size(); k++)
		//		fair.char_info[j].measurement_names.push_back(devicemap[fair.char_info[j].measurement_ids[k]]); // blank string if no match
		//}

		//// Get all printed drawing id accompanied with name, save in printmap
		////
		//std::vector<xsd::qif2::PrintedDrawingType*> nodes= utils.GetXpathAsStructs<xsd::qif2::PrintedDrawingType>(e, "//QIFDocument/Product/PartSet/Part/DefinitionExternal/PrintedDrawing");
		//std::map<int, std::string> printmap;
		//for(size_t i=0; i< nodes.size(); i++)
		//{
		//	std::string print_name;
		//	std::string print_id;
		//	SAFESTORE(print_name, nodes[i]->Name(), "Unknown");
		//	SAFESTORE(print_id, nodes[i]->id(), "-1");
		//	printmap[GetIdFromString(print_id)]=print_name;
		//}

		//// now resolve form 3 PrintDrawing Id to PrintDrawing name
		////
		//for(size_t j=0; j< fair.char_info.size(); j++)
		//{
		//	fair.char_info[j].print_drawing_name=printmap[fair.char_info[j].designed_toolingId]; // blank string if no match
		//}

		//// These are single value arrays in form 3
		////
		//fair.prepared_by= utils.GetXpathResults(e, "//QIFDocument/MeasurementsResults/InspectionTraceability/ReportPreparer/Name");
		//fair.date= utils.GetXpathResults(e, "//QIFDocument/MeasurementsResults/InspectionTraceability/ReportPreparationDate");


		//std::vector<xsd::qif2::CharacteristicActualBaseType*> actuals=   utils.GetXpathAsStructs<xsd::qif2::CharacteristicActualBaseType>(e, "//QIFDocument/MeasurementsResults/MeasurementResults/MeasuredCharacteristics/CharacteristicActuals/*");
		//for(size_t i=0; i< actuals.size(); i++)
		//{
		//	std::string result, non_conformance_number;
		//	SAFESTORE(result, *(actuals[i]->Status().CharacteristicStatusEnum()), "");
		//	fair.results.push_back(result);
		//	SAFESTORE(non_conformance_number, *(actuals[i]->NonConformanceDesignator()), "");
		//	fair.non_conformance_number.push_back(non_conformance_number);
		//}

		//// Characteristic items better match Characteristic actual measurements
		////
		//// fair.results.size() == cis.size();
		//// Requirements need information from Characteristic Definitions
		////
		//std::vector<xsd::qif2::DatumReferenceFrameType*> datum=   utils.GetXpathAsStructs<xsd::qif2::DatumReferenceFrameType>(e, "//QIFDocument/DatumReferenceFrames/*");
		//for(size_t i=0; i< datum.size(); i++)
		//{
		//	CFairReports::DatumReferenceFrameInfo datum_definition;

		//	std::string id;
		//	SAFESTORE(id, datum[i]->id(), "-1");
		//	datum_definition.id = GetIdFromString(id);

		//	std::vector<std::string> excludes;
		//	excludes.push_back("DatumDefinitionId");
		//	datum_definition.requirements+=utils.GetSubElementValues(static_cast<DOMElement*> ((*datum[i])._node ()), excludes);

		//	fair.datum_info[datum_definition.id]=datum_definition;
		//}
		//// Requirements need information from Characteristic Definitions
		////
		//std::vector<xsd::qif2::CharacteristicDefinitionBaseType*> definitions=   utils.GetXpathAsStructs<xsd::qif2::CharacteristicDefinitionBaseType>(e, "//QIFDocument/Characteristics/CharacteristicDefinitions/*");
		//for(size_t i=0; i< definitions.size(); i++)
		//{
		//	CFairReports::CharacteristicDefinitionInfo char_definition;
		//	char_definition.pCharacteristicDefintionBaseDefinition= (void * ) definitions[i];

		//	std::string id;
		//	SAFESTORE(id, definitions[i]->id(), "-1");
		//	char_definition.id = GetIdFromString(id);

		//	DOMElement* elem;
		//	if(elem=utils.FindChildElementName(static_cast<DOMElement*> ((*definitions[i])._node ()) , "DatumReferenceFrameId") ) 
		//	{
		//		std::string datumId = utils.GetElementValue(elem);
		//		char_definition.DeviceDatumRefId=atoi(datumId.c_str());
		//		char_definition.requirements+=fair.datum_info[char_definition.DeviceDatumRefId].requirements;
		//	}

		//	std::vector<std::string> excludes;
		//	excludes.push_back("DatumReferenceFrameId");
		//	char_definition.requirements+=utils.GetSubElementValues(static_cast<DOMElement*> ((*definitions[i])._node ()), excludes);

		//	fair.chardef_info[char_definition.id]=char_definition;

		//}

		//// Requirements are based on the Characteristic Nominals
		////
		//std::vector<xsd::qif2::CharacteristicNominalBaseType*> nominals=   utils.GetXpathAsStructs<xsd::qif2::CharacteristicNominalBaseType>(e, "//QIFDocument/Characteristics/CharacteristicNominals/*");
		//for(size_t i=0; i< nominals.size(); i++)
		//{
		//	CFairReports::CharacteristicNominalInfo char_nominal;

		//	std::string id;
		//	SAFESTORE(id, nominals[i]->id(), "-1");
		//	char_nominal.id = GetIdFromString(id);
		//	
		//	std::string definition_id;
		//	SAFESTORE(definition_id, nominals[i]->CharacteristicDefinitionId(), "-1");
		//	char_nominal.CharacteristicDefinitionId = GetIdFromString(definition_id);

		//	nominals[i]-> baseCharacteristicDefinitionType=(CharacteristicDefinitionBaseType*) fair.chardef_info[char_nominal.CharacteristicDefinitionId].pCharacteristicDefintionBaseDefinition;

		//	char_nominal.requirements=fair.chardef_info[char_nominal.CharacteristicDefinitionId].requirements;

		//	std::vector<std::string> excludes;
		//	excludes.push_back("CharacteristicDefinitionId");
		//	char_nominal.requirements+=utils.GetSubElementValues(static_cast<DOMElement*> ((*nominals[i])._node ()), excludes);

		//	fair.charnom_info.push_back(char_nominal);
		//}
		//std::string report3 = fair.Form3();
std::string CXercesUtils::GenerateFAIRRepor1(DOMElement* e ) 
{
	try
	{
		// Form 1
		// 
		fair.part_numbers = GetXpathResults(e, "//QIFDocument/Product/PartSet/Part/ModelNumber");
		fair.part_names = GetXpathResults(e, "//QIFDocument/Product/PartSet/Part/Name");
		fair.serial_numbers = GetXpathResults(e, "//QIFDocument/MeasurementsResults/ActualComponentSet/ActualComponent/SerialNumber");
		fair.FAI_report_numbers = GetXpathResults(e, "//QIFDocument/PreInspectionTraceability/ReportNumber");

		fair.part_revisions= GetXpathResults(e, "//QIFDocument/Product/PartSet/Part/Version");
		fair.drawing_numbers= GetXpathResults(e, "//QIFDocument/Product/PartSet/Part/DefinitionExternal/PrintedDrawing/DrawingNumber");
		fair.drawing_revisions= GetXpathResults(e, "//QIFDocument/Product/PartSet/Part/DefinitionExternal/PrintedDrawing/Version");
		fair.additional_changes= GetXpathResults(e, "//QIFDocument/Product/PartSet/Part/DefinitionExternal/PrintedDrawing/AdditionalChanges");

		fair.organization_names= GetXpathResults(e, "//QIFDocument/PreInspectionTraceability/InspectingOrganization/Name");
		fair.supplier_codes= GetXpathResults(e, "//QIFDocument/PreInspectionTraceability/SupplierCode");
		fair.po_numbers= GetXpathResults(e, "//QIFDocument/PreInspectionTraceability/PurchaseOrderNumber");

		fair.detail_fai= GetXpathResults(e, "//QIFDocument/PreInspectionTraceability/InspectionScope");
		fair.full_fai= GetXpathResults(e, "//QIFDocument/PreInspectionTraceability/InspectionMode");

		return fair.Form1();
		//fair.SaveReport(CFairReports::ExeDirectory()+ "FairReport1.html", report1);
	}
	catch (const xml_schema::exception& e)
	{
		//OutputDebugString(e.what());
		cerr << e << endl;
	}
	catch (...)
	{
		XERCES_STD_QUALIFIER cerr << "An error occurred prarsing/creating the document" << XERCES_STD_QUALIFIER endl;
	}	
	return "";
}

std::string CXercesUtils::GenerateFAIRRepor3(DOMElement* e ) 
{
	///////////////////////////////////////////////////////////////////////////////////////////////
	// FAIR Form 3 new additions - generally arrays of values - array size *should* match but doesnt
	///////////////////////////////////////////////////////////////////////////////////////////////

	try 
	{
		// Get all the XML nodes to help fill out form
		//
		std::vector<xsd::qif2::CharacteristicItemBaseType*> cis=   GetXpathAsStructs<xsd::qif2::CharacteristicItemBaseType>(e, "//QIFDocument/Characteristics/CharacteristicItems/*");

		for(size_t k=0; k< cis.size(); k++)
		{
			CFairReports::CharacteristicInfo ci;
			std::string tooling_id;
			std::string ci_id;
			SAFESTORE(ci.Name,cis[k]->Name(),"");
			SAFESTORE(ci.characteristic_designator,*(cis[k]->KeyCharacteristic()->Criticality()),"");
			SAFESTORE(ci.sheet_number,*(cis[k]->LocationOnDrawing()->SheetNumber()),"");
			SAFESTORE(ci.drawing_zone,*(cis[k]->LocationOnDrawing()->DrawingZone()),"");

			SAFESTORE(ci_id,cis[k]->id(),"");
			ci.id = GetIdFromString(ci_id);

			ci.optional= GetElementName(static_cast<DOMElement*> ((*cis[k])._node ()));
			ci.optional=ci.optional.substr(0,ci.optional.find("CharacteristicItem"));

			SAFESTORE(tooling_id, *(cis[k]->LocationOnDrawing()->DrawingId()), "-1");
			ci.designed_toolingId= GetIdFromString(tooling_id); // atoi(tooling_id.c_str());

			int num;
			SAFESTORE(num,cis[k]->MeasurementDeviceIds()->Id().size(),0);  // in case no device specified, catch exception

			for(size_t m=0; m < num; m++)
			{
				std::string id;
				SAFESTORE(id,cis[k]->MeasurementDeviceIds()->Id().at(m),"-1");
				ci.measurement_ids.push_back(GetIdFromString(id));
			}

			fair.char_info.push_back(ci);
		}

		// MeasurementDevice lookup id and then get associatd name, save in devicemap
		//
		std::vector<xsd::qif2::MeasurementDeviceType*> devices= GetXpathAsStructs<xsd::qif2::MeasurementDeviceType>(e, "//QIFDocument/MeasurementResources/MeasurementDevices/MeasurementDevice");
		std::map<int, std::string> devicemap;
		for(size_t i=0; i< devices.size(); i++)
		{
			std::string device_name;
			std::string device_id;
			SAFESTORE(device_name, devices[i]->Name(), "Unknown");
			SAFESTORE(device_id, devices[i]->id(), "-1");
			devicemap[GetIdFromString(device_id)]=device_name;
		}

		// now resolve form 3 MeasurementDevice Id to measurement name
		//
		for(size_t j=0; j< fair.char_info.size(); j++)
		{
			for(size_t k=0; k< fair.char_info[j].measurement_ids.size(); k++)
				fair.char_info[j].measurement_names.push_back(devicemap[fair.char_info[j].measurement_ids[k]]); // blank string if no match
		}

		// Get all printed drawing id accompanied with name, save in printmap
		//
		std::vector<xsd::qif2::PrintedDrawingType*> nodes= GetXpathAsStructs<xsd::qif2::PrintedDrawingType>(e, "//QIFDocument/Product/PartSet/Part/DefinitionExternal/PrintedDrawing");
		std::map<int, std::string> printmap;
		for(size_t i=0; i< nodes.size(); i++)
		{
			std::string print_name;
			std::string print_id;
			SAFESTORE(print_name, nodes[i]->Name(), "Unknown");
			SAFESTORE(print_id, nodes[i]->id(), "-1");
			printmap[GetIdFromString(print_id)]=print_name;
		}

		// now resolve form 3 PrintDrawing Id to PrintDrawing name
		//
		for(size_t j=0; j< fair.char_info.size(); j++)
		{
			fair.char_info[j].print_drawing_name=printmap[fair.char_info[j].designed_toolingId]; // blank string if no match
		}

		// These are single value arrays in form 3
		//
		fair.prepared_by= GetXpathResults(e, "//QIFDocument/MeasurementsResults/InspectionTraceability/ReportPreparer/Name");
		fair.date= GetXpathResults(e, "//QIFDocument/MeasurementsResults/InspectionTraceability/ReportPreparationDate");


		std::vector<xsd::qif2::CharacteristicActualBaseType*> actuals=   GetXpathAsStructs<xsd::qif2::CharacteristicActualBaseType>(e, "//QIFDocument/MeasurementsResults/MeasurementResults/MeasuredCharacteristics/CharacteristicActuals/*");
		for(size_t i=0; i< actuals.size(); i++)
		{
			std::string result, non_conformance_number;
			SAFESTORE(result, *(actuals[i]->Status().CharacteristicStatusEnum()), "");
			fair.results.push_back(result);
			SAFESTORE(non_conformance_number, *(actuals[i]->NonConformanceDesignator()), "");
			fair.non_conformance_number.push_back(non_conformance_number);
		}

		// Characteristic items better match Characteristic actual measurements
		//
		// fair.results.size() == cis.size();
		// Requirements need information from Characteristic Definitions
		//
		std::vector<xsd::qif2::DatumReferenceFrameType*> datum=   GetXpathAsStructs<xsd::qif2::DatumReferenceFrameType>(e, "//QIFDocument/DatumReferenceFrames/*");
		for(size_t i=0; i< datum.size(); i++)
		{
			CFairReports::DatumReferenceFrameInfo datum_definition;

			std::string id;
			SAFESTORE(id, datum[i]->id(), "-1");
			datum_definition.id = GetIdFromString(id);

			std::vector<std::string> excludes;
			excludes.push_back("DatumDefinitionId");
			datum_definition.requirements+=GetSubElementValues(static_cast<DOMElement*> ((*datum[i])._node ()), excludes);

			fair.datum_info[datum_definition.id]=datum_definition;
		}
		// Requirements need information from Characteristic Definitions
		//
		std::vector<xsd::qif2::CharacteristicDefinitionBaseType*> definitions=   GetXpathAsStructs<xsd::qif2::CharacteristicDefinitionBaseType>(e, "//QIFDocument/Characteristics/CharacteristicDefinitions/*");
		for(size_t i=0; i< definitions.size(); i++)
		{
			CFairReports::CharacteristicDefinitionInfo char_definition;
			char_definition.pCharacteristicDefinitionBaseType= (void * ) definitions[i];

			std::string id;
			SAFESTORE(id, definitions[i]->id(), "-1");
			char_definition.id = GetIdFromString(id);

			DOMElement* elem;
			if(elem=FindChildElementName(static_cast<DOMElement*> ((*definitions[i])._node ()) , "DatumReferenceFrameId") ) 
			{
				std::string datumId = GetElementValue(elem);
				char_definition.DeviceDatumRefId=atoi(datumId.c_str());
				char_definition.requirements+=fair.datum_info[char_definition.DeviceDatumRefId].requirements;
			}

			std::vector<std::string> excludes;
			excludes.push_back("DatumReferenceFrameId");
			char_definition.requirements+=GetSubElementValues(static_cast<DOMElement*> ((*definitions[i])._node ()), excludes);

			fair.chardef_info[char_definition.id]=char_definition;

		}

		// Requirements are based on the Characteristic Nominals
		//
		std::vector<xsd::qif2::CharacteristicNominalBaseType*> nominals=   GetXpathAsStructs<xsd::qif2::CharacteristicNominalBaseType>(e, "//QIFDocument/Characteristics/CharacteristicNominals/*");
		for(size_t i=0; i< nominals.size(); i++)
		{
			CFairReports::CharacteristicNominalInfo char_nominal;

			std::string id;
			SAFESTORE(id, nominals[i]->id(), "-1");
			char_nominal.id = GetIdFromString(id);

			std::string definition_id;
			SAFESTORE(definition_id, nominals[i]->CharacteristicDefinitionId(), "-1");
			char_nominal.CharacteristicDefinitionId = GetIdFromString(definition_id);

			char_nominal.pBaseCharacteristicDefinitionType=(CharacteristicDefinitionBaseType*) fair.chardef_info[char_nominal.CharacteristicDefinitionId].pCharacteristicDefinitionBaseType;

			char_nominal.requirements=fair.chardef_info[char_nominal.CharacteristicDefinitionId].requirements;

			std::vector<std::string> excludes;
			excludes.push_back("CharacteristicDefinitionId");
			char_nominal.requirements+=GetSubElementValues(static_cast<DOMElement*> ((*nominals[i])._node ()), excludes);

			fair.charnom_info.push_back(char_nominal);
		}
		return  fair.Form3();
	}
	catch (const xml_schema::exception& e)
	{
		//OutputDebugString(e.what());
		cerr << e << endl;
	}
	catch (...)
	{
		XERCES_STD_QUALIFIER cerr << "An error occurred prarsing/creating the document" << XERCES_STD_QUALIFIER endl;
	}	
	return "";
}


#if 0
		if(var->TypeName() == "AttributesType")
		{
			XSComplexTypeDefinition * 	 typeDefinition = (XSComplexTypeDefinition * ) xsElement->getTypeDefinition () ;
			XSAttributeUseList * 	attrs = typeDefinition->getAttributeUses ();
			for( XMLSize_t k=0; k< attrs->size(); k++)
			{
				ISymbol attr;
				XSAttributeUse* attrUse = attrs->elementAt(k);
				XSAttributeDeclaration * attrdecl= attrUse->getAttrDeclaration();
#if 0
				// AttributesType
				XSComplexTypeDefinition * type = attrdecl->getEnclosingCTDefinition	( 		 ) ;
				attr.Name() = (type->getName()!=NULL)? StrX(type->getName()).localForm() : "";
#endif

	std::string CreateSqlInheritance(std::string name, StringVector baseincludes, std::string baseparent);


std::string SymbolTable::CreateSqlInheritance(std::string name, StringVector baseincludes, std::string baseparent)
{
	std::string tmp; 
	std::string text;
	IXmlNodePtr def = FindTypeNode(baseparent);
	std::map<std::string, std::vector<IXmlNodePtr>> tree;
	std::vector<std::string> supers, hierarchy, enums;
	if(def == NULL)
		return NULL;
	supers.push_back(baseparent);
	while(supers.size() > 0)
	{
		std::string basename = supers.front();
		IXmlNodePtr def = FindTypeNode(basename);
		supers.erase(supers.begin());

		//
		// Check to see if already visited this supertype defintioin
		if(find(enums.begin(), enums.end(), basename) != enums.end())
			continue; 
		if(def==NULL)
			continue;

		hierarchy.push_back(basename);
		enums.push_back(basename);  // complete list of enumerations of base type
		for(size_t i=0; i<def->SuperTypes().size(); i++)
		{
			std::string supername = def->SuperTypes().at(i);
			IXmlNodePtr super = FindTypeNode(supername);
			if(super!=NULL) tree[def->Name()].push_back(super);
			if(super->DerivedType()() ==  XercesAdditions::DERIVATION_EXTENSION)
			{
				std::vector<std::string>::iterator it = std::find(hierarchy.begin(), hierarchy.end(), basename);
				if(it!=hierarchy.end()) 
					hierarchy.erase(it);
			}
			supers.push_back(supername);
		}
	}

	for(size_t i=0; i< hierarchy.size(); i++)
		Aliases()[hierarchy[i]] = baseparent;

	def = FindTypeNode(baseparent);
	if(def.get() == NULL)
	{
		DEBUGBREAK();
	}

	// Need type definition for enumeration field
	tmp+=StrFormat("CREATE TYPE %sEnum AS ENUM (", name.c_str());
	for(size_t i=0; i< enums.size(); i++)
	{
		if(i>0) tmp+=',';
		tmp+=StrFormat("'%s'", enums[i].c_str());
	}
	tmp+=");\n";
		  
	std::string baseparentname = ReplaceOnce(baseparent, "Type", "");
	tmp+=StrFormat("DROP TABLE IF EXISTS %s;\n", baseparentname.c_str());
	tmp+=StrFormat("CREATE TABLE %s (\n", baseparentname.c_str());

	tmp+="\tindex  SERIAL PRIMARY KEY,\n";
	tmp+=StrFormat("\t_%sEnum %sEnum NOT NULL,\n", baseparentname.c_str(), name.c_str());

	for(size_t k=0; k< def->Attributes().size(); k++)
	{
		ISymbol& symbol = def->Attributes().at(k);
		std::string comment = "-- attribute";
		text+=StrFormat("\t%s %s%s,%s\n", 
			symbol.Name().c_str(), 
			ConvertXsd2SqlDataType(symbol.TypeName(), NULL).c_str(),
			(!def->Attributes().at(k).Required())? " NOT NULL" : "", 
			comment.c_str());
	}
	std::string constraints,  keys;
	for(size_t i=0; i< hierarchy.size(); i++)
	{
		IXmlNodePtr superclass = FindTypeNode(hierarchy[i]);
		if(superclass!=NULL)
			CreateSQLField(superclass.get(), text, keys, constraints);
	}
	std::vector<std::string> lines = Tokenize(text,"\n");
	std::sort(lines.begin(), lines.end());
	std::vector<std::string>::iterator it = std::unique(lines.begin(), lines.end());
	lines.resize( std::distance(lines.begin(),it) );

	for(size_t i=0; i< lines.size(); i++)
		tmp+=lines[i] + "\n";
	tmp+=") ;\n\n";
	RemoveTrailingComma(tmp);
	return tmp;	
}


//		str+=sqlhandler.CreateSqlTablesFromOuterElements();
		//str+=parser._symbols.CreateSqlInheritance(
		//	"CMMAccuracyTestType", 
		//	StringVector(std::string("CMMAccuracyTestBaseType"), std::string("")), 
		//	"CMMAccuracyTestType");