//
// XercesUtils.h
// 

#pragma once


#include <string>
#include <vector>
#include <iostream>

#include <xercesc/util/PlatformUtils.hpp>
#include <xercesc/util/XMLString.hpp>
#include <xercesc/dom/DOM.hpp>
#include <xercesc/dom/DOMElement.hpp>
#include <xercesc/util/OutOfMemoryException.hpp>
#include <xercesc/framework/XMLFormatter.hpp>
#include <xercesc/framework/LocalFileFormatTarget.hpp>
#include <xercesc/dom/DOMDocument.hpp>
#include <xercesc/dom/DOMImplementation.hpp>
#include <xercesc/dom/DOMImplementationRegistry.hpp>
#include <xercesc/dom/DOMLSSerializer.hpp>
#include <xercesc/dom/DOMLSOutput.hpp>
#include <xercesc/util/PlatformUtils.hpp>
#include <xercesc/dom/DOMDocument.hpp>

#include <xsd/cxx/xml/string.hxx>
#include "QIFDocument.hxx"

//#include <xercesc/sax2/SAX2XMLReader.hpp>
//#include <xercesc/sax2/XMLReaderFactory.hpp>
//#include <xercesc/framework/XMLGrammarPoolImpl.hpp>
//#include <xercesc/framework/psvi/XSModel.hpp>
//#include <xercesc/framework/psvi/XSElementDeclaration.hpp>
//#include <xercesc/framework/psvi/XSTypeDefinition.hpp>
//#include <xercesc/framework/psvi/XSSimpleTypeDefinition.hpp>
//#include <xercesc/framework/psvi/XSComplexTypeDefinition.hpp>
//#include <xercesc/framework/psvi/XSParticle.hpp>
//#include <xercesc/framework/psvi/XSModelGroup.hpp>
//#include <xercesc/util/OutOfMemoryException.hpp>
//#include <xercesc/sax2/DefaultHandler.hpp>



////////////////////////////////////////////////////////////////////////////////////////
class CXercesUtils
{

public:
	CXercesUtils(void);
	~CXercesUtils(void);


	std::vector<std::string> GetXpathResults(xercesc::DOMElement* root, std::string querystr);
	std::string GetElementName(xercesc::DOMElement* e );
	std::string GetElementValue(xercesc::DOMElement* e );
	std::string GetSubElementValues(xercesc::DOMElement* e , std::vector<std::string> &excludes) ;
	void NagivateParseTree(xercesc::DOMElement* p, std::string tabs="");
	xercesc::DOMElement*  FindChildElementName(xercesc::DOMElement* e , std::string name) ;
	//std::string GenerateFAIRRepor1(DOMElement* e );
	//std::string GenerateFAIRRepor3(DOMElement* e );
	template<typename T>
	std::vector<T *> GetXpathAsStructs(xercesc::DOMElement* root, std::string querystr)
	{
		std::vector<T *> nodes;

		xercesc::DOMDocument* doc (root->getOwnerDocument ());

		// Obtain namespace resolver.
		xsd::cxx::xml::dom::auto_ptr<xercesc::DOMXPathNSResolver> resolver (
			doc->createNSResolver (root));

		// Create XPath expression.
		xsd::cxx::xml::dom::auto_ptr<xercesc::DOMXPathExpression> expr (
			doc->createExpression (
			xsd::cxx::xml::string (querystr.c_str()).c_str (),
			resolver.get ()));

		// Execute the query.
		xsd::cxx::xml::dom::auto_ptr<xercesc::DOMXPathResult> r (
			expr->evaluate (
			root, xercesc::DOMXPathResult::ORDERED_NODE_SNAPSHOT_TYPE  /*DOMXPathResult::ITERATOR_RESULT_TYPE*/, 0));

		// If no query matches, then return empty vector
		if (!r.get() ) 
			return nodes;
		// Iterate over the result.
		for (unsigned int i=0; i < r->getSnapshotLength(); i++) 
		{
			r->snapshotItem(i);
			xercesc::DOMNode* n (r->getNodeValue ());
			T * p (static_cast<T *> ( n->getUserData (xml_schema::dom::tree_node_key)));
			nodes.push_back(p);
		}
		return nodes;
	}
};

#if 1
class XStr
{
public :
    XStr(const char* const toTranscode)
    {
        // Call the private transcoding method
        fUnicodeForm = xercesc::XMLString::transcode(toTranscode);
    }

    ~XStr()
    {
        xercesc::XMLString::release(&fUnicodeForm);
    }

    const XMLCh* unicodeForm() const
    {
        return fUnicodeForm;
    }

private :
    XMLCh*   fUnicodeForm;
};

#define X(str) XStr(str).unicodeForm()
#endif
