//
// UnitTest3.cpp
//

// This software was developed by U.S. Government employees as part of
// their official duties and is not subject to copyright. No warranty implied 
// or intended.

/**
TEST3:
this tests an abstract type definition (which should not create a table) and a derivation


Errors:
1)   	_QIFReference integer  -- index into table QIFReferenceType 
No definition of _QIFReference table
2)  	_Description integer, -- index into table string 
 No table string since its a primitive?



 <xs:complexType name="MeasurementResourceBaseType" abstract="true">
    <xs:sequence>
      <xs:element name="Name"   type="xs:token">
      <xs:element name="Description"    type="xs:string"   minOccurs="0">
      <xs:element name="Manufacturer" type="xs:string"   minOccurs="0">
      <xs:element name="ModelNumber" type="xs:string"    minOccurs="0">
      <xs:element name="SerialNumber"   type="xs:string"   minOccurs="0">
      <xs:choice minOccurs="0">
        <xs:element name="LocationId" type="QIFReferenceFullType">
        <xs:element name="Location" type="LocationType"/>
      </xs:choice>
    </xs:sequence>
    <xs:attribute name="id"   type="QIFIdType" use="required">
    </xs:attribute>
  </xs:complexType>

  <xs:complexType name="FixtureType">
    <xs:complexContent>
      <xs:extension base="MeasurementResourceBaseType"/>
    </xs:complexContent>
  </xs:complexType>

    <xs:complexType name="FixturesType">
    <xs:sequence>
      <xs:element name="Fixture"     type="FixtureType"    maxOccurs="unbounded"/>
    </xs:sequence>
  </xs:complexType>
   <xs:complexType name="QIFReferenceFullType">
    <xs:complexContent>
      <xs:extension base="QIFReferenceType">
        <xs:attribute name="asmPath" type="QIFIdType">
      </xs:extension>
    </xs:complexContent>
  </xs:complexType>

  <xs:complexType name="QIFReferenceType">
    <xs:simpleContent>
      <xs:extension base="QIFIdType"/>
    </xs:simpleContent>
  </xs:complexType>

   <xs:simpleType name="QIFIdType">
    <xs:restriction base="xs:unsignedInt">
      <xs:pattern value="[1-9][0-9]*"/>
    </xs:restriction>
  </xs:simpleType>

  <xs:complexType name="LocationType">
    <xs:sequence>
      <xs:element name="LocationDescription"     type="xs:string"/>
      <xs:element name="Address"    type="PhysicalAddressType"    minOccurs="0"/>
    </xs:sequence>
    <xs:attribute name="id"  type="QIFIdType"   use="required"/>
  </xs:complexType>

 <xs:complexType name="PhysicalAddressType">
    <xs:sequence>
      <xs:element name="Description"      type="AddressDescriptionType"     minOccurs="0"/>
      <xs:element name="InternalLocation"     type="xs:token"       minOccurs="0"/>
      <xs:element name="StreetNumber"     type="xs:token"    minOccurs="0"/>
      <xs:element name="Street"      type="xs:token"       minOccurs="0"/>
      <xs:element name="PostalBox"    type="xs:token"     minOccurs="0"/>
      <xs:element name="Town"    type="xs:token"    minOccurs="0"/>
      <xs:element name="Region"  type="xs:token"    minOccurs="0"/>
      <xs:element name="PostalCode"   type="xs:token"    minOccurs="0"/>
      <xs:element name="Country"     type="xs:token"    minOccurs="0"/>
      <xs:element name="FacsimileNumber"   type="xs:token"   minOccurs="0"/>
      <xs:element name="TelephoneNumber"    type="xs:token"    minOccurs="0"/>
      <xs:element name="ElectronicMailAddress"     type="xs:token"    minOccurs="0"/>
      <xs:element name="TelexNumber"   type="xs:token"    minOccurs="0"/>
    </xs:sequence>
  </xs:complexType>
 <xs:complexType name="AddressDescriptionType">
    <xs:choice>
      <xs:element name="AddressDescriptionEnum"     type="AddressDescriptionEnumType"/>
       <xs:element name="OtherAddressDescription"   type="xs:string"/>
    </xs:choice>
  </xs:complexType>
  <xs:simpleType name="AddressDescriptionEnumType">
    <xs:restriction base="xs:NMTOKEN">
      <xs:enumeration value="DELIVERY"/>
      <xs:enumeration value="POSTAL"/>
      <xs:enumeration value="VISITOR"/>
      <xs:enumeration value="NOTDEFINED"/>
    </xs:restriction>
  </xs:simpleType>


*/

void UnitTest3(CXsdParser &parser)
{

	CFairReports fair;
	std::string str;
	CXmlAndSql sqlhandler(parser._symbols);
	parser._symbols.Clear();


	parser.BuildXsdTypes(StringVector(std::string("MeasurementResourceBaseType"), 
		std::string("FixtureType"), 
		std::string("FixturesType"), 
		std::string("QIFIdType"), 
		std::string("LocationType"), 
		std::string("QIFReferenceFullType"), 
		std::string("QIFReferenceType"),   // forgot this type definition :(
		std::string("PhysicalAddressType"), 
		std::string("AddressDescriptionType"), 
		std::string("AddressDescriptionEnumType"), 
		std::string())
		);
	parser.ResolveParentHierarchy();
	str+=sqlhandler.CreateSqlTablesFromAllTypes(StringVector ());
	//str+=sqlhandler.CreateSqlTablesFromTypes(StringVector (std::string("ActualAngularValueType"),std::string()));
	fair.SaveReport(CFairReports::ExeDirectory()+ "Test3.sql", str);
}

/**
output:
DROP TABLE IF EXISTS AddressDescription;
CREATE TABLE AddressDescription (
	index  SERIAL PRIMARY KEY,
	AddressDescriptionEnum AddressDescriptionEnumType, 
	OtherAddressDescription text  
) ;

DROP TABLE IF EXISTS Fixture;
CREATE TABLE Fixture (
	index  SERIAL PRIMARY KEY,
	id text,-- attribute
	Name text, 
	Description text, 
	Manufacturer text, 
	ModelNumber text, 
	SerialNumber text, 
	_LocationId integer, -- index into table QIFReferenceFullType 
	_Location integer  -- index into table LocationType 
) ;

DROP TABLE IF EXISTS Fixtures;
CREATE TABLE Fixtures (
	index  SERIAL PRIMARY KEY,
	__Fixture integer[]  -- index into table FixtureType 
) ;

DROP TABLE IF EXISTS Location;
CREATE TABLE Location (
	index  SERIAL PRIMARY KEY,
	id text,-- attribute
	LocationDescription text, 
	_Address integer  -- index into table PhysicalAddressType 
) ;

DROP TABLE IF EXISTS PhysicalAddress;
CREATE TABLE PhysicalAddress (
	index  SERIAL PRIMARY KEY,
	_Description integer, -- index into table string 
	InternalLocation text, 
	StreetNumber text, 
	Street text, 
	PostalBox text, 
	Town text, 
	Region text, 
	PostalCode text, 
	Country text, 
	FacsimileNumber text, 
	TelephoneNumber text, 
	ElectronicMailAddress text, 
	TelexNumber text  
) ;

DROP TABLE IF EXISTS QIFReferenceFull;
CREATE TABLE QIFReferenceFull (
	index  SERIAL PRIMARY KEY,
	asmPath text NOT NULL,-- attribute
	_QIFId integer   -- should this index into table "QIFReference"?
) ;

DROP TABLE IF EXISTS QIFReference;
CREATE TABLE QIFReference (
	index  SERIAL PRIMARY KEY,
	_QIFId integer 
) ;






*/
