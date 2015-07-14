//
// SymbolTable.cpp
//

// This software was developed by U.S. Government employees as part of
// their official duties and is not subject to copyright. No warranty implied 
// or intended.


#include "SymbolTable.h"
#include "StdStringFcn.h"
#include <iostream>


void SymbolTable::Clear() 
{ 
	_includes.clear(); 
	_schemas.clear();

	Types().clear(); 
	NamedTypes().clear(); 
	Entities().clear(); 
	NamedEntities().clear();
	Symbols().clear(); 
	Enumerations().clear();
	_nChoice=0;
}

bool IsOdd (int i) {
  return ((i%2)==1);
}

std::vector<ISymbolPtr>::iterator SymbolTable::FindEnumeration(std::string name)
{
	ISymbolPtr symbol= new ISymbol();
	symbol->Name()=name;
	std::vector<ISymbolPtr>::iterator it = std::find( Enumerations().begin(),  Enumerations().end(), symbol);
	return it;

	// side effect should delete symbol...
}


ISymbolPtr SymbolTable::CreateEnumeration(std::string tname,std::string tbasetype)
{
	//std::vector<ISymbolPtr>::iterator it = std::find( Enumerations().begin(),  Enumerations().end(), symbol);
	//if(it!=  Enumerations().end())
	//{
	//	_asm int 3;
	//}
	std::vector<ISymbolPtr>::iterator it;
	if( (it= FindEnumeration(tname)) !=  Enumerations().end() )
		return *it;

	ISymbolPtr symbol= new ISymbol();
	symbol->Name()=tname;
	symbol->BaseTypeName()=tbasetype;
	Enumerations().push_back(symbol);
	return symbol;
}
void SymbolTable::AddSymbol(ISymbolPtr symbol)
{	
	Symbols().push_back(symbol);	
}

ISymbolPtr SymbolTable::FindSymbol(std::string name, std::string anamespace )
{
	for(size_t i=0; i<Symbols().size(); i++) 
	{
		ISymbolPtr symbol = Symbols().at(i);
		if(symbol->Name() == name)
		{
			if(anamespace=="")
				return symbol;
			if(symbol->Namespace() == anamespace)
				return symbol;
		}
	}
	return NULL;
}

ISymbolPtr SymbolTable::FindType(std::string name)
{
	// Type names better be unique or chaos
	for(size_t i=0; i<Types().size(); i++) 
	{
		ISymbolPtr symbol = Types().at(i);
		if(symbol->Name() == name)
			return symbol;
	}
	return NULL;
}

ISymbolPtr  SymbolTable::FindVarDefSymbolInclDerived(IXmlNodePtr pNode, std::string &name )

{
	// THIS IS A MESS
	// Cant have null node
	if(pNode.get() == NULL)
		return NULL;
	//
	// Legal symbol?
	ISymbolPtr symbol = FindSymbol(name);
	if(symbol.get() == NULL)
		return NULL;

	ISymbolPtr symboltype = FindType(symbol->TypeName());
	assert(symboltype.get()!=NULL);
	std::vector<std::string> derived = symboltype->SubTypes();
	derived.insert(derived.begin(), symboltype->Name());

	CVarDefPtr vardef;
	for(size_t j=0; j< pNode->vars.size(); j++)
	{
		vardef = pNode->vars[j];
		if(vardef->Type() == special_)  
		{
			ISymbolPtr symbol = FindVarDefSymbolInclDerived(vardef->GetXmlNodePtr(), name);
			if(symbol.get()!=NULL)
				return symbol;
		}
		else 
		{
			//// Now find type, since not a "particle" type
			ISymbolPtr vardeftype = FindType(vardef->TypeName());
			if(vardeftype.get()== NULL)
				continue;
			std::vector<std::string>::iterator it; 
			if ((it=find(derived.begin(), derived.end(), vardeftype->Name())) != derived.end())
			{
				return FindType(*it);
			}
		}
	}
	return NULL;
}
/** Use vardefs in node pointer to search for matching symbol. Use derived symbols
    when matching, as they too are legal matches in a var def.
	*/
ISymbolPtr SymbolTable::FindVarDefSymbol(IXmlNodePtr pNode, std::string &name )
{
	// THIS IS A MESS
	// Cant have null node
	if(pNode.get()== NULL)
		return NULL;
	//
	// Legal symbol?
	ISymbolPtr symbol = FindSymbol(name);
	if(symbol.get()== NULL)
		return NULL;

	CVarDefPtr vardef;
	for(size_t j=0; j< pNode->vars.size(); j++)
	{
		vardef = pNode->vars[j];
		if(vardef->TypeName() == "ParticleType")
		{
			ISymbolPtr symbol = FindVarDefSymbol(vardef->GetXmlNodePtr(), name);
			if(symbol.get()!=NULL)
				return symbol;
		}
		else if(vardef->TypeName() == "DerivedType")
		{
			ISymbolPtr symbol = FindVarDefSymbol(vardef->GetXmlNodePtr(), name);
			if(symbol.get()!=NULL)
				return symbol;
		}		
		else 
		{
			if(pNode->vars[j]->Name() == name)
			{
				return pNode->vars[j];  //GetXmlNodePtr()
			}
		}
	}
	return NULL;
}

IXmlNodePtr SymbolTable::FindTypeNode(std::string name)
{
	for(size_t i=0; i<Types().size(); i++) 
	{
		if(Types().at(i)->Name() == name)
			return Types().at(i).get();
	}
	return NULL;
}
StringVector SymbolTable::FindTypeSupers(std::string name)
{
	StringVector supers;
	for(size_t i=0; i<Types().size(); i++) 
	{
		if(Types().at(i)->BaseTypeName() == name)
			supers.push_back(Types().at(i)->Name());
	}
	return supers;
}

CVarDefPtr  SymbolTable::CreateVarDef(std::string name, std::string anamespace, SymbolType type)
{
	CVarDefPtr var = new CVarDef;
	var->Name()=name; 
	var->Type()=type; 
	var->Namespace()=anamespace; 
	AddSymbol((ISymbolPtr)var);
	return var;

}
IXmlNodePtr  SymbolTable::CreateTypeNode(std::string name,  std::string anamespace, std::string basetype, SymbolType type)
{
	IXmlNodePtr node = FindTypeNode(name);
	if( node != NULL)
	{
		if(node->Type() == (SymbolType) -1) node->Type()=type;
		if(node->Namespace().empty())  node->Namespace()=anamespace;
		if(node->BaseTypeName().empty())  node->BaseTypeName()=basetype;
		return node;
	}
	node = new IXmlNode;
//	name = ExpMangle(name); 
	this->Types().push_back(node);
	node->Name()=name; 
	node->Type()=type;
	node->Namespace()=anamespace;
	node->BaseTypeName()=basetype;
	NamedTypes().insert ( std::pair<std::string, IXmlNodePtr>(name, node)); // works multimap or map
	AddSymbol(node);
	return node;
}
IXmlNodePtr  SymbolTable::CreateXmlNode()
{
	IXmlNodePtr var = new IXmlNode;

	AddSymbol((ISymbolPtr) var);
	return var;
}
IXmlNodePtr SymbolTable::FindNamedEntity(std::string name, std::string outertypename)
{
	//NamedEntityIterator it = NamedEntities().find(name);
	//std::pair <NamedEntityIterator, NamedEntityIterator> ret;
    NamedEntityIterator it = this->NamedEntities().find(name);
	for (; it!=NamedEntities().end() &&  (*it).first == name; ++it)
	{
		IXmlNodePtr node = (*it).second;
		if(node->Name() == name && outertypename.empty())
			return node;
		if(node->Name() == name && outertypename==node->OuterElementName())
			return node;
	}
	return NULL;
}
IXmlNodePtr SymbolTable::FindNamedEntityInType(std::string name, std::string outertypename)
{
	//NamedEntityIterator it = NamedEntities().find(name);
	//std::pair <NamedEntityIterator, NamedEntityIterator> ret;
    NamedEntityIterator it = this->NamedEntities().find(name);
	for (; it!=NamedEntities().end() &&  (*it).first == name; ++it)
	{
		IXmlNodePtr node = (*it).second;
		if(node->Name() == name && outertypename.empty())
			return node;
		if(node->Name() == name && outertypename==node->OuterElementTypeName())
			return node;
	}
	return NULL;
}
IXmlNodePtr SymbolTable::FindNamedEntityInEntity(std::string name, std::string outerentityname)
{
	// This is the list of potential entities
    NamedEntityIterator it = this->NamedEntities().find(name);
	for (; it!=NamedEntities().end() &&  (*it).first == name; ++it)
	{
		IXmlNodePtr node = (*it).second;
		if(node->Name() == name && outerentityname.empty())
			return node;
		
		ISymbolPtr type = node->Parent();  // this is a outerentityname type of this entity
		if(node->Global())
			continue;
		std::string stypename = type->Name();
		
		// search named entities for matching type name and entity
		// sadly search entire list ...
	    NamedEntityIterator j = this->NamedEntities().find(outerentityname);
		for(; j!=NamedEntities().end() &&  (*j).first == outerentityname; ++j)
		{
			if( (*j).second->TypeName() == stypename)
			{
				return node;
			}
		}
	}
	return NULL;
}

IXmlNodePtr  SymbolTable::CreateEntityDef(std::string name, std::string anamespace, SymbolType type)
{
	IXmlNodePtr var = new IXmlNode;
	//name = ExpMangle(name); 
	//NamedEntities()[name]= var; 
	var->Name()= name; 
	var->Namespace()=anamespace;
	var->Type()=type;
	AddSymbol((ISymbolPtr) var);
	Entities().push_back(var);
	NamedEntities().insert ( std::pair<std::string, IXmlNodePtr>(name, var));
	return var;
}
//////////////////////////////////////////////////////////////////
void SymbolTable::DumpVars(IXmlNodePtr node, std::string &tmp)
{
	if(node->SimpleType())
		return;

	tabs+="\t";

	if(node && node->vars.size()>0)
	{
		for(size_t j=0; j< node->vars.size(); j++)
		{
			CVarDefPtr s2 = node->vars[j];
			ISymbolPtr symbol = s2;
			if(s2->TypeName() == "ParticleType")
			{
				tmp+=StrFormat("%s Group:\n",	tabs.c_str());
				DumpVars(s2->GetXmlNodePtr(),tmp);
				continue;
			}
			else if(s2->TypeName() == "DerivedType")
			{
				tmp+=StrFormat("%s Derived:%s\n",	tabs.c_str(), s2->Name().c_str());
				//DumpVars(s2->GetXmlNodePtr(),tmp);
				symbol=s2->GetXmlNodePtr();
				// FIXME: could take the vars list from the symbol and expand it
				DumpVars(s2->GetXmlNodePtr(),tmp);
				continue;
			}

			if(symbol->LowerBounds().size()<1) symbol->LowerBounds().push_back(-2);
			if(symbol->UpperBounds().size()<1) symbol->UpperBounds().push_back(-2);
			tmp+=StrFormat("%s VarName=%s Type=%s TypeName=%s  Basetype=%s [%d,%d]\n", 
				tabs.c_str(),
				symbol->Name().c_str(), 
				GetTypeString(symbol->Type()).c_str(), 
				symbol->TypeName().c_str(), 
				symbol->BaseTypeName().c_str(), 
				symbol->LowerBounds().at(0), 
				symbol->UpperBounds().at(0));
			
		}
	}
	tabs=tabs.substr(1);
}
std::string SymbolTable::DumpType(IXmlNodePtr & type)
{
	std::string  tmp;
	if(type.get()==NULL)
		return tmp;
	if(type->LowerBounds().size()<1) type->LowerBounds().push_back(-2);
	if(type->UpperBounds().size()<1) type->UpperBounds().push_back(-2);
	if ( type->Type()==enumeration_)
	{
		tmp+=StrFormat("Name=%s Type=%s TypeName=%s\n\t\tEnumeration: ", 
			type->Name().c_str(), 
			type->TypeName().c_str(), 
			GetTypeString(type->Type()).c_str());
		for(size_t m=0; m< type->Enumerations().size(); m++ ) tmp+= type->Enumerations().at(m) + " ";
		tmp+="\n";
	}
	else
	{
		tmp+=StrFormat("Name=%s TypeName=%s Type=%s Type=%s Content=%s  BaseType=%s Abstract=%d [%d,%d]\n", 
			type->Name().c_str(),
			GetTypeString(type->Type()).c_str(), 
			type->TypeName().c_str(), 
			type->SimpleType() ? "Simple": "Complext",
			type->SimpleContent() ? "Simple": "Complex",
			type->BaseTypeName().c_str(), 
			type->Abstract(), 
			type->LowerBounds().at(0), 
			type->UpperBounds().at(0));

		// Attribute list
		if(type->Attributes().size()>0) tmp+="\tAttributes: ";
		for(size_t k=0; k< type->Attributes().size(); k++)
			tmp+=StrFormat("%d. %s(%d) ", k, 
			type->Attributes().at(k)->Name().c_str(), 
			type->Attributes().at(k)->Required()); 
		if(type->Attributes().size()>0) tmp+="\n";

		// Subtypes list (inheritance chain - only 1 inherited member in XSD)
		if(type->SubTypes().size()>0) tmp+="\tSubtypes: ";
		for(size_t k=0; k< type->SubTypes().size(); k++)
			tmp+=StrFormat("%s->",  type->SubTypes().at(k).c_str()); 
		if(type->SubTypes().size()>0) tmp+="\n";

		// Supertypes list (inheritance chain
		if(type->SuperTypes().size()>0) tmp+="\tSupertypes: (";
		for(size_t k=0; k< type->SuperTypes().size(); k++)
			tmp+=StrFormat("%s, ",  type->SuperTypes().at(k).c_str()); 
		if(type->SuperTypes().size()>0) tmp+=")\n";
	}
	DumpVars( type.get(), tmp);
	return tmp;
}

std::string SymbolTable::DumpTypes(StringVector excludetypes)
{
	std::string tmp;  //std::vector<IXmlNodePtr>
	std::sort(Types().begin(), Types().end(), stepnodecomp);
	for(size_t i=0; i< Types().size(); i++)
	{
		IXmlNodePtr type = Types().at(i);
		if(type.get()==NULL)
			continue;
		if(std::find(excludetypes.begin(), excludetypes.end(), type->Name()) != excludetypes.end())
		{
			std::cerr << "Skip " << type->Name() << std::endl;
			continue;
		}
		tmp+=DumpType(type);
	}
	return tmp;
}
std::string SymbolTable::DumpNamedTypes(StringVector types)
{
	std::string tmp;  //std::vector<IXmlNodePtr>
	std::sort(Types().begin(), Types().end(), stepnodecomp);
	for(size_t i=0; i< types.size(); i++)
	{
		IXmlNodePtr type = FindTypeNode(types[i]);
		tmp+=DumpType(type);
	}
	return tmp;
}
std::string SymbolTable::DumpNamedElements(StringVector elems)
{
	std::string tmp;  
	for(size_t i=0; i< elems.size(); i++)
	{
		IXmlNodePtr elem = FindNamedEntity(elems[i]);
		 tmp+=DumpElement(elem);
	}
	return tmp;
}
std::string SymbolTable::DumpElement(IXmlNodePtr elem )
{
	std::string tmp; 
	if(elem.get()==NULL)
		return tmp;
	if(elem->LowerBounds().size()<1) elem->LowerBounds().push_back(-2);
	if(elem->UpperBounds().size()<1) elem->UpperBounds().push_back(-2);
	tmp+=StrFormat("Name=%s [%d,%d] TypeName=%s Type=%s Type=%s Content=%s Basetype=%s Global=%s Parent=%s  OuterElementName=%s OuterElementTypeName=%s\n", 
		elem->Name().c_str(),
		elem->LowerBounds().at(0), 
		elem->UpperBounds().at(0),		
		elem->TypeName().c_str(), 
		GetTypeString(elem->Type()).c_str(), 
		elem->SimpleType()? "Simple": "Complex",
		elem->SimpleContent()? "Simple": "Complex",
		elem->BaseTypeName().c_str(),
		elem->Global()? "True": "False",
		elem->Parent().get() == NULL ? "" : elem->Parent()->Name().c_str(),
		elem->OuterElementName().c_str(),
		elem->OuterElementTypeName().c_str()
		);

	if(!elem->SubstitutionGroupAffiliation().empty() )
	{
		tmp+=StrFormat("\tSubstitutionGroupAffiliation=%s\n",elem->SubstitutionGroupAffiliation().c_str() );
	}
	if(elem->SubstitutionList().size() > 0)
	{
		tmp+=StrFormat("\tSubstitutionList");
		for(size_t i=0; i< elem->SubstitutionList().size(); i++)
			tmp+=StrFormat(":%s",  elem->SubstitutionList().at(i).c_str());
		tmp+="\n";
	}
	return tmp;
}
std::string SymbolTable::DumpElements()
{
	std::string tmp;  //std::vector<IXmlNodePtr>
	std::sort(Entities().begin(), Entities().end(), stepnodecomp);
	for(size_t i=0; i< Entities().size(); i++)
	{
		tabs.clear();
		IXmlNodePtr elem = Entities().at(i);
		tmp+=DumpElement(elem);
	}
	return tmp;
}
std::string SymbolTable::DumpSubstitutions()
{
	std::string tmp;  //std::vector<IXmlNodePtr>
	std::sort(this->Entities().begin(), this->Entities().end(), stepnodecomp);
	for(size_t i=0; i< Entities().size(); i++)
	{
		if(Entities().at(i)->SubstitutionList().size()>0)
		{
			IXmlNodePtr elem = Entities().at(i);
			tmp+= elem->Name() + "=";
			for(size_t j=0; j< elem->SubstitutionList().size(); j++)
			{
				if(j>0) tmp+=",";
				tmp+=elem->SubstitutionList().at(j) ;
			}
			tmp+="\n";
		}
	}
	return tmp;
}
std::string SymbolTable::DumpSubstitutionAliases()
{
	std::string tmp;  //std::vector<IXmlNodePtr>
	for(MapStringAndStringIterator it = SubstitutionGroup().begin(); it!= SubstitutionGroup().end(); it++)
		tmp+= (*it).first + "=" + (*it).second + "\n" ;

	return tmp;
}
