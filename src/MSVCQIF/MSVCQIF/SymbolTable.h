//
// SymbolTable.h
//

// This software was developed by U.S. Government employees as part of
// their official duties and is not subject to copyright. No warranty implied 
// or intended.


#pragma once
#include "Symbol.h"
#include <xercesc/dom/DOMElement.hpp>

class SymbolTable : public IExpress 
{
public:
	static bool stepnodecomp (IXmlNodePtr i, IXmlNodePtr j) { return (i->Name()<j->Name()); }
	static bool symbolcomp (ISymbolPtr i, ISymbolPtr j) { return (i->Name()<j->Name()); }

	typedef std::map<std::string, StringVector> MapStringAndStringVector;
	typedef std::map<std::string, std::string> MapStringAndString;
	typedef std::map<std::string, std::string>::iterator MapStringAndStringIterator;

	typedef std::map<std::string, IXmlNodePtr>::iterator NamedTypeIterator;
	typedef std::map<std::string, IXmlNodePtr> MapStringStepList;

	typedef std::multimap<std::string, IXmlNodePtr>::iterator NamedEntityIterator;
	typedef std::multimap<std::string, IXmlNodePtr> MultiMapStringStepList;
	std::vector<SymbolTable> _includes;

	//std::vector<ISymbolPtr> _symbols;
	//std::vector<IXmlNodePtr>  types;

	std::string _szSchema;
	std::vector<std::string> _schemas;

	SymbolTable() { Clear(); _nChoice=0;}

	VAR(Types, std::vector<IXmlNodePtr>);
	VAR(NamedTypes, MapStringStepList);
	VAR(NamedEntities, MultiMapStringStepList);
	VAR(Entities, std::vector<IXmlNodePtr>);
	VAR(EntitySuperClassesof, MapStringAndStringVector);
	VAR(Symbols, std::vector<ISymbolPtr> );
	VAR(Enumerations, std::vector<ISymbolPtr> );
	VAR(Aliases,  MapStringAndString);
	VAR(SubstitutionGroup,  MapStringAndString);

	std::vector<ISymbolPtr>::iterator FindEnumeration(std::string name);
	bool IsSubstitutionGroupElement(std::string elemname) { return SubstitutionGroup().find(elemname)  != SubstitutionGroup().end();}
	void AddSymbol(ISymbolPtr symbol);
	void Clear() ;

	ISymbolPtr CreateEnumeration(std::string tname,std::string tbasetype);
	CVarDefPtr CreateVarDef(std::string name, std::string anamespace, SymbolType type);
	IXmlNodePtr CreateTypeNode(std::string name,  std::string anamespace, std::string basetype="", SymbolType type=unknown_);
	IXmlNodePtr CreateXmlNode();
	IXmlNodePtr CreateEntityDef(std::string name, std::string anamespace, SymbolType type=unknown_);

	IXmlNodePtr FindNamedEntity(std::string name, std::string outertypename="");
	IXmlNodePtr FindNamedEntityInEntity(std::string name, std::string outerentityname="");
	IXmlNodePtr FindNamedEntityInType(std::string name, std::string outertypename);
	IXmlNodePtr FindTypeNode(std::string name);
	ISymbolPtr  FindVarDefSymbol(IXmlNodePtr pNode, std::string &name );
	ISymbolPtr  FindVarDefSymbolInclDerived(IXmlNodePtr pNode, std::string &name );

	StringVector FindTypeSupers(std::string name);
	ISymbolPtr FindSymbol(std::string name, std::string anamespace=TEXT("") );
	ISymbolPtr FindType(std::string name);

	//SymbolType GetType(ISymbol * symbol) { if(symbol==NULL) return (SymbolType) 0; return symbol->Type(); }


	void ClearVisited() {  for(size_t i=0; i< Symbols().size(); i++) Symbols().at(i)->Visited()=0; }


	void DumpVars(IXmlNodePtr node, std::string &tmp);
	std::string DumpElements();
	std::string DumpElement(IXmlNodePtr elem );
	std::string DumpNamedElements(StringVector elems);
	std::string DumpType(IXmlNodePtr & type);
	std::string DumpTypes(StringVector excludetypes);
	std::string DumpNamedTypes(StringVector types);
	std::string DumpSubstitutions();
	std::string DumpSubstitutionAliases();

private:
	std::string tabs;
	int _nChoice;
};


EXP_DECLARE_SMARTPOINTER(SymbolTable) 
