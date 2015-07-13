//
// UnitTest2.cpp
//

// This software was developed by U.S. Government employees as part of
// their official duties and is not subject to copyright. No warranty implied 
// or intended.

/**

This test examines the use of choice as a mechanism. The mapping is to include all choices as index to tables
and let the XML then provide the data defining the choice which is mapped into a SQL table and an index into this table is returned.

 <xs:complexType name="CMMGeometryType">
    <xs:choice>
      <xs:element name="CMMGeometryEnum" type="CMMGeometryEnumType">
      <xs:element name="OtherCMMGeometry"   type="xs:string">
    </xs:choice>
  </xs:complexType>
*/

void UnitTest2(CXsdParser &parser)
{
	CFairReports fair;
	std::string str;
	CXmlAndSql sqlhandler(parser._symbols);
	parser._symbols.Clear();


	parser.BuildXsdTypes(StringVector(std::string("CMMGeometryType"), 
		std::string("CMMGeometryEnumType"), 
		std::string())
		);
	parser.ResolveParentHierarchy();
	str+=sqlhandler.CreateSqlTablesFromAllTypes(StringVector ());
	fair.SaveReport(CFairReports::ExeDirectory()+ "Test2.sql", str);
}

/** Output
DROP TABLE IF EXISTS CMMGeometry;
CREATE TABLE CMMGeometry (
	index  SERIAL PRIMARY KEY,
	CMMGeometryEnum CMMGeometryEnumType, 
	OtherCMMGeometry text  
) ;


*/