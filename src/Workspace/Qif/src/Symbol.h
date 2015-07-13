//
// Symbol.h
//

// This software was developed by U.S. Government employees as part of
// their official duties and is not subject to copyright. No warranty implied 
// or intended.

#pragma once
#include <map>
#include <vector>
#include <algorithm>

//#include "Misc.h"
#include "Globals.h"
#include <cassert>

// we use the boost library for implementing share pointers
#include <boost/shared_ptr.hpp>
#include <boost/intrusive_ptr.hpp>
#include <boost/multi_array.hpp>
#include <boost/spirit/include/classic_symbols.hpp>
#include <boost/tuple/tuple.hpp>
#include <boost/function.hpp>
#include <boost/shared_ptr.hpp>
#include <boost/lexical_cast.hpp>

#include "StdStringFcn.h"
#define StrFormat StdStringFormat

class _variant_t;

/** windows - only works for 32 bit also
#define DebugBreak() \
{
	_asm int 3; \
}
 */
typedef unsigned long UDWORD;
#define E_NOTIMPL -1
#define E_FAIL -1
#define S_OK 0
#define FAILED(hr) (((int)(hr)) < 0)

#ifdef UNICODE
#define TEXT(X) L#X
#define TCHAR wchar
typedef 
#else
#define TEXT(X) X
#define TCHAR char
#endif
#define _TCHAR_DEFINED

class StringVector : public std::vector<std::string> 
{
public:
	std::string Merge(std::string delim="") { std::string tmp; for(size_t i=0; i< size(); i++) tmp+=at(i)+delim;  return tmp; }
	std::string ToString(std::string separator=TEXT(" ")) { 
		std::string tmp; 
		for(unsigned int i=0; i< size(); i++) 
		{
			if(i>0)
				tmp+=StrFormat("%s", separator.c_str());  
			tmp+=StrFormat("%s", at(i).c_str());  
		}
		return tmp; 
	}
	StringVector(const std::vector<std::string> &copy)
	{
		insert(begin(), copy.begin(), copy.end());
	}
	static StringVector Tokenize(std::string str, std::string tokens, int bSave=0)
	{
		std::vector<std::string> copy =   Tokenizer(str,tokens);
		StringVector sv;
		sv.insert(sv.begin(), copy.begin(), copy.end());
		return sv;
	}
	StringVector(){}
	explicit StringVector(const char * s1, ...)
	{ 
		va_list ap;	
		va_start(ap,s1); 
		std::string s = s1;

		//for(int i=0; i< n; i++)
		bool bFlag=true;
		while(bFlag)
		{
			push_back(s);
			s =va_arg ( ap, const char * );
			if(s.empty())
				break;
		}
		va_end(ap);
	}

};
class IExpress;
class ISymbol;
class IXmlNode;
class IStepList;
class CVarsDefsPtr;
struct CVarDef;


EXP_DECLARE_SMARTPOINTER(ISymbol) 
EXP_DECLARE_SMARTPOINTER(CVarDef) 
EXP_DECLARE_SMARTPOINTER(IXmlNode) 

typedef std::vector<CVarDefPtr> CVarDefs;

class IExpress 
{
public:
	IExpress() : _refs(0) {}
	//! destructor
	virtual ~IExpress(){};
	int _refs; //! reference count
	friend inline void intrusive_ptr_release(IExpress* pThis)
	{
		if(--pThis->_refs == 0 ) { 
			assert(0);
			delete pThis;
		}
	}
	friend inline void intrusive_ptr_add_ref(IExpress* pThis)
	{
		pThis->_refs++;
	}
	friend inline void intrusive_ptr_release(const IExpress* pThis)
	{
		if(--const_cast<IExpress*>(pThis)->_refs == 0 ) 
		{ 
			assert(0);
			delete const_cast<IExpress*>(pThis);
		}
	}
	friend inline void intrusive_ptr_add_ref(const IExpress* pThis)
	{
		const_cast<IExpress*>(pThis)->_refs++;

	}
};

enum SymbolType { BOOST_PP_SEQ_ENUM(SYMBOLSEQ) };
static std::string GetTypeString(SymbolType i)
{
	SymbolType ids=LastID;
	if(i>ids)
		return TEXT("");
	static const TCHAR * symbol_names[]={ BOOST_PP_SEQ_FOR_EACH(TO_STR,~,SYMBOLSEQ) };
	return symbol_names[i];
}

class ISymbol : public IExpress
{
public:
	static std::vector<ISymbolPtr> symbols;
	ISymbol();

	VAR(Name, std::string);

	VAR(Abstract, bool);
	VAR(Atomic, bool);
	VAR(Attributes, std::vector<ISymbolPtr>);
	VAR(BaseTypeName, std::string);
	VAR(Compositor, int);
	VAR(DerivedType, XercesAdditions::DERIVATION_TYPE);
	VAR(Dimension, int);
	VAR(Enumerations, std::vector<std::string>);
	VAR(FacetKinds, XercesAdditions::FACET_TYPE);
	VAR(Facets, std::vector<std::string>);
	VAR(Global, bool);
	VAR(Level, int);
	VAR(List, bool);
	VAR(ListSize, int);
	VAR(ListType, SymbolType);
	VAR(LowerBounds, std::vector<int>);
	VAR(Namespace, std::string);
	VAR(Optional, bool);
	VAR(OuterElementName, std::string);
	VAR(OuterElementTypeName, std::string);
	VAR(Parent, IXmlNodePtr); // can there be mutliple parents?
	VAR(Parsed, bool);
	VAR(PrimitiveType, std::string);
	VAR(Required, bool);
	VAR(SimpleContent, bool);
	VAR(SimpleType, bool);
	VAR(SqlCount, int);
	VAR(SqlType, std::string);
	VAR(SubstitutionGroupAffiliation, std::string);
	VAR(SubstitutionList, StringVector);
	VAR(SubTypes, StringVector);
	VAR(SuperTypes, StringVector);
	VAR(Type, SymbolType);
	//VAR(TypeClassName, std::string); //???
	VAR(TypeName, std::string);
	VAR(UpperBounds, std::vector<int>);
	VAR(Variable, CVarDefPtr);
	VAR(Visited, bool);
	VAR(XercesType, XercesAdditions::COMPONENT_TYPE);

	//virtual StringVector GetInheritanceChain() { return parents; }
	//virtual StringVector GetSupertypesChain()  { return supertypes; }

	bool IsOptional(){ if(LowerBounds().size()< 1) return true; if(LowerBounds().at(0) == -2) return true; return (bool) LowerBounds().at(0); }
	bool IsSimpleContent() { return SimpleContent()==true; }
	bool IsSimpleType() { return SimpleType()==true; }
	bool IsChoice() { return Compositor() == 2; }
	bool IsSequence() { return Compositor() == 1; }
	std::string SubstitutionBase();
	bool IsArray() ;
	bool IsSubstitutionHead() { return SubstitutionList().size()>0; }
	bool IsList(){ return List(); }
	//bool IsSimpleType()cpp { return (_eType==integer_ || _eType==real_ || _eType == number_ || _eType == boolean_ || _eType == logical_ || _eType==string_ || _eType==enumeration_); }
	void DeepCopy(ISymbolPtr c);
	void MergeTypeInfo(ISymbolPtr c);
};

//EXP_DECLARE_SMARTPOINTER(ISymbol);
inline	bool operator==(const ISymbolPtr& left, const ISymbolPtr& right)
{
	return strcasecmp(left->Name().c_str() , right->Name().c_str())==0;
}

struct XsSimpleType : public ISymbol
{
	VAR(Attribute, bool);
	VAR(Element, bool);
	VAR(List, bool);
	VAR(ItemType, std::string);
	VAR(Pattern, std::string);
	VAR(MinInclusive, int);
	VAR(MaxInclusive, int);
	VAR(MinExclusive, int);
	VAR(MaxExclusive, int);
	VAR(TotalDigits, int);
	VAR(FractionDigits, int);
};
struct XsSimpleTypeList : public XsSimpleType
{
	VAR(Length, int);
	VAR(ItemType, std::string);

};
struct XsSchema : public ISymbol
{
	VAR(elementFormDefault, std::string);
	VAR(attributeFormDefault, std::string);
	VAR(targetNamespace, std::string);


};
struct XsElement : public ISymbol
{
	VAR(Nilable, bool);
	VAR(SimpleType, XsSimpleType);
	VAR(SimpleTypeList, XsSimpleTypeList);

};
/** CVarDef is the next level of abstration. 
It defines a member variable - 1 simple item or list or inheritected definition
or enumeration.
Plus, it can be optional. If list it is required to have dimension, and lower/upper bounds  bounds.
*/
struct CVarDef : public ISymbol
{
	CVarDef() {m_ref=0; }

	void        SetXmlNodePtr(IXmlNodePtr node) {   m_ref= node; }
	IXmlNodePtr GetXmlNodePtr() { return  m_ref; }


	static CVarDefPtr FindVarDef(IXmlNodePtr pNode, std::string &name );
	static CVarDefPtr FindVarDefOrParents(IXmlNodePtr pNode, std::string &name );

	//bool IsSimpleType();
	//bool IsListType() { return _eType== list_ || _eType== set_ || _eType== aggregate_ || _eType== array_ || _eType== bag_; }
	//static bool IsListType(SymbolType type ) { return type== list_ || type== set_ || type== aggregate_ || type== array_ || type== bag_; }
	//bool IsSimpleListType() ;

	////////////////////////////////////////////////////////////////////////////////
	//IXmlNode * _owner;
	IXmlNodePtr m_ref;
	CVarDefs * m_optBaseClassVars;

	// type information
	//std::string m_sReferenceChain;
	//bool m_bAmbiguous;
	//UDWORD m_dwAtom;  // maybe make this a property list ...
};


//Base Class for all entity/class Declarations

//class IStepList : public  std::vector<IXmlNodePtr> 
//{
//public:
//	std::string DumpNodes() ;
//};


class IXmlNode  : public ISymbol
{
public:
	IXmlNode()
	{		
	}
	virtual ~IXmlNode() {}

	//virtual std::vector<CVarDefPtr> & GetVarDefs() { return vars; }
	//virtual std::vector<CVarDefPtr> & GetInstanceVars() { return instancevars; }

	//virtual std::string GetVarString(std::string fmt="") {return "None"; }
	//virtual int SetVarString(std::string str) { return E_NOTIMPL; }

	//void SetParent(IXmlNodePtr parent) {  _parent=  parent; }
	//IXmlNodePtr GetParent() { return (IXmlNodePtr)  _parent; }


	virtual bool hasChildNodes() { return vars.size() > 0; }
	IXmlNodePtr firstChild() { if(vars.size() > 0) return vars[0]->GetXmlNodePtr(); return NULL; }
	IXmlNodePtr lastChild()  { if(vars.size() > 0) return vars[vars.size()-1]->GetXmlNodePtr(); return NULL; }
	
	//CVarDefs getElementsByTagName(std::string tagname);

	//void getElementsByCVarDefs(CVarDefs &vars, StringVector &visited, std::string tagname, CVarDefs & list);
	//void getElementByCVarDef(CVarDefPtr var, StringVector &visited, std::string tagname, CVarDefs & list);

	//int selectElementsByTagName(VarTable &table, StringVector columns, std::string fromnodes,  int bDistinct=false);
	//bool getItemByCVarDefs(CVarDefs &vars,  StringVector tagnames, VarList & list);

//	_variant_t GetVarDefVal(CVarDefPtr  vardef);

	std::string _errmsg;
	int ReturnErrMessage(std::string errmsg) {/*DebugBreak();*/ _errmsg=errmsg; return E_FAIL; }
	std::string GetErrMessage() { return _errmsg; }
	///////////////////////////////////////////////////////////////////////////////
	std::vector<CVarDefPtr> & GetVarsReference() { return vars; }
	std::vector<CVarDefPtr> vars;

	// THIS IS TYPE INFORMATION ADDED FOR SIMPLICITY
	std::string declaration;
	StringVector _enums;
	StringVector _szSelections;
};

