//
// UnitTest9.cpp
//

// This software was developed by U.S. Government employees as part of
// their official duties and is not subject to copyright. No warranty implied 
// or intended.


/**
  <xs:element name="EdgePointFeatureNominal"
    type="EdgePointFeatureNominalType"
    substitutionGroup="FeatureNominal"/>
  
<xs:complexType name="EdgePointFeatureNominalType">
<xs:complexContent>
      <xs:extension base="FeatureNominalBaseType">
        <xs:sequence>
          <xs:element name="Location" type="PointType"/>
           <xs:element name="Normal"   type="UnitVectorType">   
		   	<xs:element name="AdjacentNormal"  type="UnitVectorType"    minOccurs="0"/>
        </xs:sequence>
      </xs:extension>
    </xs:complexContent>
  </xs:complexType>
  
<xs:complexType name="CircleFeatureNominalType">
    <xs:complexContent>
      <xs:extension base="FeatureNominalBaseType">
        <xs:sequence>
          <xs:element name="Location" type="PointType">
          <xs:element name="Normal"  type="UnitVectorType">
        </xs:sequence>
      </xs:extension>
    </xs:complexContent>
  </xs:complexType>

 <xs:complexType name="PointType">
    <xs:simpleContent>
      <xs:extension base="PointSimpleType">
        <xs:attributeGroup ref="AttrPoint"/>
      </xs:extension>
    </xs:simpleContent>
  </xs:complexType>

 
*/
void UnitTest9(CXsdParser &parser)
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
Nothing shows up inserting into this table :(
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


    <EdgePointFeatureNominal id="8">
        <FeatureDefinitionId>7</FeatureDefinitionId>
        <Location>2460.7099609375 770.604614257813 944.993591308594</Location>
        <Normal>-0.735465884156759 -0.307902932144912 0.603560864882807</Normal>
        <AdjacentNormal>0.0411800179070265 -0.909449806293278 -0.413769568671133</AdjacentNormal>
      </EdgePointFeatureNominal>
INSERT INTO EdgePointFeatureNominal (id,AdjacentNormal,FeatureDefinitionId,Location,Normal) values ('8',0.0411800179070265 -0.909449806293278 -0.413769568671133,7,2460.7099609375 770.604614257813 944.993591308594,-0.735465884156759 -0.307902932144912 0.603560864882807);

	  <PointFeatureNominal id="18">
        <FeatureDefinitionId>17</FeatureDefinitionId>
        <Location>2466.72924804688 774.269897460938 945.002746582031</Location>
        <Normal>0.731520704665031 0.146124942551 -0.665976696146977</Normal>
      </PointFeatureNominal>
INSERT INTO PointFeatureNominal (id,FeatureDefinitionId,Location,Normal) values ('18',17,2466.72924804688 774.269897460938 945.002746582031,0.731520704665031 0.146124942551 -0.665976696146977);

      <PointFeatureNominal id="34">
        <FeatureDefinitionId>33</FeatureDefinitionId>
        <Location>2536.49487304688 782.806213378906 920.002197265625</Location>
        <Normal>-0.7609260410224 -0.648538030188332 -0.0197479997320212</Normal>
      </PointFeatureNominal>
INSERT INTO PointFeatureNominal (id,FeatureDefinitionId,Location,Normal) values ('34',33,2536.49487304688 782.806213378906 920.002197265625,-0.7609260410224 -0.648538030188332 -0.0197479997320212);

        <CircleFeatureNominal id="42">
        <FeatureDefinitionId>41</FeatureDefinitionId>
        <Location>0.0558150216639657 -0.907624351305543 -0.416056150385791</Location>
        <Normal>2433.974609375 800.617431640625 890.049621582031</Normal>
      </CircleFeatureNominal>

      <CircleFeatureNominal id="59">
        <FeatureDefinitionId>58</FeatureDefinitionId>
        <Location>0.0418550117439733 -0.909169210310978 -0.414318120547998</Location>
        <Normal>2496.25146484375 780.842590332031 938.272277832031</Normal>
      </CircleFeatureNominal>
      <CircleFeatureNominal id="75">
        <FeatureDefinitionId>74</FeatureDefinitionId>
        <Location>0.0418467877611875 -0.909189553580246 -0.414274307693132</Location>
        <Normal>2506.63672251543 792.999124488284 912.644676969086</Normal>
      </CircleFeatureNominal>
    </FeatureNominals>

INSERT INTO EdgePointFeatureNominal (id,AdjacentNormal,FeatureDefinitionId,Location,Normal) values ('8',0.0411800179070265 -0.909449806293278 -0.413769568671133,7,2460.7099609375 770.604614257813 944.993591308594,-0.735465884156759 -0.307902932144912 0.603560864882807);
INSERT INTO CircleFeatureNominal (id,FeatureDefinitionId,Location,Normal) values ('75',74,0.0418467877611875 -0.909189553580246 -0.414274307693132,2506.63672251543 792.999124488284 912.644676969086);
INSERT INTO CircleFeatureNominal (id,FeatureDefinitionId,Location,Normal) values ('59',58,0.0418550117439733 -0.909169210310978 -0.414318120547998,2496.25146484375 780.842590332031 938.272277832031);
INSERT INTO CircleFeatureNominal (id,FeatureDefinitionId,Location,Normal) values ('42',41,0.0558150216639657 -0.907624351305543 -0.416056150385791,2433.974609375 800.617431640625 890.049621582031);
INSERT INTO FeatureNominals (CircleFeatureNominal,EdgePointFeatureNominal,PointFeatureNominal) values ({1,2,3},{1},{1,2});

*/