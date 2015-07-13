#include "StdAfx.h"
#include "Express2Sql.h"
#include "StepNC.h"

//#include "machining_schemaClassDefinitions.h"
//#include "milling_schemaClassDefinitions.h"


CString CExpress2Sql::GetType(StepNodeType type)
{
	if(type==real_) return  _T("FLOAT");
	else if(type==real_) return  _T("INTEGER");
	else if(type==enumeration_) return  _T("TEXT(50)");
	else if(type==boolean_) return  _T("TEXT(10)");
	else if(type==logical_) return  _T("TEXT(10)");
	else if(type>= aggregate_ && type <= list_)
		return "SMALLINT";
	else if(type ==entity_  || type == reference_  || type == unknown_  )
		return "SMALLINT";
	return  _T("TEXT(50)");
}



CExpress2Sql::~CExpress2Sql(void)
{
}



CString CExpress2Sql::BuildSqlTable(IStepNodePtr entity, CVarDefs & vars)
{
	CString tmp;
	int j;
	if(entity==NULL)
	{
		//DebugBreak();
		// Entity from other schema - how to handle?
		return tmp;
			
	}
	tmp.AppendFormat("CREATE TABLE %s (%sID INTEGER NOT NULL,", entity->Classname(), entity->Classname());

	for(j=0; j<vars.size(); j++)
	{
		CVarDefPtr  var = vars[j];
		tmp.AppendFormat("[%s]", vars[j]->Name()); //  TEXT(50) NOT NULL
		if(var->Type()==list_ || var->Type()==aggregate_ || var->Type()==bag_ || var->Type()==array_ || var->Type()==set_)
		{
			tmp.AppendFormat("SMALLINT");
			// FIXME 1: add this array as another table that holds this kind of items
			// FIXME 2: select and other overridden types will need enum before index pointer in entity.?
		}
		else if(var->Type()==entity_ || var->Type()==reference_ )
		{
			// This attribute in the entity would have to be created, is empty now.
			IStepNodePtr step = gClassGenerators.CreateClass(ExpDemangle(var->Classname()), "");
			//StepNodeType type = GetType(var->Type());
			StepNodeType type = GetBaseType(step->GetVarDefs());
			tmp.AppendFormat(GetType(type));

		}
		else
		{
			tmp.AppendFormat(GetType(var->Type()));
		}
		if(!var->m_bOptional)
			tmp.AppendFormat("NOT NULL");
		tmp.AppendFormat(",");

	}

	tmp.AppendFormat("PRIMARY KEY  (%sID));\n\n", entity->Classname());

	return tmp;
}
// Creates table with field using Sql notation
HRESULT CExpress2Sql::CreateSqlFile()
{
	std::fstream sqlfile;

	CString szFilename= StrFormat("%sImport.sql", GetExeDirectory() + "StepNC" );
	sqlfile.open (szFilename, std::fstream::out );

	for(NamedEntityIterator it = _namedentities.begin(); it != _namedentities.end(); it++)
	{
		IStepNodePtr entity = (*it).second;
		if(entity==NULL)
			DebugBreak();
		BuildInstanceDef(entity->GetVarDefs(), entity->instancevars); 
	}

	CString tmp;
	for(NamedEntityIterator it = _namedentities.begin(); it != _namedentities.end(); it++)
	{
		IStepNodePtr entity = (*it).second;
		tmp=BuildSqlTable(entity, entity->instancevars); 
		sqlfile<< tmp;
	}
	sqlfile.close();
	return S_OK;
}
