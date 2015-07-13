//
// UnitTest5.cpp
//

// This software was developed by U.S. Government employees as part of
// their official duties and is not subject to copyright. No warranty implied 
// or intended.


/**
This tests attribute aggregation. Not sure its correct. 
Created a table for abstract type, and then indexed into it.


<xs:complexType name="AttributesType">
    <xs:sequence>
      <xs:element ref="Attribute"     maxOccurs="unbounded">
    </xs:sequence>
    <xs:attribute name="N"   type="NaturalType"   use="required"/>
  </xs:complexType>

<xs:element name="Attribute"   type="AttributeBaseType"/>

<xs:complexType name="AttributeBaseType"  abstract="true">
    <xs:attribute name="name"   type="xs:string"   use="required">
</xs:complexType>

 <xs:simpleType name="NaturalType">
    <xs:restriction base="xs:unsignedInt">
      <xs:minInclusive value="1"/>
    </xs:restriction>
  </xs:simpleType>

  <xs:element name="Attribute"  type="AttributeBaseType"/>
  <xs:element name="Attributes"  type="AttributesType"/>

*/
std::string UnitTest5Xml()
{
	std::string str = 		
"<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"no\" ?>\n"
"<QIFDocument xmlns=\"http://qifstandards.org/xsd/qif2\" idMax=\"86\" versionQIF=\"2.0.0\" \n"
"xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" \n"
"xsi:schemaLocation=\"http://qifstandards.org/xsd/qif2 ../QIFApplications/QIFDocument.xsd\">\n"
"  <Features>\n"
"    <FeatureItems>\n"
"      <EdgePointFeatureItem id=\"9\">\n"
"        <Attributes N=\"1\">\n"
"          <AttributeStr name=\"Comment\" value=\"An edge point with uniform profile characteristic\"/>\n"
"        </Attributes>\n"
"        <FeatureNominalId>8</FeatureNominalId>\n"
"        <FeatureName>TRIM1</FeatureName>\n"
"        <QPId>aeba4615-65db-4f7d-a2e8-a7928c80117f</QPId>\n"
"        <DeterminationMode>\n"
"          <Checked>\n"
"            <CheckDetails>\n"
"              <Measured/>\n"
"            </CheckDetails>\n"
"          </Checked>\n"
"        </DeterminationMode>\n"
"      </EdgePointFeatureItem>\n"
"    </FeatureItems>\n"
"  </Features>	  \n"
"</QIFDocument>\n";

return str;
}
void UnitTest5(CXsdParser &parser)
{
	CFairReports fair;
	std::string str;
	CXmlAndSql sqlhandler(parser._symbols);
	parser._symbols.Clear();

	parser.BuildXsdTypes(StringVector(
		std::string("NaturalType"), 
		std::string("AttributesType"), 
		std::string("AttributeBaseType"), 

		std::string("QIFDocumentType"), 
		std::string("VersionHistoryType"), 
		std::string("VersionType"), 
		std::string("QIFDocumentHeaderType"), 
		std::string("ApplicationType"), 
		std::string("AuthorType"), 
		std::string("PreInspectionTraceabilityType"), 
		std::string("OrganizationType"), 
		std::string("PhysicalAddressType"), 
		std::string("AddressDescriptionType"), 
		std::string("CustomerOrganizationType"), 
		std::string("ArrayReferenceType"), 
		std::string("QIFReferenceType"), 
		std::string("PartialInspectionType"), 
		std::string("NotableEventsType"), 
		std::string("NotableEventType"), 
		std::string("InspectionSoftwareItemsType"), 
		std::string("SoftwareType"), 
		std::string("InspectionProgramType"), 
		std::string("FileType"), 
		std::string("DigitalModelFormatType"), 
		std::string("FormalStandardType"), 
		std::string("EmployeeType"), 
		std::string("SecurityClassificationType"), 
		std::string("LocationType"), 
		std::string("QPIdFullReferenceType"), 
		std::string("FileUnitsType"), 
		std::string("PrimaryUnitsType"), 
		std::string("OtherUnitsType"), 
		std::string("UserDefinedUnitsType"), 
		std::string("AreaUnitType"), 
		std::string("UnitConversionType"), 
		std::string("AngularUnitType"), 
		std::string("ForceUnitType"), 
		std::string("LinearUnitType"), 
		std::string("MassUnitType"), 
		std::string("PressureUnitType"), 
		std::string("SpeedUnitType"), 
		std::string("TemperatureUnitType"), 
		std::string("TimeUnitType"), 

		std::string("DatumDefinitionsType"), 
		std::string("DatumDefinitionType"), 
		std::string("ArrayReferenceFullType"), 
		std::string("QIFReferenceFullType"), 
		std::string("DatumTargetDefinitionsType"), 
		std::string("TransformListType"), 
		std::string("CoordinateSystemListType"), 
		std::string("DatumReferenceFramesType"), 
		std::string("MeasurementResourcesType"), 
		std::string("ThreadSpecificationsType"), 
		std::string("ProductType"), 
		std::string("FeatureAspectsListsType"), 
		std::string("CharacteristicAspectsListsType"), 
		std::string("MeasurementPlanType"), 
		std::string("MeasurementsResultsType"), 
		std::string("StatisticsType"), 
		std::string("ManufacturingProcessTraceabilitiesType"), 
		std::string("QIFRulesType"), 
		std::string("UserDataXMLType"), 
		//=========================================================================
		// Insertion types needed
		std::string("FeatureItemsType"), 
		std::string("EdgePointFeatureItemType"), 

		std::string())
		);

	XSElementDeclaration * xsElement= parser.FindXsdElement("QIFDocument");
	parser.BuildXsdElement(xsElement);
	xsElement= parser.FindXsdElement("FeatureItems");
	parser.BuildXsdElement(xsElement);
	xsElement= parser.FindXsdElement("EdgePointFeatureItem");
	parser.BuildXsdElement(xsElement);



	parser.BuildSubstitutionGroupAliasing();
	parser.ResolveParentHierarchy();

	//str+=sqlhandler.CreateSqlTablesFromAllTypes(StringVector ());
	str+=sqlhandler.CreateSqlTablesFromTypes(StringVector (
		std::string("NaturalType"), 
		std::string("AttributesType"), 
		std::string("AttributeBaseType"), 
		std::string("QIFDocumentType"), 

		std::string()
		));
	//str+=sqlhandler.CreateSqlTablesFromTypes(StringVector (std::string("ActualAngularValueType"),std::string()));
	fair.SaveReport(CFairReports::ExeDirectory()+ "UnitTests\\Test5.sql", str);
}


/**
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



*/