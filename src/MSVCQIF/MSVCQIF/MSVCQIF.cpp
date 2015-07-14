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
#include <algorithm> 

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
static void SaveReport(std::string filename, const std::string &report)
{
	std::ofstream out(filename.c_str());
	out << report <<std::endl;
	out.close();
}
extern std::string ExeDirectory();

//#include "linalg3d.h"

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
void GenerateFairReport(CXsdParser &parser)
{
	CFairReports fair;
	//DOMDocument * document;
	//DOMElement * root;

	// Parse QIF XML and generate FAIR reports
	std::string filename=ExeDirectory() + "QIF_Results_Sample.xml";
	std::auto_ptr<QIFDocumentType> qif (
		QIFDocument (filename, xml_schema::flags::dont_initialize|xml_schema::flags::dont_validate|xml_schema::flags::keep_dom)
		);
	//document = parser.getDocument();
	//root = document->getDocumentElement();
	DOMElement* e = static_cast<DOMElement*> ((*qif)._node ());

	std::string report1 = fair.GenerateFAIRRepor1(e);
	SaveReport(ExeDirectory() + "FairReport1.html", report1);

	//
	// Generate FAIR Form 3
	std::string report3 = fair.GenerateFAIRRepor3(e);
	SaveReport(ExeDirectory() + "FairReport3.html", report3);

}

void ParseQifXsd(CXsdParser & parser)
{
	std::string str;

	std::cout << "********** Parsing XML File **********" << "\n";
	parser.XsdParse(
			"/home/michalos/workspace/Qif/xsd/QIFApplications/QIFDocument.xsd");
	std::cout
			<< "********** Building XSD Type information from Schema **********"
			<< "\n";
	parser.BuildXsdTypes();
	std::cout
			<< "********** Building XSD Element information from Schema **********"
			<< "\n";
	parser.BuildXsdElements();
	std::cout
			<< "********** Building Resolve Parent Hierarchy information from Schema **********"
			<< "\n";
	parser.ResolveParentHierarchy();
	std::cout
			<< "********** Building Build Substitution Group Aliasing information from Schema **********"
			<< "\n";
	parser.BuildSubstitutionGroupAliasing();

#if 1
	str = parser._symbols.DumpElements();
	SaveReport(ExeDirectory()+ "Elements.txt", str);

	str = parser._symbols.DumpSubstitutions();
	SaveReport(ExeDirectory()+ "Substitutions.txt", str);

	str = parser._symbols.DumpSubstitutionAliases();
	SaveReport(ExeDirectory()+ "SubstitutionAliases.txt", str);

	str = parser._symbols.DumpTypes(StringVector());
	SaveReport(ExeDirectory()+ "Types.txt", str);
#endif
}
void BuildingSqlFramework(CXsdParser & parser) {
	std::string enumtypes, tables;

	OdbcArchiver db;
	CXmlAndSql sqlhandler(parser._symbols, db);

	// Generate enumeration types and sql tables, save to qifsql.sql file
	enumtypes = sqlhandler.CreateSqlEnumerationTypes();
	tables = sqlhandler.CreateSqlTablesFromAllTypes(StringVector());
	//tables=sqlhandler.CreateSqlTablesFromTypes(StringVector (std::string("ActualAngularValueType"),std::string()));

#ifdef DBCREATION
	db.Open("PostgreSQL30", "postgres", "jlmcbm1984");
//		db.CreatePostgresDB("QIF");
	std::vector<std::string> lines = Tokenizer(enumtypes, ";", true);
	db.ExecutePostgreSQLStatement(lines);

	lines = Tokenizer(tables, ";", true);
	db.ExecutePostgreSQLStatement(lines);
#else
	SaveReport(ExeDirectory()+ "QifSql.sql",std::string( enumtypes+tables));
#endif
}
void TestPostgresODBC()
{
	OdbcArchiver db;
	db.Open("PostgreSQL30", "postgres", "jlmcbm1984");
	db.Close();
}
void GenerateSqlInsertions(CXsdParser & parser,const std::string &filename )
{
	OdbcArchiver db;
	std::string str;

	db.Open("PostgreSQL30", "postgres", "jlmcbm1984");

	str.clear();
	CXmlAndSql sqlhandler(parser._symbols, db);

	// Parse QIF XML and insert records into Postgres DB
	std::auto_ptr<QIFDocumentType> qif (
		QIFDocument (filename, xml_schema::flags::dont_initialize|xml_schema::flags::dont_validate|xml_schema::flags::keep_dom)
		);
	DOMElement* e = static_cast<DOMElement*> ((*qif)._node ());
	std::string  sql;
	sqlhandler.ParseQifDocument(e, sql);
	SaveReport(ExeDirectory() + "Insert.sql", sql);
	db.Close();
}
#ifdef GCC
#include <signal.h>
static void segfault_sigaction(int signal, siginfo_t *si, void *arg)
{
//    printf("Caught segfault at address %p\n", si->si_addr);
    sigset_t x;
    sigemptyset (&x);
    sigaddset(&x, SIGSEGV);
    sigprocmask(SIG_UNBLOCK, &x, NULL);

    throw std::exception();
}

void SetupSignalHandler() {
	struct sigaction sa;

	memset(&sa, 0, sizeof(sigaction));
	sigemptyset(&sa.sa_mask);
	sa.sa_sigaction = segfault_sigaction;
	sa.sa_flags = SA_SIGINFO;

	sigaction(SIGSEGV, &sa, NULL);

}
#endif

static void ListPostgresables()
{
	OdbcArchiver db;
	std::string stmt;
	db.Open("PostgreSQL30", "postgres", "jlmcbm1984");
	stmt="SELECT * FROM information_schema.tables ;";
	//stmt="SELECT table_name FROM information_schema.tables WHERE table_schema='public';";
	//stmt = "select * from sysprogress.SYSTABLES;";
	//stmt = "select schema_name from information_schema.schemata;";  // "works"
	//stmt = "select nspname from pg_catalog.pg_namespace;";
	std::cerr <<  db.ExecutePostgreSQLStatement(stmt);
}
void SerializeQIF()
{
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
}
int main(int argc, char* argv[])
{
	try
	{
		// First Article Inspection report (FAIR) report generation
		std::string str ;
		CFairReports fair;
		std::string path = ExeDirectory(); //ExtractDirectory( argv[0] )  ;

		XMLPlatformUtils::Initialize();
		CXsdParser parser;
		//GenerateFairReport(parser);
		//TestPostgresODBC();
		ListPostgresables();

		ParseQifXsd(parser);
		BuildingSqlFramework(parser);
		std::string filename=ExeDirectory() + "/QIF_Results_Sample.xml";

		GenerateSqlInsertions(parser,filename);


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

