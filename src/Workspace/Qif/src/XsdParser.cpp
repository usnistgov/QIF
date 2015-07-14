//
//  XsdParser.cpp
//

#include "XsdParser.h"
#include "XercesUtils.h"
#include <iostream>
#include <fstream>
#include <xercesc/dom/DOMAttr.hpp>
#include <xercesc/framework/psvi/XSValue.hpp>
#include <xercesc/framework/psvi/XSAttributeDeclaration.hpp>
#include <xercesc/framework/psvi/XSAttributeUse.hpp>
#include <xercesc/framework/psvi/XSSimpleTypeDefinition.hpp>
#include <xercesc/framework/psvi/XSFacet.hpp>
#include <xercesc/framework/psvi/XSModelGroupDefinition.hpp>

#define CLEANFETCH(Y,X,Z) try{ Y=X; } catch(...) { \
		printf("Bad CLEANFETCH!");\
	Y=Z; }
static std::string GetText(const XMLCh* xstr)
{
	if (xstr==NULL) return "";
	return	StrX(xstr).localForm();
}
static std::string ToStr( const XMLCh* toTranscode ) 
{  
	return XMLString::transcode(toTranscode); 
}
static XMLCh *ToXMLCh ( std::string str)
{
	return  XMLString::transcode(str.c_str());
}

void CXsdParser::XsdParse(std::string inxsdfilename )
{
	xsdFile             = inxsdfilename.c_str();
	try
	{
		grammarPool = new XMLGrammarPoolImpl(XMLPlatformUtils::fgMemoryManager);

		parser = XMLReaderFactory::createXMLReader(XMLPlatformUtils::fgMemoryManager, grammarPool);
		parser->setFeature(XMLUni::fgSAX2CoreNameSpaces, true);
		parser->setFeature(XMLUni::fgXercesSchema, true);
		parser->setFeature(XMLUni::fgXercesHandleMultipleImports, true);
		parser->setFeature(XMLUni::fgXercesSchemaFullChecking, schemaFullChecking);
		parser->setFeature(XMLUni::fgSAX2CoreNameSpacePrefixes, false);
		parser->setFeature(XMLUni::fgSAX2CoreValidation, true);
		parser->setFeature(XMLUni::fgXercesDynamic, true);
		parser->setProperty(XMLUni::fgXercesScannerName, (void *)XMLUni::fgSGXMLScanner);

		XPrintHandler handler;
		parser->setErrorHandler(&handler);
		//xsdFile="D:\\michalos\\My Work\\QIF\\xsd\\MSVC QIF_2.0_XMLSchemaFiles\\QIFApplications\\QIFDocument.xsd";
		parser->loadGrammar(xsdFile, Grammar::SchemaGrammarType, true);

		if (handler.getSawErrors())
		{
			handler.resetErrors();
		}
		else
		{
			parsedOneSchemaOkay = true;
		}
		if (parsedOneSchemaOkay)
		{
			bool updatedXSModel;
			xsModel = grammarPool->getXSModel(updatedXSModel);
		}
	}
	catch(...)
	{

	}
}

bool CXsdParser::SaveParseTree(std::string inxsdfilename, std::string outfilename )
{
	xsdFile             = inxsdfilename.c_str();
	try
	{
		grammarPool = new XMLGrammarPoolImpl(XMLPlatformUtils::fgMemoryManager);

		parser = XMLReaderFactory::createXMLReader(XMLPlatformUtils::fgMemoryManager, grammarPool);
		parser->setFeature(XMLUni::fgSAX2CoreNameSpaces, true);
		parser->setFeature(XMLUni::fgXercesSchema, true);
		parser->setFeature(XMLUni::fgXercesHandleMultipleImports, true);
		parser->setFeature(XMLUni::fgXercesSchemaFullChecking, schemaFullChecking);
		parser->setFeature(XMLUni::fgSAX2CoreNameSpacePrefixes, false);
		parser->setFeature(XMLUni::fgSAX2CoreValidation, true);
		parser->setFeature(XMLUni::fgXercesDynamic, true);
		parser->setProperty(XMLUni::fgXercesScannerName, (void *)XMLUni::fgSGXMLScanner);

		XPrintHandler handler;
		parser->setErrorHandler(&handler);
		//xsdFile="D:\\michalos\\My Work\\QIF\\xsd\\MSVC QIF_2.0_XMLSchemaFiles\\QIFApplications\\QIFDocument.xsd";
		parser->loadGrammar(xsdFile, Grammar::SchemaGrammarType, true);

		if (handler.getSawErrors())
		{
			handler.resetErrors();
		}
		else
		{
			parsedOneSchemaOkay = true;
		}
	}
	catch(...)
	{

	}
	return parsedOneSchemaOkay;
}

void CXsdParser::SaveParticleDimensions(ISymbolPtr  var, XSParticle *xsParticle)
{
	if (!xsParticle) 
	{
		return;
	}
	var->Dimension()=1;
	var->LowerBounds().push_back(xsParticle->getMinOccurs());
	if(xsParticle->getMaxOccursUnbounded())
		var->UpperBounds().push_back(-1);
	else
		var->UpperBounds().push_back(xsParticle->getMaxOccurs());     

}

void CXsdParser::BuildParticle(IXmlNodePtr type, XSParticle *xsParticle)
{
	if (!xsParticle) 
	{
		return;
	}
	type->Level()++;
	//if(type->Name() == "PrimaryUnitsType")
	//{
	//	_asm int 3;
	//}

	XSParticle::TERM_TYPE termType = xsParticle->getTermType();
	if (termType == XSParticle::TERM_ELEMENT) 
	{
		XSElementDeclaration *xsElement = xsParticle->getElementTerm();
		std::string ename = (xsElement->getName()!=NULL)? StrX(xsElement->getName()).localForm() : "";
		std::string enamespace =(xsElement->getNamespace()!=NULL)? StrX(xsElement->getNamespace()).localForm() : ""; 
	
		// Inner element definition
		IXmlNodePtr elem = _symbols.CreateEntityDef(ename, enamespace, entity_);
		CVarDefPtr  var = _symbols.CreateVarDef(ename, enamespace, vardef_);

		var->Name()=ename; 
		var->Namespace()=enamespace;
		type->vars.push_back(var);

		// only get dimensions from particle
		elem->Dimension()=1;
		elem->LowerBounds().push_back(xsParticle->getMinOccurs());
		if(xsParticle->getMaxOccursUnbounded())
			elem->UpperBounds().push_back(-1);
		else
			elem->UpperBounds().push_back(xsParticle->getMaxOccurs());    

		// Now parse specifics to this type definition, complex vs simple (type/content)
		XSTypeDefinition * 	 xsTypeDef =  xsElement->getTypeDefinition() ;
		std::string tname = (xsTypeDef->getName()!=NULL)? StrX(xsTypeDef->getName()).localForm() : "";
		IXmlNodePtr typeSymbol=_symbols.CreateTypeNode(tname,  enamespace, "", type_);
		ParseXsdType(xsTypeDef, typeSymbol);

		// This is overwriting the bounds information...
		typeSymbol->MergeTypeInfo(elem);
		elem->Global()=false; // embedded type/element definition - Not global
		elem->Level()  = type->Level();

		// Sadly, some elements only have type names as outer identifying pairings.
		// This really defines an embedded element (or attribute). AND must be saved.
		elem->Variable()=var;
		elem->Parent()= type;  // type is really "parent", ???
		if(!elem->SimpleType())
			ParseAttributes((XSComplexTypeDefinition *)xsTypeDef, elem);

		// Dont think embedded type can have attributes - but if complex can...

		// Recurse backward till findname type/element
		ISymbolPtr  layer = type;
		while(layer && layer->Name().empty())
			layer=layer->Parent();

		CLEANFETCH(elem->OuterElementTypeName() , layer->Name(), "");

		elem->DeepCopy(var);
		var->SetXmlNodePtr(elem);
		SaveParticleDimensions(var, xsParticle);
		SaveParticleDimensions(elem, xsParticle);

	}
	else if (termType == XSParticle::TERM_MODELGROUP)
	{
		XSModelGroup *xsModelGroup = xsParticle->getModelGroupTerm();
		XSModelGroup::COMPOSITOR_TYPE compositorType = xsModelGroup->getCompositor();
		SymbolType symbol; 
		//var->SimpleType() = false;

		// Not using choice versus selection now

		if(compositorType == XSModelGroup::COMPOSITOR_SEQUENCE )
			symbol=sequence_;
		else
			symbol=choice_;

		//type->Compositor() = compositorType;

		//type->vars.push_back(var);
		XSParticleList *xsParticleList = xsModelGroup->getParticles();
		for (unsigned i = 0; i < xsParticleList->size(); i++) 
		{
			XSParticle * xsParticle; 
			XSElementDeclaration *  elemterm;
			std::string elemname, particlename;
			xsParticle= xsParticleList->elementAt(i);
			particlename=  (xsParticle->getName()!=NULL)? StrX(xsParticle->getName()).localForm() : "";
			if (xsParticle->getTermType() == XSParticle::TERM_ELEMENT) 
			{
				elemterm= 	xsParticle->getElementTerm ();
				elemname=  (elemterm->getName()!=NULL)? StrX(elemterm->getName()).localForm() : "";
				// just add the element as another variable, dont nest
				BuildParticle(type, xsParticle); // side effect: will do	type->vars.push_back(var);

				continue;
			}
			BuildParticle(type, xsParticleList->elementAt(i));
		}
	}
}

void CXsdParser::CreateDerivationVariable(IXmlNodePtr typeSymbol, std::string tbasetype, std::string tnamespace, bool bSimple)
{
	std::vector<CVarDefPtr> vars = typeSymbol->vars;
	for(size_t i=0; i< vars.size(); i++)
		if(vars[i]->Name() == typeSymbol->BaseTypeName())
			return; 

	CVarDefPtr  var = _symbols.CreateVarDef(typeSymbol->BaseTypeName(), tnamespace, special_);
	var->TypeName() = "DerivedType";
	var->Parent()=typeSymbol;
	var->XercesType() = XercesAdditions::TYPE_DEFINITION;
	typeSymbol->vars.push_back(var); // save this "extension" variable

	//  Derived element type creation for  typeSymbol
	// This will inherit all the variable information of the given type
	IXmlNodePtr elem2=_symbols.CreateTypeNode(typeSymbol->BaseTypeName(),  tnamespace);
	elem2->Name()=typeSymbol->BaseTypeName(); // This is wrong should be element name
	elem2->TypeName()=typeSymbol->BaseTypeName();
	elem2->Parent()=typeSymbol;
	elem2->SimpleType()=bSimple;
	elem2->DerivedType() = XercesAdditions:: DERIVATION_INSTANCE;
	// we'll assume inherited means element, although really a type
	elem2->XercesType() = XercesAdditions::ELEMENT_DECLARATION;  
	elem2->Variable()=var;

	var->SetXmlNodePtr(elem2.get()); // push inherited "class" as type definition variable

	typeSymbol->SubTypes().push_back(typeSymbol->BaseTypeName());
	elem2->SuperTypes().push_back(typeSymbol->Name());

}
XSTypeDefinition *CXsdParser::FindXsdType(std::string name)
{
	if (xsModel==NULL)
		return NULL; 
	XSNamedMap<XSObject> * xsTypeDefs = xsModel->getComponents(XSConstants::TYPE_DEFINITION);
	//xsElements =  xsModel->getComponentsByNamespace(XSConstants::ELEMENT_DECLARATION,XMLString::transcode("http://www.w3.org/2001/XMLSchema"));
	//      nameSpace="http://qifstandards.org/xsd/qif2"
	for (XMLSize_t i=0; i < xsTypeDefs->getLength(); i++) 
	{
		XSTypeDefinition *xsTypeDef = (XSTypeDefinition *) xsTypeDefs->item(i);
		std::string tname= StrX(xsTypeDef->getName()).localForm();
		if(tname == name)
			return xsTypeDef;
	}
	return NULL;
}

void CXsdParser::GetFacets(XSSimpleTypeDefinition * simpleType, ISymbolPtr symbol)
{
	XSFacetList * facetList	=	simpleType->getFacets ();
	for (XMLSize_t facetCount = 0; facetCount < facetList->size(); facetCount++) 
	{
		XSFacet * facet = (XSFacet *)facetList->elementAt(facetCount);
		XSSimpleTypeDefinition::FACET facetKind = 	facet->getFacetKind (); // length
		std::string facetname = GetText( facet->getLexicalFacetValue () );
		if(facetname.empty())
			continue;
		symbol->Facets().push_back(facetname);
		symbol->FacetKinds() = static_cast<XercesAdditions::FACET_TYPE>(facetKind);

	}
}
void CXsdParser::ParseAttributes(XSComplexTypeDefinition *xsTypeDef, IXmlNodePtr typeSymbol)
{
	// Extract all the attributes into variables
	XSAttributeUseList * 	attributes =  ((XSComplexTypeDefinition *)xsTypeDef)->getAttributeUses();
	if(attributes!=NULL)
	{
		for (XMLSize_t attrCount = 0; attrCount < attributes->size(); attrCount++) 
		{
			XSAttributeUse * attrUse = (XSAttributeUse *)attributes->elementAt(attrCount);
			XSAttributeDeclaration * attr = attrUse->getAttrDeclaration() ;
			XSSimpleTypeDefinition * simpletype=	attr->getTypeDefinition ();

			ISymbolPtr symbol= new ISymbol;
			symbol->Name() = StrX(attr->getName()).localForm();
			symbol->Required() = attrUse->getRequired();
			symbol->TypeName() = GetText(simpletype->getName());
			typeSymbol->Attributes().push_back(symbol);

			CVarDefPtr  var = _symbols.CreateVarDef(symbol->Name(), symbol->TypeName(), attribute_);
			var->Parent()=typeSymbol;
			var->Required() = attrUse->getRequired();
			// FIXME: check for attribute reference
			var->XercesType() = XercesAdditions::ATTRIBUTE_DECLARATION;
			typeSymbol->vars.push_back(var);

		}
	}
}
void CXsdParser::ParseList(XSSimpleTypeDefinition * xsSimpleTypeDef, ISymbolPtr typeSymbol)
{
	assert(xsSimpleTypeDef!=NULL);
	assert(typeSymbol!=NULL);

	const XMLCh*  listsize ;
	typeSymbol->List()=true;
	bool bb = xsSimpleTypeDef->getFinite(); 
	XSSimpleTypeDefinition * xsListType = 	xsSimpleTypeDef->getItemType ();
	// We will assume xsListType is non null, since we wouldnt call this unless its a list simple content type
	//xsListType->getDatatypeValidator()->getType();
	const XMLCh* sPrimitivetype;
	CLEANFETCH(sPrimitivetype,xsListType->getDatatypeValidator()->getTypeLocalName(),NULL);

	typeSymbol->PrimitiveType()= (sPrimitivetype!=NULL) ? ToStr(sPrimitivetype) : "";
	listsize = xsSimpleTypeDef-> getLexicalFacetValue(XSSimpleTypeDefinition::FACET_LENGTH) ;
	int m = (listsize!=NULL) ? atoi(ToStr(listsize).c_str()): -1;
	if(m>=0)
	{
		typeSymbol->ListSize()=m;
	}
}

void CXsdParser::BuildXsdTypes(StringVector types)
{
	for(size_t i=0; i< types.size(); i++)
	{
		XSTypeDefinition * xsTypeDef = FindXsdType(types[i]);
		BuildXsdType(xsTypeDef );
	}

}
void CXsdParser::BuildXsdType(XSTypeDefinition *xsTypeDef )
{
	if (xsTypeDef==NULL)
		return;

	std::string tname =  (xsTypeDef->getName()!=NULL) ? StrX(xsTypeDef->getName()).localForm() : "";
	std::string tnamespace = (xsTypeDef->getNamespace() != NULL) ? StrX(xsTypeDef->getNamespace()).localForm() : "" ;

	//if(tname == "SubgroupStatsValuesEnumType")
	//{
	//	_asm int 3;
	//}
	IXmlNodePtr typeSymbol=_symbols.CreateTypeNode(tname,  tnamespace);
	typeSymbol->Type()=type_;
	typeSymbol->TypeName()=tname;
	typeSymbol->Global()=true;
	if(xsTypeDef->getTypeCategory() == XSTypeDefinition::COMPLEX_TYPE )
	{
		XSComplexTypeDefinition *xsComplexTypeDef = (XSComplexTypeDefinition *) xsTypeDef;
		XSComplexTypeDefinition::CONTENT_TYPE contentType = xsComplexTypeDef->getContentType();
		if(contentType == XSComplexTypeDefinition::CONTENTTYPE_ELEMENT ||
			contentType == XSComplexTypeDefinition::CONTENTTYPE_MIXED )
		{
			typeSymbol->SimpleContent()=false;
			typeSymbol->SimpleType ()=false;
			ParseXsdType(xsTypeDef, typeSymbol);
			XSParticle *xsParticle=xsComplexTypeDef->getParticle();
			if (!xsParticle) 
				return;
			BuildParticle(typeSymbol, xsParticle);
		}
		else
		{
			ParseXsdType(xsTypeDef, typeSymbol);
		}
	}
	else
	{
		ParseXsdType(xsTypeDef, typeSymbol);
	}
}
void CXsdParser::ParseXsdType(XSTypeDefinition *xsTypeDef, IXmlNodePtr typeSymbol)
{
	assert (xsTypeDef!=NULL && typeSymbol != NULL);
	std::string tname =  (xsTypeDef->getName()!=NULL) ? StrX(xsTypeDef->getName()).localForm() : "";

	//if(tname == "SubgroupStatsValuesEnumType")
	//{
	//	_asm int 3;
	//}

	if(typeSymbol->Parsed())
		return;
	typeSymbol->Parsed()=true;
	std::string tnamespace = (xsTypeDef->getNamespace() != NULL) ? StrX(xsTypeDef->getNamespace()).localForm() : "" ;
	typeSymbol->TypeName() = tname;
	typeSymbol->Name() = tname;
	typeSymbol->Namespace() = tnamespace;

	XSTypeDefinition *xsBaseTypeDef = xsTypeDef->getBaseType();
	std::string tbasetype = (xsBaseTypeDef->getName() != NULL) ? StrX(xsBaseTypeDef->getName()).localForm() : "" ;
	typeSymbol->BaseTypeName() = tbasetype;

	if(xsTypeDef->getTypeCategory() == XSTypeDefinition::SIMPLE_TYPE)
	{
		typeSymbol->SimpleType() = true;
		typeSymbol->SimpleContent()=true;

		XSSimpleTypeDefinition * xsSimpleTypeDef= (XSSimpleTypeDefinition *) xsTypeDef;
		//XSSimpleTypeDefinition::VARIETY XSSimpleTypeDefinition::getVariety()
		GetFacets(xsSimpleTypeDef, typeSymbol);
		if( xsSimpleTypeDef->getVariety() == XSSimpleTypeDefinition::VARIETY_LIST)
		{
			ParseList(xsSimpleTypeDef, typeSymbol);
		}
		else if( xsSimpleTypeDef->getVariety() == XSSimpleTypeDefinition::VARIETY_ATOMIC)
		{
			typeSymbol->Atomic() = true;
			// assume atomic (actually could be union)
			XSSimpleTypeDefinition * xsPrimType =  xsSimpleTypeDef->getPrimitiveType() ;
			const XMLCh* sPrimitivetype;;
			CLEANFETCH(sPrimitivetype,xsPrimType->getDatatypeValidator()->getTypeLocalName(),NULL);
			typeSymbol->PrimitiveType()= (sPrimitivetype!=NULL) ? ToStr(sPrimitivetype) : "";
		}
		else
		{
			// FIXME: union type - not handled
			assert(0);
		}

		XSTypeDefinition *xsBaseTypeDef = xsSimpleTypeDef->getBaseType();
		typeSymbol->TypeName() =  (xsBaseTypeDef->getName()!=NULL) ? StrX(xsBaseTypeDef->getName()).localForm() : "";

		StringList * sl = xsSimpleTypeDef->getLexicalEnumeration	()	;
		if(sl!=NULL) 
		{
			if( _symbols.FindEnumeration(tname) ==  _symbols.Enumerations().end())
			{
				ISymbolPtr enumSymbol=	_symbols.CreateEnumeration(tname,tbasetype);
				typeSymbol->Type()=enumeration_;
				for (XMLSize_t k=0; k < sl->size(); k++) 
				{
					std::string e = StrX(sl->elementAt(k)).localForm();
					enumSymbol->Enumerations().push_back(e);
					typeSymbol->Enumerations().push_back(e);
				}
			}
		}
		else if(xsSimpleTypeDef->getNumeric	()	)
			typeSymbol->Type()=number_;
		else 
			typeSymbol->Type()=string_;

	}
	else  /** complex type */
	{
		typeSymbol->SimpleType() = false;
		XSComplexTypeDefinition *xsComplexTypeDef = (XSComplexTypeDefinition *) xsTypeDef;
		//XSTypeDefinition *xsBaseTypeDef = xsComplexTypeDef->getBaseType();
		typeSymbol->SimpleContent() = ( XSComplexTypeDefinition::CONTENTTYPE_SIMPLE == 	xsComplexTypeDef->getContentType ());

		XSConstants::DERIVATION_TYPE  derivationEnum =	xsComplexTypeDef->getDerivationMethod () ;
		typeSymbol->DerivedType() = (XercesAdditions::DERIVATION_TYPE) derivationEnum;

		typeSymbol->Abstract() = xsComplexTypeDef->getAbstract ();
		XSComplexTypeDefinition::CONTENT_TYPE contentType = xsComplexTypeDef->getContentType();

		// Extract all the attributes into variables
		XSAttributeUseList * 	attributes =  ((XSComplexTypeDefinition *)xsTypeDef)->getAttributeUses();

		ParseAttributes((XSComplexTypeDefinition *)xsTypeDef, typeSymbol);

		//
		// CONTENTTYPE_SIMPLE represents a simple content type. 
		// A content type which is simple validates elements with character-only children. 
		if (contentType == XSComplexTypeDefinition::CONTENTTYPE_SIMPLE)
		{
			typeSymbol->SimpleContent()=true;
			XSSimpleTypeDefinition * xsSimpleTypeDef= xsComplexTypeDef->getSimpleType () ;

			XSSimpleTypeDefinition::VARIETY variety =	xsSimpleTypeDef->getVariety();

			//If variety is atomic the primitive type definition (a built-in primitive datatype definition or the simple ur-type definition) is available, otherwise null. More...
			XSSimpleTypeDefinition *  simpleTypeDefinition =	xsSimpleTypeDef->getPrimitiveType ();

			// 	If variety is list the item type definition (an atomic or union simple type definition) is available, otherwise null. More...
			XSSimpleTypeDefinition * 	itemType=	xsSimpleTypeDef->getItemType ();

			//If variety is union the list of member type definitions (a non-empty sequence of simple type definitions) is available, otherwise null.
			XSSimpleTypeDefinitionList * simpleTypeDefinitionList	=	xsSimpleTypeDef->getMemberTypes () ;

			// Facet extraction for simple type - more or less ignored
			GetFacets(xsSimpleTypeDef, typeSymbol);

			if( xsSimpleTypeDef->getVariety() == XSSimpleTypeDefinition::VARIETY_LIST)
			{
				ParseList(xsSimpleTypeDef, typeSymbol);
			}

			// e.g., UnitVector Derived from SimpleUnitVector - do we need this?
			if(typeSymbol->DerivedType()  == XSConstants::DERIVATION_EXTENSION)
			{
				CreateDerivationVariable( typeSymbol,  tbasetype, tnamespace, true);
			}
		}
	}
}

void CXsdParser::BuildXsdTypes()
{
	if (xsModel==NULL)
		return;

	XSNamedMap<XSObject> * xsTypeDefs = xsModel->getComponents(XSConstants::TYPE_DEFINITION);
	for (XMLSize_t i=0; i < xsTypeDefs->getLength(); i++) 
	{		
		// Now we are looking at TYPES
		XSTypeDefinition *xsTypeDef = (XSTypeDefinition *)xsTypeDefs->item(i);
		BuildXsdType(xsTypeDef);
	}

}
void CXsdParser::BuildElementParticle(IXmlNodePtr elem, XSParticle *xsParticle)
{
	if (!xsParticle) 
	{
		return;
	}

	XSParticle::TERM_TYPE termType = xsParticle->getTermType();
	if (termType == XSParticle::TERM_ELEMENT) 
	{
		XSElementDeclaration *xsElement = xsParticle->getElementTerm();
		std::string ename =(xsElement->getName()!=NULL)? StrX(xsElement->getName()).localForm() : "elementusthavename";
		std::string enamespace=(xsElement->getNamespace()!=NULL)? StrX(xsElement->getNamespace()).localForm() : ""; 
		if(ename == "CharacteristicDefinition")
		{
			assert(0);
		}
		CVarDefPtr  var = _symbols.CreateVarDef(ename, enamespace,entity_ );
		elem->vars.push_back(var);
		IXmlNodePtr innerelem = _symbols.CreateEntityDef(ename, enamespace, element_);
		var->SetXmlNodePtr(innerelem);

		XSTypeDefinition * 	 typeDefinition =  xsElement->getTypeDefinition() ;
		std::string tname =(typeDefinition->getName()!=NULL)? StrX(typeDefinition->getName()).localForm() : "";
		// This really defines an embedded element (or attribute). AND must be saved.
		
		IXmlNodePtr typeSymbol=_symbols.CreateTypeNode(tname,  enamespace, "", type_);
		ParseXsdType(typeDefinition, typeSymbol);
		typeSymbol->MergeTypeInfo(innerelem);

		innerelem->Parent()= elem;  // type is really "parent", ???
		innerelem->Global()=false;

		innerelem->Dimension()=1;
		innerelem->LowerBounds().push_back(xsParticle->getMinOccurs());
		if(xsParticle->getMaxOccursUnbounded())
			innerelem->UpperBounds().push_back(-1);
		else
			innerelem->UpperBounds().push_back(xsParticle->getMaxOccurs());     

		// Recurse backward till findname type/element
		ISymbolPtr  layer = elem;
		while(layer && layer->Name().empty())
			layer=layer->Parent();

		CLEANFETCH(innerelem->OuterElementName() , layer->Name(), "");

		if(innerelem->OuterElementName().empty())
		{
			assert(0);
		}
		innerelem->DeepCopy(var);
	}
	else if (termType == XSParticle::TERM_MODELGROUP)
	{
		XSModelGroup *xsModelGroup = xsParticle->getModelGroupTerm();
		XSModelGroup::COMPOSITOR_TYPE compositorType = xsModelGroup->getCompositor();
		SymbolType symbol; 
		//var->SimpleType() = false;

		if(compositorType == XSModelGroup::COMPOSITOR_SEQUENCE )
			symbol=sequence_;
		else
			symbol=choice_;

		elem->Compositor() = compositorType;

		//type->vars.push_back(var);
		XSParticleList *xsParticleList = xsModelGroup->getParticles();
		for (unsigned i = 0; i < xsParticleList->size(); i++) 
		{
			XSParticle * xsParticle; 
			std::string elemname, particlename;
			xsParticle= xsParticleList->elementAt(i);
			particlename=  (xsParticle->getName()!=NULL)? StrX(xsParticle->getName()).localForm() : "";
			//XSElementDeclaration *  elemterm;
			//if (xsParticle->getTermType() == XSParticle::TERM_ELEMENT) 
			//{
			//	elemterm= 	xsParticle->getElementTerm ();
			//	elemname=  (elemterm->getName()!=NULL)? StrX(elemterm->getName()).localForm() : "";
			//	// just add the element as another variable, dont nest
			//	BuildElementParticle(elem, xsParticle); // side effect: will do	type->vars.push_back(var);
			//	continue;
			//}
			BuildElementParticle(elem, xsParticleList->elementAt(i));
			}
	}
	else
	{
		assert(0);
	}
}
void CXsdParser::BuildXsdElement(XSElementDeclaration *xsElement)
{
	if (xsElement==NULL)
		return;

	std::string ename= StrX(xsElement->getName()).localForm();
	std::string enamespace = StrX(xsElement->getNamespace()).localForm();
	IXmlNodePtr elem = _symbols.CreateEntityDef(ename, enamespace, entity_);
	elem->Global()=true;
	XSTypeDefinition * xsTypeDef = (XSTypeDefinition *)  xsElement->getTypeDefinition();
	//if(ename =="ArcFeatureActual")
	//{
	//	_asm int 3;
	//}

	XSElementDeclaration * substgroup=	xsElement->getSubstitutionGroupAffiliation();
	if(substgroup!=NULL)
	{
		std::string subbasename =  StrX(substgroup->getName()).localForm();
		_symbols.SubstitutionGroup()[ename  ] =  subbasename;
		elem->SubstitutionGroupAffiliation() = StrX(substgroup->getName()).localForm();

	}

	if(xsTypeDef->getTypeCategory() == XSTypeDefinition::SIMPLE_TYPE)
	{
		XSSimpleTypeDefinition * xsSimpleTypeDef  = (XSSimpleTypeDefinition *)  xsTypeDef;
		elem->SimpleType()=true;
		elem->TypeName() = ToStr(xsSimpleTypeDef->getName());
		elem->SimpleContent()=true;
	}
	else //XSTypeDefinition::COMPLEX_TYPE
	{
		XSComplexTypeDefinition * xsComplexTypeDef = (XSComplexTypeDefinition *)  xsTypeDef;
		elem->SimpleContent() = ( XSComplexTypeDefinition::CONTENTTYPE_SIMPLE == 	xsComplexTypeDef->getContentType ());

		elem->SimpleType()=false;
		//const XMLCh * name = xsComplexTypeDef->getName();
		elem->TypeName() = ToStr(xsComplexTypeDef->getName());
		elem->DerivedType()=(XercesAdditions::DERIVATION_TYPE) xsComplexTypeDef->getDerivationMethod();
		XSTypeDefinition *  basetype=	xsComplexTypeDef->getBaseType ();
		elem->BaseTypeName()= ToStr(basetype->getName());

		XSComplexTypeDefinition::CONTENT_TYPE contentType = xsComplexTypeDef->getContentType();
		if(contentType == XSComplexTypeDefinition::CONTENTTYPE_SIMPLE)
		{
			assert(0);
		}
		else if (contentType == XSComplexTypeDefinition::CONTENTTYPE_ELEMENT ||
			contentType == XSComplexTypeDefinition::CONTENTTYPE_MIXED )
		{
			// Particles describe this element
			// Particle lists describe subelements!
			XSParticle * xsParticle = xsComplexTypeDef -> getParticle();
			if( xsParticle != NULL)
			{
				elem->LowerBounds().push_back(xsParticle->getMinOccurs ());
				elem->UpperBounds().push_back(xsParticle->getMaxOccurs ());
			}

			if(elem->DerivedType()  == XSConstants::DERIVATION_EXTENSION)
			{
				// This will add supertypes to the element?
				//CreateDerivationVariable( elem,  elem->BaseTypeName(), elem->Namespace(), false);
			}

			if (!xsParticle) 
				return;
			BuildElementParticle(elem, xsParticle);
		}

	}
}

XSElementDeclaration *CXsdParser::FindXsdElement(std::string name)
{
	if (xsModel==NULL)
		return NULL; 
	XSNamedMap<XSObject> * xsElements = xsModel->getComponents(XSConstants::ELEMENT_DECLARATION);
	//xsElements =  xsModel->getComponentsByNamespace(XSConstants::ELEMENT_DECLARATION,XMLString::transcode("http://www.w3.org/2001/XMLSchema"));
	//      nameSpace="http://qifstandards.org/xsd/qif2"
	for (XMLSize_t i=0; i < xsElements->getLength(); i++) 
	{
		XSElementDeclaration *xsElement = (XSElementDeclaration *)xsElements->item(i);
		std::string ename= StrX(xsElement->getName()).localForm();
		if(ename == name)
			return xsElement;
	}
	return NULL;
}
void CXsdParser::BuildXsdElements()
{
	if (xsModel==NULL)
		return;
	XSNamedMap<XSObject> * xsElements = xsModel->getComponents(XSConstants::ELEMENT_DECLARATION);
	//xsElements =  xsModel->getComponentsByNamespace(XSConstants::ELEMENT_DECLARATION,XMLString::transcode("http://www.w3.org/2001/XMLSchema"));
	//      nameSpace="http://qifstandards.org/xsd/qif2"
	for (XMLSize_t i=0; i < xsElements->getLength(); i++) 
	{
		XSElementDeclaration *xsElement = (XSElementDeclaration *)xsElements->item(i);
		BuildXsdElement(xsElement);
	}

}
void CXsdParser::BuildSubstitutionGroupAliasing(XSElementDeclaration *xsElement )
{
	std::string ename= StrX(xsElement->getName()).localForm();
	XSElementDeclaration * substgroup=	xsElement->getSubstitutionGroupAffiliation();
	if(substgroup!=NULL)
	{
		std::string subbasename =  StrX(substgroup->getName()).localForm();
		_symbols.SubstitutionGroup()[ename  ] =  subbasename;
		// Find corresponding symbol, and add this as substituiongroup
		ISymbolPtr symbol = _symbols.FindSymbol(ename);
		if(symbol!=NULL)
			symbol->SubstitutionGroupAffiliation() = StrX(substgroup->getName()).localForm();

		ISymbolPtr sub = _symbols.FindSymbol(subbasename);
		sub->SubstitutionList().push_back(ename);

	}

}
void CXsdParser::BuildSubstitutionGroupAliasing()
{
	if (xsModel==NULL)
		return;
	XSNamedMap<XSObject> * xsElements = xsModel->getComponents(XSConstants::ELEMENT_DECLARATION);
	for (XMLSize_t i=0; i < xsElements->getLength(); i++) 
	{
		XSElementDeclaration *xsElement = (XSElementDeclaration *)xsElements->item(i);
		BuildSubstitutionGroupAliasing(xsElement );

	}


}
void CXsdParser::ResolveSubHierarchy(IXmlNode * node)
{
	if(node==NULL)
		return;
	IXmlNodePtr subnode = node;
	while(1)
	{
		std::string basename = subnode->BaseTypeName();
		if(basename.empty() || basename == "anyType" || basename == "anySimpleType")
			break;
		node->SubTypes().push_back(basename);
		subnode = _symbols.FindTypeNode(basename);
		if(subnode==NULL|| subnode->SimpleType() || subnode->SimpleContent())
			break;

	}
}
std::vector<std::string> CXsdParser::ResolveSuperHierarchy(IXmlNodePtr node)
{
	std::vector<std::string>  allsupers;
	if(node==NULL)
		return allsupers; 

	for(size_t i=0; i< node->SuperTypes().size(); i++)
	{
		if(find(allsupers.begin(), allsupers.end(), node->SuperTypes().at(i)) == allsupers.end())
			allsupers.push_back(node->SuperTypes().at(i));

		std::string supernode = node->SuperTypes().at(i);

		IXmlNodePtr subnode =  _symbols.FindTypeNode(node->SuperTypes().at(i));

		if(subnode == NULL)
		{
			//_asm int 3;
			continue;
		}
		std::vector<std::string> offspring = ResolveSuperHierarchy(subnode);
		allsupers.insert(allsupers.begin(), offspring.begin(), offspring.end()); 
	}
	return allsupers;
}
void CXsdParser::ResolveParentHierarchy()
{
	for(size_t i =0; i< _symbols.Types().size(); i++)
	{
		if(_symbols.Types().at(i)->SimpleType() || _symbols.Types().at(i)->SimpleContent())
			continue;

		ResolveSubHierarchy(_symbols.Types().at(i).get());
	}

	for(size_t i =0; i< _symbols.Types().size(); i++)
	{
		if(_symbols.Types().at(i)->SimpleType() || _symbols.Types().at(i)->SimpleContent())
			continue;
		_symbols.Types().at(i)->SuperTypes() = ResolveSuperHierarchy(_symbols.Types().at(i));
	}
}
