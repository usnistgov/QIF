//
// XmlAndSql.h
//

// This software was developed by U.S. Government employees as part of
// their official duties and is not subject to copyright. No warranty implied 
// or intended.

#pragma once
#include "SymbolTable.h"
#include "OdbcArchiver.h"

class CXmlAndSql
{
public:
	CXmlAndSql(SymbolTable &symboltable, OdbcArchiver &db) ;
	~CXmlAndSql(void);
	
	// Sql Commands - build sql statements from symbol table information - semi automatic
	std::string CreateSqlEnumerationTypes();
	std::string CreateSqlTablesFromTypes(StringVector types);
	std::string CreateSqlTablesFromAllTypes(StringVector excludetypes);
	std::string CreateSqlTablesFromGlobalElements();
	void CreateSqlTableFromType(IXmlNodePtr def, std::string &tmp, std::string constraints,std::string &keys);
	void CreateSqlField(IXmlNode * node, std::string &tmp, std::string &keys, std::string &constraints);
	void CreateSimpleContent( IXmlNode * type, std::string name, std::string &tmp, std::string &keys, std::string &constraints);
	void CreateIndexContent(IXmlNode * node, IXmlNode * substitutionElem, IXmlNode * innerelem, std::string &tmp, std::string &keys, std::string &constraints);

	void ParseQifDocument(xercesc::DOMElement* e, std::string &tmps, std::string outertypename="");

	////////////////////////////////////////
	static bool symbolcomp (ISymbolPtr i, ISymbolPtr j) { return (i->Name()<j->Name()); }
	static bool stepnodecomp (IXmlNodePtr i, IXmlNodePtr j) { return (i->Name()<j->Name()); }
	////////////////////////////////////////
	std::string ConvertXsd2SqlDataType(std::string type, ISymbol * symbol);
	std::string ConvertXml2SqlValue(std::string type, std::string val);

	OdbcArchiver &odbc;
	SymbolTable &_symbols;
	std::string tabs;
	int _nChoice;

};

