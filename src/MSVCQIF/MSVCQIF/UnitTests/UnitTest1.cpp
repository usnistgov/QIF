//
// UnitTest1.cpp
//

// This software was developed by U.S. Government employees as part of
// their official duties and is not subject to copyright. No warranty implied 
// or intended.

/**
This test  examines primitive lists as defined in XSD by simple type and simple content.
  <xs:simpleType name="ListDoubleType">
    <xs:list itemType="xs:double"/>
  </xs:simpleType>

    <xs:simpleType name="PointSimpleType">
    <xs:restriction base="ListDoubleType">
      <xs:length value="3"/>
    </xs:restriction>
  </xs:simpleType>

    <xs:complexType name="PointType">
    <xs:simpleContent>
      <xs:extension base="PointSimpleType">
        <xs:attributeGroup ref="AttrPoint"/>
      </xs:extension>
    </xs:simpleContent>
  </xs:complexType>

   <xs:complexType name="PlaneType">
    <xs:sequence>
      <xs:element name="Point" type="PointType"/>
      <xs:element name="Normal"    type="UnitVectorType"/>
    </xs:sequence>
  </xs:complexType>

   <xs:simpleType name="UnitVectorSimpleType">
    <xs:restriction base="ListDoubleType">
      <xs:length value="3"/>
    </xs:restriction>
  </xs:simpleType>

  <xs:complexType name="UnitVectorType">
    <xs:simpleContent>
      <xs:extension base="UnitVectorSimpleType">
        <xs:attributeGroup ref="AttrPoint"/>
      </xs:extension>
    </xs:simpleContent>
  </xs:complexType>

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
*/

void UnitTest1(CXsdParser & parser)
{
	CFairReports fair;
	std::string str;
	CXmlAndSql sqlhandler(parser._symbols);
	parser._symbols.Clear();


	//parser.XsdParse(  "D:\\michalos\\My Work\\QIF\\xsd\\MSVC QIF_2.0_XMLSchemaFiles\\QIFApplications\\QIFDocument.xsd");
	parser.XsdParse(  "C:\\Users\\michalos\\Documents\\GitHub\\QIF\\xsd\\MSVC QIF_2.0_XMLSchemaFiles\\QIFApplications\\QIFDocument.xsd"); 
	//	CFairReports().ExeDirectory()+"XsdDump.txt");
	std::cout << "********** Building information from Schema **********" << "\n\n";
	parser.BuildXsdTypes(StringVector(std::string("ListDoubleType"), 
		std::string("PointSimpleType"),
		std::string("PointType"),
		std::string("PlaneType"),
		std::string("UnitVectorSimpleType"),
		std::string("UnitVectorType"),
		std::string())
		);
	parser.ResolveParentHierarchy();
	str+=sqlhandler.CreateSqlTablesFromAllTypes(StringVector ());
	fair.SaveReport(CFairReports::ExeDirectory()+ "Test1.sql", str);
}
#if 0

DROP TABLE IF EXISTS Plane;
CREATE TABLE Plane (
	index  SERIAL PRIMARY KEY,
	_Point integer, -- index into table PointType 
	_Normal integer  -- index into table UnitVectorType 
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
	PointSimple DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
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
	UnitVectorSimple DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
) ;




#endif