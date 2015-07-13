//
// Globals.h
//

// This software was developed by U.S. Government employees as part of
// their official duties and is not subject to copyright. No warranty implied 
// or intended.

#pragma once

#include <stdafx.h>

#ifdef WINDOWS
#pragma warning(disable : 4996)
#pragma warning (disable : 4244 )
#endif

#include <boost/preprocessor.hpp>
#include <boost/preprocessor/cat.hpp>
#include <boost/preprocessor/seq/for_each.hpp>

#define VAR(X,Y) \
	protected: Y _##X;\
	public: Y & X() { return  _##X; }

#define NVAR(X,Y,Z) \
	protected: Y Z;\
	public: Y & X() { return Z; }


#define EXP_EXT_CLASS 
#define EXP_DECLARE_SMARTPOINTER(className)                                             \
	typedef EXP_EXT_CLASS boost::intrusive_ptr<className> className##Ptr;              \
	typedef EXP_EXT_CLASS boost::intrusive_ptr<const className> className##ConstPtr;

/* (avoid using \ at the end of the comment)
#define EXP_DECLARE_SMARTPOINTER(className)                                             \
	typedef className * className##Ptr;              \
	typedef const className * className##ConstPtr;
*/

#define CLASSDEF(X) \
	X();\
	virtual ~X(){}\
	static IXmlNodePtr Create(const char * name) {IXmlNode  * ptr= (IXmlNode  *) new X(); ptr->Name()=name; return ptr;}\
	std::string getActualClassName() const{ return typeid(*this).name(); }\
	std::vector<CVarDefPtr> vars;\
	std::vector<CVarDefPtr> instancevars;\
	CClassNode m_def;\
	DWORD GetVarRef(const char * name){ return CVarDef::Find(vars,name); }\
	virtual std::vector<CVarDefPtr> & GetVarDefs() { return vars; }\
	virtual std::vector<CVarDefPtr> & GetInstanceVars() { return instancevars; }\
	private:\
	X(const X&);\
	void operator=(const X&);\
	public:


#define TO_STR(unused,data,elem) BOOST_PP_STRINGIZE(elem) ,

	//std::map<parser_id, std::string> rule_names;
#define SYMBOLSEQ	(unknown_)(special_)(this_)\
		(integer_)(real_)(string_) (binary_)(logical_)(number_)(enumeration_)(boolean_)\
		(aggregate_)(array_) (bag_)(set_)(list_) \
		(generic_)(list_item_)(oneof_)(entity_) (elementref_)(element_)\
		(entity_list_)(select_) (reference_)(query_)(op_)\
		(inverse_)(identifier_)(attribute_) (derived_)(funcall_)(self_)\
		(type_) (vardef_)(underlying_type_)(constant_) (index_)\
		(rename_)(typelist_)(typemultilist_) (typereference_) (sequence_) (choice_) (simplecontent_)\
		(facet_) (LastID)

#define DEBUGBREAK() _asm int 3;

namespace XercesAdditions
{

	typedef enum COMPONENT_TYPE{
		NO_DECLARATION =0, 
		ATTRIBUTE_DECLARATION     = 1,
		ELEMENT_DECLARATION       = 2,

		TYPE_DEFINITION           = 3,
		ATTRIBUTE_USE             = 4,
		ATTRIBUTE_GROUP_DEFINITION= 5,
		MODEL_GROUP_DEFINITION    = 6,
		MODEL_GROUP               = 7,
		PARTICLE                  = 8,
		WILDCARD                  = 9,
		IDENTITY_CONSTRAINT       = 10,
		NOTATION_DECLARATION      = 11,
		ANNOTATION                = 12,
		FACET                     = 13,
		MULTIVALUE_FACET           = 14
	};
	
	typedef enum DERIVATION_TYPE {

	     DERIVATION_NONE     = 0,
	     DERIVATION_EXTENSION      = 1,
	     DERIVATION_RESTRICTION    = 2,
	     DERIVATION_SUBSTITUTION   = 4,
	     DERIVATION_UNION          = 8,
	     DERIVATION_LIST           = 16,
	     DERIVATION_INSTANCE           = 32
    };
	// Facets - simple type refinement
	typedef enum FACET_TYPE {
		FACET_NONE                = 0,
		FACET_LENGTH              = 1,
		FACET_MINLENGTH           = 2,
		FACET_MAXLENGTH           = 4,
		FACET_PATTERN             = 8,
		FACET_WHITESPACE          = 16,
		FACET_MAXINCLUSIVE        = 32,
		FACET_MAXEXCLUSIVE        = 64,
		FACET_MINEXCLUSIVE        = 128,
		FACET_MININCLUSIVE        = 256,
		FACET_TOTALDIGITS         = 512,
		FACET_FRACTIONDIGITS      = 1024,
		FACET_ENUMERATION         = 2048
	};
	typedef enum VARIETY_TYPE {
	    VARIETY_ABSENT            = 0,
	    VARIETY_ATOMIC            = 1,
	    VARIETY_LIST              = 2,
	    VARIETY_UNION             = 3
    };
	
};

