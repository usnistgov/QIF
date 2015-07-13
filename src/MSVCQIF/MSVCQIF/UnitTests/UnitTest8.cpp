//
// UnitTest8.cpp
//

// This software was developed by U.S. Government employees as part of
// their official duties and is not subject to copyright. No warranty implied 
// or intended.


/**
This tests attribute groups.

The simpleContent element contains extensions or restrictions on a text-only complex type or on a simple type as content and contains no elements.
http://www.datypic.com/books/defxmlschema/examples.html
The complexContent element defines extensions or restrictions on a complex type that contains mixed content or elements only.


 <xs:complexType name="ActualPointType">
    <xs:simpleContent>
      <xs:extension base="PointType">
        <xs:attributeGroup ref="AttrActualPoint"/>
      </xs:extension>
    </xs:simpleContent>
  </xs:complexType>

  <xs:complexType name="PointType">
    <xs:simpleContent>
      <xs:extension base="PointSimpleType">
        <xs:attributeGroup ref="AttrPoint"/>
      </xs:extension>
    </xs:simpleContent>
  </xs:complexType>

   <xs:simpleType name="PointSimpleType">
     <xs:restriction base="ListDoubleType">
      <xs:length value="3"/>
    </xs:restriction>
  </xs:simpleType>

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
*/
void UnitTest8(CXsdParser &parser)
{
	CFairReports fair;
	std::string str;
	CXmlAndSql sqlhandler(parser._symbols);
	parser._symbols.Clear();

	parser.BuildXsdTypes(StringVector(
		std::string("ActualPointType"), 
		std::string("PointType"), 
		std::string("PointSimpleType"), 
		std::string("ListDoubleType"), 
		std::string())
		);

	str =  parser._symbols.DumpTypes(StringVector());
	fair.SaveReport(CFairReports::ExeDirectory()+ "UnitTests\\Types8.txt", str);

	parser.ResolveParentHierarchy();
	str=sqlhandler.CreateSqlTablesFromAllTypes(StringVector ());

	fair.SaveReport(CFairReports::ExeDirectory()+ "UnitTests\\Test8.sql", str);
}


/**

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
	Point DOUBLE PRECISION[3]  -- list of DOUBLE PRECISION 
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





*/