//
// MSVCQIF.cpp : Defines the entry point for the console application.
//

//#include "stdafx.h"
#define WIN32_LEAN_AND_MEAN

#if defined(WIN64) && defined( _DEBUG) 
#pragma message( "DEBUG x64" )
#pragma comment(lib, "C:\\Program Files (x86)\\CodeSynthesis XSD 4.0\\lib64\\vc-10.0\\xerces-c_3D.lib")
//#pragma comment(lib, "D:\\Program Files\\CodeSynthesis XSD 4.0\\lib64\\vc-10.0\\xerces-c_3D.lib")

#elif !defined( _DEBUG) && defined(WIN64)
#pragma message( "RELEASE x64" )

#elif defined(_DEBUG) && defined(WIN32)
#pragma message( "DEBUG x32" )
#pragma comment(lib, "C:\\Program Files (x86)\\CodeSynthesis XSD 4.0\\lib\\vc-10.0\\xerces-c_3D.lib")
//#pragma comment(lib, "D:\\Program Files\\CodeSynthesis XSD 4.0\\lib\\vc-10.0\\xerces-c_3D.lib")
#elif !defined( _DEBUG) && defined(WIN32)
#pragma message( "RELEASE x32" )
#pragma comment(lib, "C:\\Program Files (x86)\\CodeSynthesis XSD 4.0\\lib\\vc-10.0\\xerces-c_3.lib")
//#pragma comment(lib, "D:\\Program Files\\CodeSynthesis XSD 4.0\\lib\\vc-10.0\\xerces-c_3.lib")
#endif 

#include <string>
#include <memory>   // std::auto_ptr
#include <cstring>  // std::memcpy
#include <iostream>
#include <map>
#include <fstream>
#include <string>
#include <iostream>
#include <sstream>

#include <xercesc/dom/DOM.hpp>
#include <xercesc/util/PlatformUtils.hpp>
#include <xercesc/sax2/SAX2XMLReader.hpp>
#include <xercesc/sax2/XMLReaderFactory.hpp>
#include <xercesc/framework/XMLGrammarPoolImpl.hpp>
#include <xercesc/framework/psvi/XSModel.hpp>
#include <xercesc/framework/psvi/XSElementDeclaration.hpp>
#include <xercesc/framework/psvi/XSTypeDefinition.hpp>
#include <xercesc/framework/psvi/XSSimpleTypeDefinition.hpp>
#include <xercesc/framework/psvi/XSComplexTypeDefinition.hpp>
#include <xercesc/framework/psvi/XSParticle.hpp>
#include <xercesc/framework/psvi/XSModelGroup.hpp>

// The following string class keeps us sane when working with Xerces.
// Include it after the generated header in order to get only char or
// wchar_t version depending on how you compiled your schemas.
//
#include <xsd/cxx/xml/string.hxx>
#include "QIFDocument.hxx"


#include "FairReports.h"
#include "XercesUtils.h"
#include "XsdParser.h"
#include "XmlAndSql.h"
#include <stdio.h>
#include <stdlib.h>
using std::cerr;
using std::endl;
using std::string;
using namespace xercesc;
using namespace xsd;
using namespace qif2;

#define SAFESTORE(X,Y,Z) \
	try { X=Y; } catch(...) { X=Z;}

#define SAFESTORE(X,Y,Z) \
	try { X=Y; } catch(...) { X=Z;}

std::string XsdDateToString( const xercesc::DOMElement& e)
{
	return  xsd::cxx::xml::transcode<char> (e.getTextContent ());
}
#include "linalg3d.h"
#include <algorithm> 
static std::string GetStrDateTimestamp(xsd::cxx::tree::optional<xsd::qif2::NotedEventType::TimeOccurred_type> & ts)
{
	std::stringstream s;
	ts.get();
	s << ts.get().year() << "/" << ts.get().month() << "/" << ts.get().day() << "T" << ts.get().hours()  << ":" << ts.get().minutes() << ":" << ts.get().seconds()<< "Z";
	return s.str();
}



template <typename T>
inline T& 
	CreateNode (DOMDocument* doc, const std::string& name,  T& x)
{
	xsd::cxx::xml::dom::auto_ptr<xercesc::DOMElement> e (
		doc->createElement(X(name.c_str())));
	*e << x;
	return x;
}

static int GetIdFromString(std::string str)
{
	int id=0;
	if(str.size() == 1)
		id=str[0];
	if(str.size() == 2)
	{
		char s[2] ;
		strncpy_s(s,2, str.c_str(),2);
		id=(int) s;
	}
	return id;
}
#if 0
#include "UnitTest1.cpp"
#include "UnitTest2.cpp"
#include "UnitTest3.cpp"
#include "UnitTest4.cpp"
#include "UnitTest5.cpp"
#include "UnitTest6.cpp"
#include "UnitTest8.cpp"
#include "OdbcArchiver.h"
#endif
int main(int argc, char* argv[])
{
	try
	{
		// First Article Inspection report (FAIR) report generation
		std::string str ;
		CFairReports fair;
		std::string path = ExtractDirectory( argv[0] )  ;
		std::vector<M::Vector> pts;
		pts.push_back(M::Vector( 5,3,0)); pts.push_back(M::Vector( 5,3,2)); pts.push_back(M::Vector( 5,3,5));
		str+=ToString(pts);
		str+="=======================\n";
		M::AddNoise(pts, -0.001, 0.001);
		str+=ToString(pts);
		fair.SaveReport(path+"\\Noise.txt", str);

		//LinearRegression3D(pts, c0, c1, c2);

		//str+=StrFormat("c0 = %f c1 = %f c2 = %f\n" , c0, c1, c2);
		//fair.SaveReport(path+"\\Linear.txt", str);
		//for(size_t i=0; i< pts.size(); i++)
		//{
		//	str+=StrFormat("%f %f %f \n", pts[i].x, pts[i].y, pts[i].z);
		//}

		//pts.push_back(M::Vector(1,1,5)); pts.push_back(M::Vector(3,3,5)); pts.push_back(M::Vector(5,5,5));
		//pts = M::CircleGenerator(500, 8.91, M::Vector(1,2,0)); 
		//std::vector<M::Vector> scaledpts= M::CircleScale(5.0/8.91, M::Vector(1,2,0),  pts);
		//for(size_t i=0; i< scaledpts.size(); i++)
		//{
		//	str+=StrFormat("%f %f %f \n", scaledpts[i].x, scaledpts[i].y, scaledpts[i].z);
		//}

		/*
		Run.bat:
		"C:\Program Files\PostgreSQL\9.4\bin\psql.exe" -dQIF -Upostgres -f"C:\Users\michalos\Documents\GitHub\QIF\src\MSVCQIF\MSVCQIF\Win32\Debug\QifSql.sql"
		pause
		*/

		OdbcArchiver db;
		XMLPlatformUtils::Initialize ();
		CXercesUtils utils;

		std::freopen((path+"debug.txt").c_str(), "w", stdout);

#if 1
		CXsdParser parser;
		CXmlAndSql sqlhandler(parser._symbols, db);
		std::cout << "********** Parsing XML File **********" << "\n";
		parser.XsdParse("C:\\Users\\michalos\\Documents\\GitHub\\QIF\\xsd\\MSVC QIF_2.0_XMLSchemaFiles\\QIFApplications\\QIFDocument.xsd"); 
		//parser.XsdParse(  "D:\\michalos\\My Work\\QIF\\xsd\\MSVC QIF_2.0_XMLSchemaFiles\\QIFApplications\\QIFDocument.xsd");

#if 0
		UnitTest1(parser);
		UnitTest2(parser);
		UnitTest3(parser);
		UnitTest4(parser);
		UnitTest5(parser);
		UnitTest6(parser);
		UnitTest8(parser);
#endif

		//{
		//	UnitTest5(parser);
		//	XSElementDeclaration * xsElement= parser.FindXsdElement("QIFDocument");
		//	parser.BuildXsdElement(xsElement);

		//	std::istringstream iss (UnitTest5Xml());

		//	std::auto_ptr<QIFDocumentType> qiftest (
		//		QIFDocument (iss, xml_schema::flags::dont_initialize|xml_schema::flags::dont_validate|xml_schema::flags::keep_dom)
		//		);
		//	DOMElement* e = static_cast<DOMElement*> ((*qiftest)._node ());
		//	std::string  sql;
		//	sqlhandler.ParseQifDocument(e, sql);
		//	fair.SaveReport(CFairReports::ExeDirectory()+ "UnitTests\\InsertUnitTest5.txt", sql);
		//}
#define PARSEDOC
#ifdef PARSEDOC
		std::cout << "********** Building XSD Type information from Schema **********" << "\n";
		parser.BuildXsdTypes();
		std::cout << "********** Building XSD Element information from Schema **********" << "\n";
		parser.BuildXsdElements();
		std::cout << "********** Building Resolve Parent Hierarchy information from Schema **********" << "\n";
		parser.ResolveParentHierarchy();
		std::cout << "********** Building Build Substitution Group Aliasing information from Schema **********" << "\n";
		parser.BuildSubstitutionGroupAliasing();

#if 0
		str = parser._symbols.DumpElements();
		fair.SaveReport(CFairReports::ExeDirectory()+ "Elements.txt", str);

		str =  parser._symbols.DumpSubstitutions();
		fair.SaveReport(CFairReports::ExeDirectory()+ "Substitutions.txt", str);

		str =  parser._symbols.DumpSubstitutionAliases();
		fair.SaveReport(CFairReports::ExeDirectory()+ "SubstitutionAliases.txt", str);
		
		str =  parser._symbols.DumpTypes(StringVector());
		fair.SaveReport(CFairReports::ExeDirectory()+ "Types.txt", str);
#endif
#if 1
		db.Open("PostgreSQL30", "postgres", "jlmcbm1984");
//		db.CreatePostgresDB("QIF");
		//int num= db.sizeTable("QIF", "QIFDocument");
		
#endif

#if 0
		str.clear();

		// Generate enumeration types and sql tables, save to qifsql.sql file
		str=sqlhandler.CreateSqlEnumerationTypes();
		std::vector<std::string> lines = Tokenizer(str,";", true);
		db.ExecutePostgreSQLStatement( lines  );

		str=sqlhandler.CreateSqlTablesFromAllTypes(StringVector ());
		lines = Tokenizer(str,";", true);
		db.ExecutePostgreSQLStatement( lines );

		//str+=sqlhandler.CreateSqlTablesFromTypes(StringVector (std::string("ActualAngularValueType"),std::string()));
		//fair.SaveReport(CFairReports::ExeDirectory()+ "QifSql.sql", str);
#endif

#if 1

		// Parse QIF XML and insert records into Postgres DB
		std::string filename=CFairReports::ExeDirectory() + "\\QIF_Results_Sample.xml";
		std::auto_ptr<QIFDocumentType> qif (
			QIFDocument (filename, xml_schema::flags::dont_initialize|xml_schema::flags::dont_validate|xml_schema::flags::keep_dom)
			);

		//xercesc::XercesDOMParser parser = new xercesc::XercesDOMParser();
		//xercesc::MemBufInputSource UnitTest5xml_buf(UnitTest5Xml().c_str(), UnitTest5Xml().size(),  "UnitTest5Xml (in memory)");
		//parser->parse(UnitTest5xml_buf);
		//parser->getDocument(); // From here on I can access all nodes and do whatever i want

		DOMElement* e = static_cast<DOMElement*> ((*qif)._node ());
		std::string  sql;
		sqlhandler.ParseQifDocument(e, sql);
		fair.SaveReport(CFairReports::ExeDirectory()+ "Insert.sql", sql);
#endif

#endif
		db.Close();
#if 0
		DOMDocument * document = parser.getDocument();
		DOMElement * root = document->getDocumentElement();
		std::string report1 = fair.GenerateFAIRRepor1(e);
		fair.SaveReport(CFairReports::ExeDirectory()+ "FairReport1.html", report1);

		//
		// Generate FAIR Form 3
		std::string report3 = fair.GenerateFAIRRepor3(e);
		fair.SaveReport(CFairReports::ExeDirectory()+ "FairReport3.html", report3);
#endif



#else

		//v->ThisInstanceQPId() =xml_schema::string("1");
		DOMImplementation* impl =  DOMImplementationRegistry::getDOMImplementation(X("Core"));

		DOMDocument* doc = impl->createDocument(
			0,                    // root element namespace URI.
			X("QIFDocument"),         // root element name
			0);                   // document type object (DTD).


		DOMElement* rootElem = doc->getDocumentElement();
		QIFDocumentType qif(*rootElem);

		qif.Version(::xsd::qif2::VersionType()) ; 
		qif.Version()->ThisInstanceQPId(QPIdType("1.0")); 

		qif.Header(QIFDocumentHeaderType());
		qif.Header()->Scope("Results");
		qif.Header()->Description()="Hello World";

		qif.Header()->Author(AuthorType());
		qif.Header()->Author()->Name("John Michaloski"); // CreateNode(doc, "Name", AuthorType::Name_type("John Michaloski")));
		qif.Header()->Author()->Organization("NIST");

		//qif.Header()->Author()->Name()=::xml_schema::string("John Michaloski");; // CreateNode(doc, "Name", AuthorType::Name_type("John Michaloski")));
		//qif.Header()->Author()->Organization()=::xml_schema::string("NIST");; // CreateNode(doc, "Name", AuthorType::Name_type("John Michaloski")));

		//qif.Header()->Author()->Name(*(doc->createElement(X("Name")))); // CreateNode(doc, "Name", AuthorType::Name_type("John Michaloski")));
		//AuthorType::Name_type & name = qif.Header ()->Author()->Name().get();
		//name=::xml_schema::string("John L Michaloski");

		//qif.MeasurementsResults(::xsd::qif2::MeasurementsResultsType(*(doc->createElement(X("MeasurementsResults")))));
		qif.MeasurementsResults(::xsd::qif2::MeasurementsResultsType());
		::xsd::qif2::MeasurementsResultsType & results = qif.MeasurementsResults().get();
		results.Version( ::xsd::qif2::VersionType(*(doc->createElement(X("Version")))));
		results.Version()->ThisInstanceQPId(CreateNode(doc, "ThisInstanceQPId", QPIdType("234")));

		MeasurementResultsType &m = MeasurementResultsType(
			(const MeasurementResultsType::InspectionStatus_type&)MeasurementResultsType::InspectionStatus_type(),
			(const MeasurementResultsType::id_type&)58);
		m.ThisResultsInstanceQPId()="8521ff0f-4c05-4f13-a2be-1386190f75a6";

		ExternalFileReferenceType &file=ExternalFileReferenceType("C:\\R19_parts\\5802804.res",
			FileSpecType(),
			"Brown/Sharpe CMM Results");
		file.FileSpec().OtherFileSpec("res");
		m.ExternalFileReference ().push_back(file);
		// Code synthesis copies the node, so you had better make all additions before pushing

		m.MeasuredFeatures(MeasuredFeaturesType(FeatureActualsType()));

		//  <EdgePointFeatureActual id="10">
		//    <FeatureItemId>9</FeatureItemId>
		//    <Location>2460.72 770.62 944.98</Location>
		//    <Normal>-0.735465884156759 -0.307902932144912 0.603560864882807</Normal>
		//  </EdgePointFeatureActual>
		EdgePointFeatureActualType &edge = EdgePointFeatureActualType(10,9);

		std::vector<double> pts; pts.push_back(2460.72); pts.push_back(770.62); pts.push_back(944.98);
		edge.Location() = ActualPointType(ListDoubleType(pts.begin(), pts.end()));

		std::vector<double> norm;	norm.push_back(-0.735465884156759);norm.push_back(-0.307902932144912); norm.push_back(0.603560864882807);
		edge.Normal() = ActualUnitVectorType(ListDoubleType(norm.begin(), norm.end()));

		m.MeasuredFeatures()->FeatureActuals().FeatureActual().push_back((EdgePointFeatureActualType&) edge);

		//  <PointFeatureActual id="20">
		//    <FeatureItemId>19</FeatureItemId>
		//    <Location>2466.9 774.31 944.84</Location>
		//  </PointFeatureActual>
		PointFeatureActualType &point = PointFeatureActualType(20,19);
		pts.clear(); pts.push_back(2466.9); pts.push_back(774.31); pts.push_back(944.84);
		point.Location() = ActualPointType(ListDoubleType(pts.begin(), pts.end()));
		m.MeasuredFeatures()->FeatureActuals().FeatureActual().push_back((PointFeatureActualType&) point);


		//  <PointFeatureActual id="36">
		//    <FeatureItemId>35</FeatureItemId>
		//    <Location>2537.17 783.38 920.02</Location>
		//  </PointFeatureActual>
		PointFeatureActualType &point2 = PointFeatureActualType(36,35);
		pts.clear(); pts.push_back(2537.17); pts.push_back(783.38); pts.push_back( 920.02);
		point2.Location() = ActualPointType(ListDoubleType(pts.begin(), pts.end()));
		m.MeasuredFeatures()->FeatureActuals().FeatureActual().push_back((PointFeatureActualType&) point2);


		//  <CircleFeatureActual id="44">
		//    <FeatureItemId>43</FeatureItemId>
		//    <Location>2434.01 801.52505599193 889.98</Location>
		//    <Normal>0.0558150216639657 -0.907624351305543 -0.416056150385791</Normal>
		//    <Diameter>9.499476</Diameter>
		//  </CircleFeatureActual>
		CircleFeatureActualType &circle = CircleFeatureActualType(44,43);
		pts.clear(); pts.push_back(2434.01); pts.push_back(801.52505599193); pts.push_back( 889.98);
		circle.Location() = ActualPointType(ListDoubleType(pts.begin(), pts.end()));
		norm.clear();	norm.push_back(0.0558150216639657); norm.push_back(-0.907624351305543); norm.push_back(-0.416056150385791);
		circle.Normal() = ActualUnitVectorType(ListDoubleType(norm.begin(), norm.end()));
		m.MeasuredFeatures()->FeatureActuals().FeatureActual().push_back((CircleFeatureActualType&) circle);


		results.MeasurementResults().push_back(m);

		//qif.Header ()->Author()->Name()=xml_schema::string("John Michaloski");
		//qif.Header ()->Author()->Organization()="NIST";
		//qif.Header ()->Description() ="Sample QMR file";
		//qif.Header ()->Scope() ="Results";

		//qif.MeasurementsResults()->InspectionTraceability()->ReportPreparer()->Name()="John Michaloski";
		//qif.MeasurementsResults()->InspectionTraceability()->ReportPreparationDate()=xml_schema::date_time (1809, 3, 31,12,24,34);
		/**
		<QIFDocument xmlns="http://qifstandards.org/xsd/qif2" idMax="86" versionQIF="2.0.0" 
		xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
		xsi:schemaLocation="http://qifstandards.org/xsd/qif2 ../QIFApplications/QIFDocument.xsd">
		*/
		xml_schema::namespace_infomap map;

		map[""].name = "http://qifstandards.org/xsd/qif2";
		map[""].schema = "http://qifstandards.org/xsd/qif2 ../QIFApplications/QIFDocument.xsd";

		QIFDocument (std::cout,
			qif,
			map,
			"UTF-8",
			xml_schema::flags::dont_initialize);

		//OutputXML(doc, "C:/Foo.xml");
		//              doc->release();

#endif

	}
	catch (const xml_schema::exception& e)
	{
		//OutputDebugString(e.what());
		cerr << e << endl;
		return 1;
	}
	catch (...)
	{
		XERCES_STD_QUALIFIER cerr << "An error occurred prarsing/creating the document" << XERCES_STD_QUALIFIER endl;
	}	

	XMLPlatformUtils::Terminate ();
	return 0;
}

