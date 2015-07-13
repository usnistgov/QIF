#pragma once

#include "ExpressUtils.h"
#include "atlstr.h"
#include <map>
#include <vector>
#include <algorithm>
#include <cassert>
#include <fstream>

#include <boost/shared_ptr.hpp>
#include <boost/intrusive_ptr.hpp>
#include "boost/multi_array.hpp"
#include <boost/spirit/symbols/symbols.hpp>
#include <boost/tuple/tuple.hpp>
#include <boost/function.hpp>
#include <boost/shared_ptr.hpp>

#include "Misc.h"


class CExpress2Sql
{
public:
	typedef	std::map<CString,IStepNodePtr> NamedEntities;
	typedef	std::map<CString,IStepNodePtr>::iterator NamedEntityIterator;


	CExpress2Sql(std::map<CString,IStepNodePtr> &namedentities) : _namedentities(namedentities)  {}

	virtual ~CExpress2Sql(void);

	// Creates table with field using Sql notation
	HRESULT CreateSqlFile(void);
	CString BuildSqlTable(IStepNodePtr entity, CVarDefs & vars);


	////////////////////////////////////////
	CString GetType(StepNodeType type);
	std::map<CString,IStepNodePtr> & _namedentities;
	// Member
	std::map<CString, int>  _enums;
};
