//
// UnitTest9.cpp
//

// This software was developed by U.S. Government employees as part of
// their official duties and is not subject to copyright. No warranty implied 
// or intended.


/**
  <xs:complexType name="PartSetType">
    <xs:sequence>
      <xs:element ref="Part"   maxOccurs="unbounded"/>
     </xs:sequence>
    <xs:attribute name="N"  type="NaturalType"   use="required"/>
  </xs:complexType>  
  
  <xs:element name="Part"   type="PartType"/>

 <xs:complexType name="PartType">
     <xs:complexContent>
      <xs:extension base="ProductDefinitionBaseType">
        <xs:sequence>
          <xs:element name="DefinitionInternal" type="InternalPartAssemblyType"  minOccurs="0">
          <xs:element name="DefinitionExternal"  type="DefinitionExternalType"  minOccurs="0">
           <xs:element name="PartFamily"    type="PartFamilyType"     minOccurs="0">
        </xs:sequence>
      </xs:extension>
    </xs:complexContent>
  </xs:complexType>

 <xs:complexType name="ProductDefinitionBaseType" abstract="true">
    <xs:sequence>
      <xs:element ref="Attributes"  minOccurs="0">
      <xs:element name="Name"  type="xs:string"  minOccurs="0">
      <xs:element name="QPId"  type="QPIdType"  minOccurs="0">
      <xs:element name="ModelNumber"   type="xs:string"  minOccurs="0">
      <xs:element name="Description"    type="xs:string" minOccurs="0">
      <xs:element name="Version"    type="xs:string"  minOccurs="0">
      <xs:element name="Material"    type="xs:string"  minOccurs="0"
        maxOccurs="unbounded">
      <xs:element name="SecurityClassification"    type="SecurityClassificationType"   minOccurs="0">
      <xs:element name="ExportControlClassification"   type="xs:string"   minOccurs="0">
      <xs:element name="FeatureNominalIds" type="ArrayReferenceFullType"    minOccurs="0">
      <xs:element name="CharacteristicNominalIds"  type="ArrayReferenceFullType"   minOccurs="0">
      <xs:element name="NoteIds"   type="ArrayReferenceFullType"   minOccurs="0">
      <xs:element name="PartNoteIds"  type="ArrayReferenceFullType"  minOccurs="0">
      <xs:element name="DatumDefinitionIds"   type="ArrayReferenceFullType"  minOccurs="0">
      <xs:element name="DatumTargetDefinitionIds"     type="ArrayReferenceFullType"  minOccurs="0">
      <xs:element name="DatumReferenceFrameIds"   type="ArrayReferenceFullType"   minOccurs="0">
     </xs:sequence>
    <xs:attribute name="id" type="QIFIdType"   use="required">
    </xs:attribute>
  </xs:complexType>

  it is picking up global Part delement which is 1:1 definition.
  Instead want Part element with unbounded defined in PartSetType.
  Unfortunately, there is no outer element name for PartSetType
 DROP TABLE IF EXISTS PartSet;
CREATE TABLE PartSet (
	index  SERIAL PRIMARY KEY,
	N text,-- attribute
	_Part integer  -- index into table ElementReferenceType 
) ;

*/
void UnitTest9(CXsdParser &parser)
{
	CFairReports fair;
	std::string str;
	CXmlAndSql sqlhandler(parser._symbols);
	parser._symbols.Clear();

	parser.BuildXsdTypes(StringVector(

		std::string())
		);

	str =  parser._symbols.DumpTypes(StringVector());
	fair.SaveReport(CFairReports::ExeDirectory()+ "UnitTests\\Types10.txt", str);

	parser.ResolveParentHierarchy();
	str=sqlhandler.CreateSqlTablesFromAllTypes(StringVector ());

	fair.SaveReport(CFairReports::ExeDirectory()+ "UnitTests\\Test10.sql", str);
}


/**

DROP TABLE IF EXISTS PartSet;
CREATE TABLE PartSet (
	index  SERIAL PRIMARY KEY,
	N text,-- attribute
	_Part integer  -- index into table ElementReferenceType 
) ;

DROP TABLE IF EXISTS Part;
CREATE TABLE Part (
	index  SERIAL PRIMARY KEY,
	id text,-- attribute
	_Attributes integer, -- index into table AttributesType 
	Name text, 
	QPId text, 
	ModelNumber text, 
	Description text, 
	Version text, 
	Material text, 
	_SecurityClassification integer, -- index into table SecurityClassificationType 
	ExportControlClassification text, 
	_FeatureNominalIds integer, -- index into table ArrayReferenceFullType 
	_CharacteristicNominalIds integer, -- index into table ArrayReferenceFullType 
	_NoteIds integer, -- index into table ArrayReferenceFullType 
	_PartNoteIds integer, -- index into table ArrayReferenceFullType 
	_DatumDefinitionIds integer, -- index into table ArrayReferenceFullType 
	_DatumTargetDefinitionIds integer, -- index into table ArrayReferenceFullType 
	_DatumReferenceFrameIds integer, -- index into table ArrayReferenceFullType 
	_DefinitionInternal integer, -- index into table InternalPartAssemblyType 
	_DefinitionExternal integer, -- index into table DefinitionExternalType 
	_PartFamily integer  -- index into table PartFamilyType 
) ;

psql:C:/Users/michalos/Documents/GitHub/QIF/src/MSVCQIF/MSVCQIF/Win32/Debug/insert.sql:5: ERROR:  syntax error at or near "{"
LINE 1: INSERT INTO PartSet (N,Part) values ('1',{1});
LINE 1: INSERT INTO Product (AsmPaths,ComponentSet,PartSet) values (...

*/