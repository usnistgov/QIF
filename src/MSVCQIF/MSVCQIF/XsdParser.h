//
// XsdParser.h
//

#pragma once
#include <string>
#include <vector>
#include <iostream>
#include <sstream>
#include <map>

#include <xercesc/util/PlatformUtils.hpp>
#include <xercesc/util/XMLString.hpp>
#include <xercesc/dom/DOM.hpp>
#include <xercesc/util/OutOfMemoryException.hpp>
#include <xercesc/framework/XMLFormatter.hpp>
#include <xercesc/framework/LocalFileFormatTarget.hpp>
#include <xercesc/dom/DOMDocument.hpp>
#include <xercesc/dom/DOMImplementation.hpp>
#include <xercesc/dom/DOMImplementationRegistry.hpp>
#include <xercesc/dom/DOMLSSerializer.hpp>
#include <xercesc/dom/DOMLSOutput.hpp>
#include <xercesc/util/PlatformUtils.hpp>

#include <xercesc/sax2/SAX2XMLReader.hpp>
#include <xercesc/sax2/XMLReaderFactory.hpp>
#include <xercesc/framework/XMLGrammarPoolImpl.hpp>
#include <xercesc/framework/psvi/XSModel.hpp>
#include <xercesc/framework/psvi/XSElementDeclaration.hpp>
#include <xercesc/framework/psvi/XSTypeDefinition.hpp>
#include <xercesc/framework/psvi/XSSimpleTypeDefinition.hpp>
#include <xercesc/framework/psvi/XSComplexTypeDefinition.hpp>
#include <xercesc/framework/psvi/XSParticle.hpp>
#include <xercesc/framework/psvi/XSModelGroup.hpp>
#include <xercesc/util/OutOfMemoryException.hpp>
#include <xercesc/sax2/DefaultHandler.hpp>

#include "XercesUtils.h"
#include "SymbolTable.h"
#include "Globals.h"

using namespace xercesc;
using namespace std;
XERCES_CPP_NAMESPACE_USE

class Definition
{
public:
	std::string name;
	std::string type_name;
	int min;
	int max;
	bool bOptional;
	bool bSimple;
	std::string basetypename;
	XSParticle::TERM_TYPE termType;
	std::vector<std::string> members;
	XSModelGroup::COMPOSITOR_TYPE compositorType;
	std::string TERM_name;
};
typedef std::map<std::string, Definition> CDefinitionMap;

__declspec(selectany)  CDefinitionMap DefinitionMap;

class StrX
{
public :

	StrX(const XMLCh* const toTranscode)
	{
		// Call the private transcoding method
		fLocalForm = XMLString::transcode(toTranscode);
	}

	~StrX()
	{
		XMLString::release(&fLocalForm);
	}
	const char* localForm() const
	{
		return fLocalForm;
	}

private :
	char*   fLocalForm;
};

inline XERCES_STD_QUALIFIER ostream& operator<<(XERCES_STD_QUALIFIER ostream& target, const StrX& toDump)
{
    target << toDump.localForm();
    return target;
}

class XPrintHandler : public DefaultHandler
{
public:
    // -----------------------------------------------------------------------
    //  Constructors and Destructor
    // -----------------------------------------------------------------------
    XPrintHandler():
    fSawErrors(false)
	{
	}
	~XPrintHandler(){}

    bool getSawErrors() const
    {
        return fSawErrors;
    }

	void warning(const SAXParseException& exc);
    void error(const SAXParseException& exc);
    void fatalError(const SAXParseException& exc);
    void resetErrors();


private:
    bool            fSawErrors;
};

// ---------------------------------------------------------------------------
//  SCMPrintHandler: Overrides of the SAX ErrorHandler interface
// ---------------------------------------------------------------------------
inline void XPrintHandler::error(const SAXParseException& e)
{
    fSawErrors = true;
    XERCES_STD_QUALIFIER cerr << "\nError at file " << StrX(e.getSystemId())
		 << ", line " << e.getLineNumber()
		 << ", char " << e.getColumnNumber()
         << "\n  Message: " << StrX(e.getMessage()) << XERCES_STD_QUALIFIER endl;
}

inline void XPrintHandler::fatalError(const SAXParseException& e)
{
    fSawErrors = true;
    XERCES_STD_QUALIFIER cerr << "\nFatal Error at file " << StrX(e.getSystemId())
		 << ", line " << e.getLineNumber()
		 << ", char " << e.getColumnNumber()
         << "\n  Message: " << StrX(e.getMessage()) << XERCES_STD_QUALIFIER endl;
}

inline void XPrintHandler::warning(const SAXParseException& e)
{
    XERCES_STD_QUALIFIER cerr << "\nWarning at file " << StrX(e.getSystemId())
		 << ", line " << e.getLineNumber()
		 << ", char " << e.getColumnNumber()
         << "\n  Message: " << StrX(e.getMessage()) << XERCES_STD_QUALIFIER endl;
}

inline void XPrintHandler::resetErrors()
{
    fSawErrors = false;
}


class CXsdParser
{
public:
	CXsdParser()
	{
		Init();
	}

	void XsdParse(std::string inxsdfilename );
	void ResolveParentHierarchy();

	void Init()
	{
		doList				= false;
		schemaFullChecking	= false;
		xsdFile             = 0;
		parsedOneSchemaOkay=false;
		grammarPool = 0;
		parser = 0;
		xsModel=NULL;
	}
	void BuildXsdTypes();
	void BuildXsdTypes(StringVector);
	void BuildXsdType(XSTypeDefinition *xsTypeDef );
	void BuildXsdElements();
	void BuildSubstitutionGroupAliasing();
	void BuildXsdElement(XSElementDeclaration *xsElement);
	void BuildSubstitutionGroupAliasing(XSElementDeclaration *xsElement );
	void GetFacets(XSSimpleTypeDefinition * simpleType, ISymbolPtr symbol);
	void ParseList(XSSimpleTypeDefinition * xsSimpleTypeDef, ISymbolPtr typeSymbol);
	void ParseAttributes(XSComplexTypeDefinition *xsTypeDef, IXmlNodePtr typeSymbol);
	void ParseXsdType(XSTypeDefinition *xsTypeDef, IXmlNodePtr typeSymbol);

	XSElementDeclaration * FindXsdElement(std::string name);
	XSTypeDefinition * FindXsdType(std::string name);
	bool SaveParseTree(std::string inxsdfilename, std::string outfilename );
#if 0
	void processTypeDefinitions(XSNamedMap<XSObject> *xsTypeDefs, iostream & io);
	void processComplexTypeDefinition(XSComplexTypeDefinition *xsComplexTypeDef, iostream & io);
	void processParticle(XSParticle *xsParticle, iostream & io);
	void printCompositorTypeConnector(XSModelGroup::COMPOSITOR_TYPE type, iostream & io);
	void processSimpleTypeDefinition(XSSimpleTypeDefinition * xsSimpleTypeDef, iostream & io);
	void processElements(XSNamedMap<XSObject> *xsElements, iostream & io);
	void printBasic(XSObject *xsObject, const char *type, iostream & io);
#endif
	///////////////////////////////////////////////////////////////////
	SymbolTable _symbols;

protected:
	void BuildParticle(IXmlNodePtr elem, XSParticle *xsParticle);
	void BuildElementParticle(IXmlNodePtr type, XSParticle *xsParticle);
	void SaveParticleDimensions(ISymbolPtr  var, XSParticle *xsParticle);

	void CreateDerivationVariable(IXmlNodePtr typeSymbol, std::string tbasetype, std::string tnamespace, bool bSimple);
	void BuildParticle(XSParticle *xsParticle, Definition &def);
	void ResolveSubHierarchy(IXmlNode * node);
	std::vector<std::string> ResolveSuperHierarchy(IXmlNodePtr node);
	CXercesUtils utils;
	std::stringstream io;
	bool							doList	;
	bool							schemaFullChecking	;
	const char*                     xsdFile   ;
	bool							parsedOneSchemaOkay;
	XMLGrammarPool *				grammarPool ;
	SAX2XMLReader*					parser;
	XSModel *						xsModel;
};
