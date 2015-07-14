//
// Symbol.cpp
//
#pragma GCC diagnostic ignored "-Wcomment"

#include "stdafx.h"

#include "Symbol.h"
#include "boost/lexical_cast.hpp"
#include <stdarg.h>
#include "StdStringFcn.h"
//array_type A(boost::extents[3][4][2]);

#undef E_NOTIMPL 
#undef E_FAIL
#undef S_OK 
#undef FAILED

#define WIN32_LEAN_AND_MEAN
#define StrFormat  StdStringFormat
//#include "comutil.h"
//#define OUTPUT_DEBUG_STRING(X)
#ifdef WINDOWS
void OUTPUT_DEBUG_STRING(std::string X) {OutputDebugString(X.c_str());}
void OUTPUT_ERROR_STRING(std::string X) {OutputDebugString(X.c_str());}
#else
void OUTPUT_DEBUG_STRING(std::string X) {std::cerr << X;}
void OUTPUT_ERROR_STRING(std::string X) {std::cerr << X;}
#endif
//#define OUTPUT_ERROR_STRING(X) 

#ifdef WINDOWS
#ifdef _DEBUG
#pragma comment (lib, "comsuppd.lib")
# pragma comment(lib, "comsuppwd.lib")
#else
#pragma comment (lib, "comsupp.lib")
# pragma comment(lib, "comsuppw.lib")
#endif
#endif

#if 0
// XML Schema simple types with facets
anyURI
base64Binary
boolean
byte
date
dateTime
decimal
double
duration
ENTITIES
ENTITY
float
gDay
gMonth
gMonthDay
gYear
gYear
gYearMonth
gYearMonth
hexBinary
ID
IDREF
IDREFS#include <stdafx.h>
int
integer
language
long
Name
NCName
negativeInteger
NMTOKEN
NMTOKENS
nonNegativeInteger
nonPositiveInteger
normalizedString
NOTATION
positiveInteger
QName
short
string
time
token
unsignedByte
unsignedInt
unsignedLong
unsignedShort
#endif

std::vector<ISymbolPtr> ISymbol::symbols;




ISymbol::ISymbol()
{
	Parsed()=0; 
	Visited()=0; 
	Type()=(SymbolType) -1; 
	ListType()=unknown_; 
	Dimension()=0;
	SimpleType()=true;
	Required()=false;
	Abstract()=false;
	Compositor()=0;
	DerivedType() = XercesAdditions::DERIVATION_NONE;
	XercesType() = XercesAdditions::NO_DECLARATION;
	Global()=false;
	SqlCount()=0;
	SubstitutionGroupAffiliation().clear();
	symbols.push_back(this);
	Variable()=NULL;
	SimpleContent()=false;
	List()=false;
	Atomic()=false;
	Level()=0;
	ListSize()=0;
	intrusive_ptr_add_ref((IExpress *) symbols.back().get());
}
void ISymbol::DeepCopy(ISymbolPtr c)
{
	c->Name()=Name();

	c->Abstract() = Abstract();
	c->Atomic() = Atomic();
	c->Attributes() = Attributes();
	c->BaseTypeName() = BaseTypeName();
	c->Compositor() = Compositor();
	c->DerivedType() = DerivedType();
	c->Dimension() = Dimension();
	c->Enumerations() = Enumerations();
	c->FacetKinds() = FacetKinds();
	c->Facets() = Facets();
	c->Global() = Global();
	c->Level() = Level();
	c->List() = List();
	c->ListSize() = ListSize();
	c->ListType() = ListType();
	c->LowerBounds() = LowerBounds();
	c->Namespace() = Namespace();
	c->Optional() = Optional();
	c->OuterElementName() = OuterElementName();
	c->OuterElementTypeName() = OuterElementTypeName();
	c->Parent() = Parent();
	c->Parsed() = Parsed();
	c->PrimitiveType() = PrimitiveType();
	c->Required() = Required();
	c->SimpleContent() = SimpleContent();
	c->SimpleType() = SimpleType();
	c->SqlCount() = SqlCount();
	c->SqlType() = SqlType();
	c->SubstitutionGroupAffiliation() = SubstitutionGroupAffiliation();
	c->SubstitutionList() = SubstitutionList();
	c->SubTypes() = SubTypes();
	c->SuperTypes() =  SuperTypes();
	c->Type() = Type();
	c->TypeName() = TypeName();
	c->UpperBounds() = UpperBounds();
	c->Variable() = Variable();
	c->Visited() = Visited();
	c->XercesType() = XercesType();
}

void ISymbol::MergeTypeInfo(ISymbolPtr c)
{
	c->TypeName() = Name();
	// Ignore, Name(), Namespace(), and Type()

	c->Abstract() = Abstract();
	c->Atomic() = Atomic();
	c->Attributes() = Attributes();
	c->BaseTypeName() = BaseTypeName();
	c->Compositor() = Compositor();
	c->DerivedType() = DerivedType();
	c->Enumerations() = Enumerations();
	c->FacetKinds() = FacetKinds();
	c->Facets() = Facets();
	c->Global() = Global();
	c->Level() = Level();
	c->List() = List();
	c->ListSize() = ListSize();
	c->ListType() = ListType();
	c->Optional() = Optional();
	c->Parent() = Parent();
	c->Parsed() = Parsed();
	c->PrimitiveType() = PrimitiveType();
	c->Required() = Required();
	c->SimpleContent() = SimpleContent();
	c->SimpleType() = SimpleType();
	c->SqlCount() = SqlCount();
	c->SqlType() = SqlType();
	c->SubstitutionGroupAffiliation() = SubstitutionGroupAffiliation();
	c->SubstitutionList() = SubstitutionList();
	c->SubTypes() = SubTypes();
	c->SuperTypes() =  SuperTypes();

	c->Variable() = Variable();
	c->Visited() = Visited();
	c->XercesType() = XercesType();
	
	// These are element particle definitions
	// c->Dimension() = Dimension(); // always 1
	//c->LowerBounds() = LowerBounds();
	//c->UpperBounds() = UpperBounds();
	//c->OuterElementName() = OuterElementName();
	// c->OuterElementTypeName() = OuterElementTypeName();

}
bool ISymbol::IsArray() 
{
	//int min=-2;
	//if(LowerBounds().size()>0) 
	//{
	//	bOptional=LowerBounds().at(0)==0;
	//	min=LowerBounds().at(0);
	//}
	int max=-2;
	if (UpperBounds().size() > 0)
	{ 
		max=UpperBounds().at(0);
		if(max==-1)
			max=1000; // unbounded
	}
	return max>1; 
} // SqlName().find("__") != std::string::npos; }

CVarDefPtr CVarDef::FindVarDef(IXmlNodePtr pNode, std::string &name )
{
	if(pNode.get() == NULL)
		return NULL;
	CVarDefPtr vardef;
	for(size_t j=0; j< pNode->vars.size(); j++)
	{
		vardef = pNode->vars[j];
		std::cout << vardef->Name() << "\n";
		if(vardef->TypeName() == "ParticleType")
		{
			CVarDefPtr var = FindVarDef(vardef->GetXmlNodePtr(), name);
			if(var!=NULL)
				return var;
		}
		else if(vardef->TypeName() == "DerivedType")
		{
			CVarDefPtr var = FindVarDef(vardef->GetXmlNodePtr(), name);
			if(var!=NULL)
				return var;
		}		
		else if (vardef->Name() == name)
		{
			return vardef;
		}

	}
	return NULL;
}


std::string ISymbol::SubstitutionBase()
{
	ISymbolPtr symbol = this;
	ISymbolPtr lastsymbol=symbol;
	std::string name =symbol->SubstitutionGroupAffiliation();
	while(!name.empty())
	{
		lastsymbol=symbol;
		size_t i;
		for(i=0; i< symbols.size(); i++)
		{
			assert(symbols[i]!=NULL);
			// Beware - some of the symbols can be deleted by intrusive pointer :(
			if(symbols[i]->Name() == name)
			{
				symbol=symbols[i];
				name=symbol->SubstitutionGroupAffiliation();
				break;
			}
		}
		if(i>=symbols.size())
			break;

	}
	return lastsymbol->SubstitutionGroupAffiliation();
}
