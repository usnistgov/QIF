//
// XercesUtils.cpp
//

#include "XercesUtils.h"
#include <xercesc/dom/DOM.hpp>
#include <xercesc/util/PlatformUtils.hpp>


#include <algorithm>
#include <iostream>
using namespace xsd;
using namespace qif2;

using namespace xercesc;
using namespace std;
XERCES_CPP_NAMESPACE_USE

CXercesUtils::CXercesUtils(void)
{
}


CXercesUtils::~CXercesUtils(void)
{
}
// Look at Xerces XSModel to parse XSD into tree SCMPrint
void CXercesUtils::NagivateParseTree(xercesc::DOMElement* p, std::string tabs)
{
	string name;
	short age;
	tabs+="    ";
	for (DOMNode* n = p->getFirstChild ();	n != 0;	n = n->getNextSibling ())
	{
		if (n->getNodeType () != DOMNode::ELEMENT_NODE)
			continue;
		DOMElement*  e = (DOMElement* ) n;
		std::string el_name =  XMLString::transcode(n->getNodeName());

		std::string el_value;
		if(e->getTextContent () && e->getChildElementCount() == (XMLSize_t) 0)
			el_value = XMLString::transcode(e->getTextContent ());

		std::cerr <<  tabs.c_str() << el_name.c_str()<< "=" << el_value.c_str()<< endl;
		//DOMNode* node = n->getFirstChild ();

		NagivateParseTree((DOMElement*) n,tabs);
	}
	tabs=tabs.substr(1);

}


DOMElement* CXercesUtils::FindChildElementName(DOMElement* e , std::string name) 
{
	xercesc::DOMNodeList* children = e->getChildNodes() ;

	const XMLSize_t nodeCount = children->getLength() ;

	for( XMLSize_t i = 0 ; i < nodeCount ; ++i )
	{
		xercesc::DOMNode* currentNode = children->item( i ) ;
		if(currentNode && currentNode->getNodeType() && currentNode->getNodeType() == DOMNode::ELEMENT_NODE ) 
		{
			DOMElement* currentElem = (DOMElement*) currentNode;
			std::string elemname = GetElementName(currentElem );
			if(elemname == name)
				return currentElem;
		}
	}
	return NULL;	
}
// http://thelastpcbender.blogspot.com/2008/11/introduction-to-xerces-c-domparser.html
std::string CXercesUtils::GetSubElementValues(DOMElement* e , std::vector<std::string> &excludes) 
{
	std::string value;
	DOMNodeList * Child = e-> getChildNodes();
	const XMLSize_t nc = Child->getLength();

	//now we traverse the tree, note that we use XMLSize_t instead of int
	//
	for(XMLSize_t i=0; i< nc; i++)
	{
		DOMNode* currentNode = Child->item(i);
		if(currentNode && currentNode->getNodeType() && currentNode->getNodeType() == DOMNode::ELEMENT_NODE ) 
		{
			DOMElement* currentElem = (DOMElement*) currentNode;
			std::string elemname = GetElementName(currentElem );
			if(std::find(excludes.begin(), excludes.end(), elemname) != excludes.end())
				continue;
			if(currentElem->getChildElementCount() == (XMLSize_t) 0)
			{
				value+=GetElementName(currentElem );
				value+="=";
				value+=GetElementValue(currentElem );
				value+="<br>";
			}
			// recursively add items
			else
			{
				value+=GetSubElementValues(currentElem , excludes) ;
			}
		}
	}
	return value;
}
std::string CXercesUtils::GetElementValue(DOMElement* e ) 
{
	if(e->getChildElementCount() != (XMLSize_t) 0)
		return "";
	const XMLCh * value = e->getTextContent	();
	return xsd::cxx::xml::transcode<char> (value);
}
std::string CXercesUtils::GetElementName(DOMElement* e ) 
{
	const XMLCh * value = e->getTagName();
	return xsd::cxx::xml::transcode<char> (value);

}
std::vector<std::string> CXercesUtils::GetXpathResults(DOMElement* root, std::string querystr)
{
	std::vector<std::string> values;

	DOMDocument* doc (root->getOwnerDocument ());

	// Obtain namespace resolver.
	xsd::cxx::xml::dom::auto_ptr<DOMXPathNSResolver> resolver (
		doc->createNSResolver (root));

	// Create XPath expression.
	xsd::cxx::xml::dom::auto_ptr<DOMXPathExpression> expr (
		doc->createExpression (
		xsd::cxx::xml::string (querystr.c_str()).c_str (),
		resolver.get ()));

	// Execute the query.
	xsd::cxx::xml::dom::auto_ptr<DOMXPathResult> r (
		expr->evaluate (
		root, DOMXPathResult::ORDERED_NODE_SNAPSHOT_TYPE  /*DOMXPathResult::ITERATOR_RESULT_TYPE*/, 0));

	// If no query matches, then return empty vector
	if (!r.get() ) 
		return values;

	// Iterate over the result.
	for (int i=0; i < r->getSnapshotLength(); i++) 
	{
		r->snapshotItem(i);
		DOMNode* n (r->getNodeValue ());
		const XMLCh * value = n->getTextContent	(		);
		values.push_back(xsd::cxx::xml::transcode<char> (value));
		i=i;
	}

	return values;
}

#if 0
#include <xqilla/xqilla-simple.hpp>
#include <xqilla/xqilla-dom3.hpp>
#include <xqilla/simple-api/XQilla.hpp>
#include <xqilla/context/DynamicContext.hpp>

std::vector<std::string> GetXpathResults1(DOMElement* root, std::string querystr)
{
	std::vector<std::string> values;

	DOMDocument* document (root->getOwnerDocument ());

	// Obtain namespace resolver.
	xsd::cxx::xml::dom::auto_ptr<XQillaNSResolver> resolver (
		(XQillaNSResolver*)document->createNSResolver (root));

	//// Create XPath expression.
	//xsd::cxx::xml::dom::auto_ptr<const XQillaExpression> expr (
	//	static_cast<const XQillaExpression*> (
	//	doc->createExpression (
	//	xsd::cxx::xml::string (querystr.c_str()).c_str (),
	//	resolver.get ())));
	//

	//// Execute the query.
	//xsd::cxx::xml::dom::auto_ptr<XPath2Result> r (
	//	static_cast<XPath2Result*> (
	//	expr->evaluate (
	//	doc, XPath2Result::ITERATOR_RESULT, 0)));

	// Parse an XPath 2 expression
	xsd::cxx::xml::dom::auto_ptr<DOMXPathExpression> expression(
		document->createExpression(X (querystr.c_str()), resolver.get ()));

	// Execute the query
	xsd::cxx::xml::dom::auto_ptr<DOMXPathResult> xQillaResult(
		expression->evaluate(
		document,
		DOMXPathResult::ITERATOR_RESULT_TYPE, 0));


	//		root, DOMXPathResult::ORDERED_NODE_SNAPSHOT_TYPE  /*DOMXPathResult::ITERATOR_RESULT_TYPE*/, 0));
	// Not sure it is an ordered list
	while (xQillaResult->iterateNext ())
	{
		//const DOMNode* n (r->asNode ());
		//const XMLCh * value = n->getTextContent	(		);
		char * value = XMLString::transcode(xQillaResult->getStringValue());
		values.push_back(value);
		delete value;

	}
	return values;
}
#endif

void OutputXML(xercesc::DOMDocument* pmyDOMDocument, std::string filePath) 
{ 
	//Return the first registered implementation that has the desired features. In this case, we are after a DOM implementation that has the LS feature... or Load/Save. 
	DOMImplementation *implementation = DOMImplementationRegistry::getDOMImplementation(XMLString::transcode("LS"));

	// Create a DOMLSSerializer which is used to serialize a DOM tree into an XML document. 
	DOMLSSerializer *serializer = ((DOMImplementationLS*)implementation)->createLSSerializer(); 

	// Make the output more human readable by inserting line feeds. 
	if (serializer->getDomConfig()->canSetParameter(XMLUni::fgDOMWRTFormatPrettyPrint, true)) 
		serializer->getDomConfig()->setParameter(XMLUni::fgDOMWRTFormatPrettyPrint, true); 

	// The end-of-line sequence of characters to be used in the XML being written out.  
	serializer->setNewLine(XMLString::transcode("\r\n"));  

	// Convert the path into Xerces compatible XMLCh*. 
	XMLCh *tempFilePath = XMLString::transcode(filePath.c_str()); 

	// Specify the target for the XML output. 
	XMLFormatTarget *formatTarget = new LocalFileFormatTarget(tempFilePath); 

	// Create a new empty output destination object. 
	DOMLSOutput *output = ((DOMImplementationLS*)implementation)->createLSOutput(); 

	// Set the stream to our target. 
	output->setByteStream(formatTarget); 

	// Write the serialized output to the destination. 
	serializer->write(pmyDOMDocument, output); 

	// Cleanup. 
	serializer->release(); 
	XMLString::release(&tempFilePath); 
	delete formatTarget; 
	output->release(); 
} 

