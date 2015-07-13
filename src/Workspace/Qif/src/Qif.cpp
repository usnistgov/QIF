//============================================================================
// Name        : Qif.cpp
// Author      : NIST
// Version     :
// Copyright   : no copyright
// Description : Hello World in C++, Ansi-style
//============================================================================

#include <iostream>
using namespace std;

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

#include <xsd/cxx/xml/string.hxx>
#include "QIFDocument.hxx"
#include "StdStringFcn.h"
#include "FairReports.h"
#include "XercesUtils.h"
#include "XsdParser.h"
#include "XmlAndSql.h"


using std::cerr;
using std::endl;
using std::string;
using namespace xercesc;
using namespace xsd;
using namespace qif2;

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

int main(int argc, char *argv[]) {
	//
	// Extract folder where exe is located
	std::string path = ExtractDirectory(argv[0]);
	//
	// Log console error output to debug.txt in folder with exe
	std::freopen((path + "debug.txt").c_str(), "w", stderr);
	SetupSignalHandler();

	try {

		XMLPlatformUtils::Initialize();
		CXsdParser parser;
		//GenerateFairReport(parser);
		//TestPostgresODBC();
		ListPostgresables();

		ParseQifXsd(parser);
		BuildingSqlFramework(parser);
		std::string filename=ExeDirectory() + "/QIF_Results_Sample.xml";

		GenerateSqlInsertions(parser,filename);

	} catch (const xml_schema::exception& e) {
		//OutputDebugString(e.what());
		cerr << e << endl;
		return 1;
	} catch (...) {
		XERCES_STD_QUALIFIER cerr << "An error occurred prarsing/creating the document" << XERCES_STD_QUALIFIER endl;
	}

	XMLPlatformUtils::Terminate();
	return 0;
}
