//
// OdbcArchiver.h
//

// DISCLAIMER:
// This software was developed by U.S. Government employees as part of
// their official duties and is not subject to copyright. No warranty implied 
// or intended.

#pragma once

#include <string>
#include <map>
#include <vector>
#include "StdStringFcn.h"

#ifndef  StrFormat
#define StrFormat StdStringFormat
#endif

class OdbcWindows;


/**
		OdbcArchiver db;
		db.Open("PostgreSQL30", "postgres", "jlmcbm1984");
		int num= db.SizeTable("QIF", "QIFDocument");
		db.Close();
*/

class OdbcArchiver
{
public:
	OdbcArchiver();
	~OdbcArchiver();
//	void OpenDSN(std::string dsn);
	void Open(std::string odbcname, std::string user, std::string password);
	void Close();
	OdbcWindows * obdc;

	void useSchema(std::string schema);
	void createSchema(std::string schema);
	void deleteTable(std::string schema, std::string table);
	int SizeTable(std::string schema, std::string table);
	void InsertStatement(std::string stmt);
	void CreatePostgresDB(std::string dbname, bool bDrop=true)
	{
		std::string ddl = StrFormat("CREATE DATABASE %s\n"
			" WITH OWNER = postgres\n"
			"ENCODING = 'UTF8'\n"
			"TABLESPACE = pg_default\n"
			"LC_COLLATE = 'English_United States.1252'\n"
			"LC_CTYPE = 'English_United States.1252'\n"
			"CONNECTION LIMIT = -1;\n", dbname.c_str());
		if(bDrop)
			ExecutePostgreSQLStatement("DROP DATABASE \"QIF\"");
		ExecutePostgreSQLStatement(ddl);
	}
	std::string  ExecutePostgreSQLStatement(std::string stmt);
	void ExecutePostgreSQLStatement(std::vector<std::string> stmts);

protected:
	std::string SanitizeColumnName(std::string);
	//int OpenSqlDatabase(std::string dbname="QIF");
};
