//
// XmlAndSql.cpp
//

// This software was developed by U.S. Government employees as part of
// their official duties and is not subject to copyright. No warranty implied 
// or intended.

#include "stdafx.h"
#include "XmlAndSql.h"
#include "StdStringFcn.h"
#include <iostream>
#include <set>
#include "XercesUtils.h"
#include <xercesc/util/PlatformUtils.hpp>
using namespace xercesc;

static std::string ToStr( const XMLCh* toTranscode ) 
{  
	if(toTranscode==NULL) return "";
	return XMLString::transcode(toTranscode); 
}
static XMLCh *ToXMLCh ( std::string str)
{
	return  XMLString::transcode(str.c_str());
}

static std::string SqlDemangleType(std::string type)
{
	return ReplaceOnce(type, "Type", "");

}
static std::string DemangleName(std::string name)
{
	if(name == "And")
		return "And_";
	else if(name == "Limit")
		return "Limit_";
	else if(name == "Offset")
		return "Offset_";
	else if(name == "Or")
		return "Or_";
	else if(name == "Order")
		return "Order_";
	else if(name == "All")
		return "All_";
	else if(name == "right")
		return "right_";
	else if(name == "left")
		return "left_";
	else if(name == "Not")
		return "Not_";
	return name;
}
static void RemoveTrailingComma(std::string &str, char replacement =' ')
{
	std::string s ;
	std::string t;
	if(str.empty())
		return;

	StringVector lines=Lines(str);

	// Skip trailing comment
	s=lines[lines.size()-1];
	lines.erase(lines.end()-1); // delete last line

	std::size_t commentfound = s.rfind("--");
	if(commentfound != std::string::npos)
	{
		t = s.substr(commentfound); // this better be the comment MUST GO FIRST
		s = s.substr(0,commentfound);
	}

	// Remove trailing , before ) or mysql parser will get upset
	std::size_t found = s.rfind(",");
	if(found != std::string::npos) 
		s[found]=replacement;

	str=lines.Merge("\n") + s + t + "\n";
}
static void SimpleRemoveTrailingComma(std::string &str, char replacement =' ')
{
	// Remove trailing , before ) or mysql parser will get upset
	std::size_t found = str.rfind(",");
	if(found != std::string::npos) 
		str[found]=replacement;
}

//static void RemoveTrailingComma(std::string &str, std::string replacement )
//{
//	// Remove trailing , before ) or mysql parser will get upset
//	std::size_t found = str.rfind(",");
//	str = str.substr(0,found) + replacement;
//}
//////////////////////////////////////////////////////////////////

CXmlAndSql::CXmlAndSql(SymbolTable &symboltable, OdbcArchiver &db): _symbols (symboltable), odbc(db)
{
}


CXmlAndSql::~CXmlAndSql(void)
{
}

// SQL Convert Xml  To Sql Value - text needs quotes
// http://www.oracle.com/technetwork/articles/srivastava-datatypes-087961.html 
std::string CXmlAndSql::ConvertXml2SqlValue(std::string type, std::string val)
{
#if 0
	else if(strcasecmp(type.c_str(), "anySimpleType") == 0)  tmp="text";
	else if(strcasecmp(type.c_str(), "anyURI") == 0)  tmp="text";
	else if(strcasecmp(type.c_str(), "language") == 0)  tmp="text";
	else if(strcasecmp(type.c_str(), "string") == 0)  tmp="text";
	else if(strcasecmp(type.c_str(), "normalizedString") == 0)  tmp="text";
	else if(strcasecmp(type.c_str(), "token") == 0)  tmp="text";
	else if(strcasecmp(type.c_str(), "NMTOKEN") == 0)  tmp="text";
	else if(strcasecmp(type.c_str(), "QPIdType") == 0)  tmp="text";

#endif
	// FIXME: lots of these data types are unused. And if used would be used incorrectly.
	std::string tmp;
	if(strcasecmp(type.c_str(), "int") == 0) return val;
	else if(strcasecmp(type.c_str(), "integer") == 0) return val;
	else if(strcasecmp(type.c_str(), "unsignedShort") == 0)  return val;
	else if(strcasecmp(type.c_str(), "nonNegativeInteger") == 0) return val;
	else if(strcasecmp(type.c_str(), "long") == 0) return val;
	else if(strcasecmp(type.c_str(), "negativeInteger") == 0)  return val;
	else if(strcasecmp(type.c_str(), "nonNegativeInteger") == 0) return val;
	else if(strcasecmp(type.c_str(), "nonPositiveInteger") == 0)  return val;
	else if(strcasecmp(type.c_str(), "positiveInteger") == 0)  return val;
	else if(strcasecmp(type.c_str(), "NonNegativeDecimalType") == 0)  return val;
	else if(strcasecmp(type.c_str(), "ParameterRangeType") == 0)  return val;
	else if(strcasecmp(type.c_str(), "ListNaturalType") == 0) return val;
	else if(strcasecmp(type.c_str(), "ListUnsignedByteType") == 0)  return val;
	else if(strcasecmp(type.c_str(), "ColorType") == 0)  return val;
	else if(strcasecmp(type.c_str(), "ListAccumulatedStatsValuesType") == 0)  return val;
	else if(strcasecmp(type.c_str(), "ListSubgroupStatsValuesType") == 0) return val;
	else if(strcasecmp(type.c_str(), "ListDouble9Type") == 0)  return val;
	else if(strcasecmp(type.c_str(), "D4Type") == 0)  return val;
	else if(strcasecmp(type.c_str(), "ListSummaryStatsValuesType") == 0) return val;
	else if(strcasecmp(type.c_str(), "PositiveDecimalType") == 0) return val;

	else if(strcasecmp(type.c_str(), "ListIntType") == 0)  return val;
	else if(strcasecmp(type.c_str(), "I2Type") == 0)  return val;
	else if(strcasecmp(type.c_str(), "ListDoubleType") == 0)  return val;
	else if(strcasecmp(type.c_str(), "D3Type") == 0)  return val;
	else if(strcasecmp(type.c_str(), "D2Type") == 0)  return val;
	else if(strcasecmp(type.c_str(), "Point2dSimpleType") == 0)  return val;
	else if(strcasecmp(type.c_str(), "UnitVector2dSimpleType") == 0)  return val;
	else if(strcasecmp(type.c_str(), "PointSimpleType") == 0) return val;
	else if(strcasecmp(type.c_str(), "VectorSimpleType") == 0)  return val;
	else if(strcasecmp(type.c_str(), "UnitVectorSimpleType") == 0)  return val;
	else if(strcasecmp(type.c_str(), "NaturalType") == 0)  return val;
	else if(strcasecmp(type.c_str(), "QIFIdType") == 0)  return val;

	else if(strcasecmp(type.c_str(), "anySimpleType") == 0) return val;

	else if(strcasecmp(type.c_str(), "base64Binary") == 0)  return val; // tmp="text";
	else if(strcasecmp(type.c_str(), "boolean") == 0)  return val;
	else if(strcasecmp(type.c_str(), "byte") == 0) return val;
	else if(strcasecmp(type.c_str(), "decimal") == 0)  return val;
	else if(strcasecmp(type.c_str(), "double") == 0)  return val;
	else if(strcasecmp(type.c_str(), "DoublePositiveType") == 0)  return val;
	else if(strcasecmp(type.c_str(), "duration") == 0)  return val;
	else if(strcasecmp(type.c_str(), "float") == 0)  return val;
	else if(strcasecmp(type.c_str(), "gDay") == 0)  return val;
	else if(strcasecmp(type.c_str(), "gMonth") == 0)  return val;
	else if(strcasecmp(type.c_str(), "gMonthDay") == 0)  return val;
	else if(strcasecmp(type.c_str(), "gYear") == 0)  return val;
	else if(strcasecmp(type.c_str(), "gYearMonth") == 0)  return val;
	else if(strcasecmp(type.c_str(), "hexBinary") == 0)  return val;
	else if(strcasecmp(type.c_str(), "short") == 0)   return val;
	else if(strcasecmp(type.c_str(), "unsignedByte") == 0)   return val;
	else if(strcasecmp(type.c_str(), "unsignedInt") == 0)  return val;
	else if(strcasecmp(type.c_str(), "unsignedLong") == 0)   return val;
	else if(strcasecmp(type.c_str(), "unsignedShort") == 0)   return val;

	else if(strcasecmp(type.c_str(), "QPIdType") == 0)  return  StrFormat("'%s'", val.c_str()); // uuid  now in quotes
	else if(strcasecmp(type.c_str(), "QPIdReferenceType") == 0)  return  StrFormat("'%s'", val.c_str()); // uuid  now in quotes

	else if(strcasecmp(type.c_str(), "NMTOKEN") == 0)  return StrFormat("'%s'", val.c_str());
	else if(strcasecmp(type.c_str(), "language") == 0)  return StrFormat("'%s'", val.c_str());
	else if(strcasecmp(type.c_str(), "token") == 0)  return StrFormat("'%s'", val.c_str());
	else if(strcasecmp(type.c_str(), "string") == 0)   return StrFormat("'%s'", val.c_str());
	else if(strcasecmp(type.c_str(), "normalizedString") == 0)   return StrFormat("'%s'", val.c_str());
	else if(strcasecmp(type.c_str(), "anyURI") == 0) 
	{  // If a URI has spaces, replace them with %20.
		ReplaceAll(val," ", "%20");
		return StrFormat("'%s'", val.c_str());
	}	

	//	else if(strcasecmp(type.c_str(), "dateTime") == 0)  tmp="TIMESTAMP";
	else if(strcasecmp(type.c_str(), "time") == 0)  return StrFormat("'%s'", val.c_str());
	else if(strcasecmp(type.c_str(), "date") == 0)  return StrFormat("'%s'", val.c_str());
	else if(strcasecmp(type.c_str(), "dateTime") == 0)
	{
		ReplaceAll(val,"T", " ");
		return StrFormat("'%s'", val.c_str());
	}


	if(type.find("Enum") != std::string::npos) 
	{
		return StrFormat("'%s'", val.c_str());
	}
	if(tmp.empty())
	{
		std::cerr << type << "\n";
		// Error - not type definition
		return val;
	}
	return val;
}


// SQL Generator
std::string CXmlAndSql::ConvertXsd2SqlDataType(std::string type, ISymbol * symbol)
{
	std::string tmp;
	if(strcasecmp(type.c_str(), "int") == 0) tmp="integer";
	else if(strcasecmp(type.c_str(), "anySimpleType") == 0)  tmp="text";
	else if(strcasecmp(type.c_str(), "anyURI") == 0)  tmp="text";
	else if(strcasecmp(type.c_str(), "base64Binary") == 0)  tmp="integer";
	else if(strcasecmp(type.c_str(), "boolean") == 0)  tmp="BOOLEAN";
	else if(strcasecmp(type.c_str(), "byte") == 0)  tmp="integer";
	else if(strcasecmp(type.c_str(), "ColorType") == 0)  tmp="integer[]";
	else if(strcasecmp(type.c_str(), "D2Type") == 0)  tmp="FLOAT[2]";
	else if(strcasecmp(type.c_str(), "D3Type") == 0)  tmp="FLOAT[3]";
	else if(strcasecmp(type.c_str(), "D4Type") == 0)  tmp="FLOAT[4]";
	else if(strcasecmp(type.c_str(), "date") == 0)  tmp="DATE";
	else if(strcasecmp(type.c_str(), "dateTime") == 0)  tmp="TIMESTAMP";
	else if(strcasecmp(type.c_str(), "decimal") == 0)  tmp="DECIMAL(10,2)";
	else if(strcasecmp(type.c_str(), "double") == 0)  tmp="DOUBLE PRECISION";
	else if(strcasecmp(type.c_str(), "DoublePositiveType") == 0)  tmp="DOUBLE PRECISION";
	else if(strcasecmp(type.c_str(), "duration") == 0)  tmp="integer";
	else if(strcasecmp(type.c_str(), "float") == 0)  tmp="FLOAT";
	else if(strcasecmp(type.c_str(), "gDay") == 0)  tmp="integer";
	else if(strcasecmp(type.c_str(), "gMonth") == 0)  tmp="integer";
	else if(strcasecmp(type.c_str(), "gMonthDay") == 0)  tmp="integer";
	else if(strcasecmp(type.c_str(), "gYear") == 0)  tmp="integer";
	else if(strcasecmp(type.c_str(), "gYearMonth") == 0)  tmp="integer";
	else if(strcasecmp(type.c_str(), "hexBinary") == 0)  tmp="integer";
	else if(strcasecmp(type.c_str(), "I2Type") == 0)  tmp="integer[2]";
	else if(strcasecmp(type.c_str(), "integer") == 0)  tmp="integer";
	else if(strcasecmp(type.c_str(), "language") == 0)  tmp="text";
	else if(strcasecmp(type.c_str(), "ListAccumulatedStatsValuesType") == 0)  tmp="integer[]";
	else if(strcasecmp(type.c_str(), "ListDouble9Type") == 0)  tmp="FLOAT[]";
	else if(strcasecmp(type.c_str(), "ListDoubleType") == 0)  tmp="FLOAT[]";
	else if(strcasecmp(type.c_str(), "ListIntType") == 0)  tmp="integer[]";
	else if(strcasecmp(type.c_str(), "ListNaturalType") == 0)  tmp="FLOAT[]";
	else if(strcasecmp(type.c_str(), "ListSubgroupStatsValuesType") == 0)  tmp="integer[]";
	else if(strcasecmp(type.c_str(), "ListSummaryStatsValuesType") == 0)  tmp="integer[]";
	else if(strcasecmp(type.c_str(), "ListUnsignedByteType") == 0)  tmp="integer[]";
	else if(strcasecmp(type.c_str(), "long") == 0)  tmp="integer";
	else if(strcasecmp(type.c_str(), "NaturalType") == 0)  tmp="integer";
	else if(strcasecmp(type.c_str(), "negativeInteger") == 0)  tmp="integer";
	else if(strcasecmp(type.c_str(), "NMTOKEN") == 0)  tmp="text";
	else if(strcasecmp(type.c_str(), "NonNegativeDecimalType") == 0)  tmp="DECIMAL(10,2)";
	else if(strcasecmp(type.c_str(), "nonNegativeInteger") == 0)  tmp="integer";
	else if(strcasecmp(type.c_str(), "nonNegativeInteger") == 0) tmp="integer";
	else if(strcasecmp(type.c_str(), "nonPositiveInteger") == 0)  tmp="integer";
	else if(strcasecmp(type.c_str(), "normalizedString") == 0)  tmp="text";
	else if(strcasecmp(type.c_str(), "ParameterRangeType") == 0)  tmp="FLOAT[2]";
	else if(strcasecmp(type.c_str(), "Point2dSimpleType") == 0)  tmp="FLOAT[2]";
	else if(strcasecmp(type.c_str(), "PointSimpleType") == 0)  tmp="FLOAT[3]";
	else if(strcasecmp(type.c_str(), "PositiveDecimalType") == 0)  tmp="DECIMAL(10,2)";
	else if(strcasecmp(type.c_str(), "positiveInteger") == 0)  tmp="integer";
	else if(strcasecmp(type.c_str(), "QIFIdType") == 0)  tmp="integer";
	else if(strcasecmp(type.c_str(), "QPIdReferenceType") == 0)  tmp="text";
	else if(strcasecmp(type.c_str(), "QPIdType") == 0)  tmp="text";
	else if(strcasecmp(type.c_str(), "short") == 0)  tmp="integer";
	else if(strcasecmp(type.c_str(), "string") == 0)  tmp="text";
	else if(strcasecmp(type.c_str(), "time") == 0)  tmp="TIME";
	else if(strcasecmp(type.c_str(), "token") == 0)  tmp="text";
	else if(strcasecmp(type.c_str(), "UnitVector2dSimpleType") == 0)  tmp="FLOAT[2]";
	else if(strcasecmp(type.c_str(), "UnitVectorSimpleType") == 0)  tmp="FLOAT[3]";
	else if(strcasecmp(type.c_str(), "unsignedByte") == 0)  tmp="integer";
	else if(strcasecmp(type.c_str(), "unsignedInt") == 0)  tmp="integer";
	else if(strcasecmp(type.c_str(), "unsignedLong") == 0)  tmp="integer";
	else if(strcasecmp(type.c_str(), "unsignedShort") == 0)  tmp="integer";
	else if(strcasecmp(type.c_str(), "unsignedShort") == 0)  tmp="integer";
	else if(strcasecmp(type.c_str(), "VectorSimpleType") == 0)  tmp="FLOAT[3]";


	if(type.find("Enum") != std::string::npos)
	{
		if(symbol!=NULL)
			tmp+=StrFormat("%s", symbol->TypeName().c_str());
		else
		{
			tmp+=StrFormat("%s", type.c_str());
		}
	}
	if(tmp.empty())
	{
		std::cerr << type << "\n";
		// Error - not type definition
		tmp="text";
	}
	return tmp;
}

std::string CXmlAndSql::CreateSqlEnumerationTypes()
{
	std::string tmp;  //std::vector<IXmlNodePtr>
	std::sort(_symbols.Enumerations().begin(), _symbols.Enumerations().end(), symbolcomp);
	for(size_t i=0; i< _symbols.Enumerations().size(); i++)
	{
		ISymbolPtr symbol=_symbols.Enumerations().at(i);
		tmp+=StrFormat("CREATE TYPE %s AS ENUM (", DemangleName(symbol->Name()).c_str());

		for(size_t j=0; j< symbol->Enumerations().size(); j++)
		{
			if(j>0) tmp+=",";
			tmp+=StrFormat("'%s'", symbol->Enumerations().at(j).c_str());
		}
		tmp+=");\n";
	}
	return tmp;
}
static void GetElementMinMax(ISymbolPtr s2,  int &min, int &max, bool & bOptional )
{
	if(s2->LowerBounds().size()>0) 
	{
		bOptional=s2->LowerBounds().at(0)==0;
		min=s2->LowerBounds().at(0);
	}
	if (s2->UpperBounds().size() > 0)
	{ 
		max=s2->UpperBounds().at(0);
		if(max==-1)
			max=1000; // unbounded
	}
}

void CXmlAndSql::CreateSimpleContent( IXmlNode * type, std::string rawname, std::string &tmp, std::string &keys, std::string &constraints)
{
	std::string stypename = ConvertXsd2SqlDataType(type->PrimitiveType(), NULL);
	std::string name = DemangleName(SqlDemangleType(rawname));

	std::string comment=StrFormat("-- element of %s ", stypename.c_str());;
	if(type->ListSize()>1) comment = StrFormat("-- list of %s ", stypename.c_str());
	std::string sqlname = name;
	std::string sqltype = stypename;
	if(type->ListSize()>1)
		sqltype+="["+StrFormat("%d", type->ListSize())+"]";
	tmp+=StrFormat("\t%s %s, %s\n", sqlname.c_str(), sqltype.c_str(),  comment.c_str());
}
/**
This generates an index. Does it really need a type?
*/
void CXmlAndSql::CreateIndexContent(IXmlNode * outernode, IXmlNode * substitutionElem, IXmlNode * innerelem, std::string &tmp, std::string &keys, std::string &constraints)
{
	assert(innerelem!=NULL);
	assert(outernode!=NULL);

	ISymbolPtr elem=innerelem;
	std::string name = DemangleName(innerelem->Name());
	std::string stypename = innerelem->TypeName();
	assert(!stypename.empty());

	std::string comment=StrFormat("-- index into table %s ", SqlDemangleType(stypename).c_str());
	// if substitution list, need to add all of them now

	std::string sqlname = "_" + name;
	std::string sqltype = "integer";

	// FIXME: substitution groups use the affiliation count not the current element
	ISymbolPtr group=elem;

	// Substitution groups inherit ordinality from base element
	if(substitutionElem!=NULL)
		group = substitutionElem;

	if(group->IsArray())
	{
		//elem->Array() = true; // there can be multiple elements in QIF with same type
		// where is bounds defined in type or in element definition of type
		// Hpoefully we got the correct particle that defines the bounds
		sqlname="_"+sqlname;
		sqltype=sqltype+"[]";
	}

	tmp+=StrFormat("\t%s %s, %s\n", sqlname.c_str() , sqltype.c_str(), comment.c_str());

	keys+=StrFormat("\tKEY _%s (_%s),\n", sqlname.c_str(), sqlname.c_str());
	constraints+=StrFormat("\tCONSTRAINT xxxx%s FOREIGN KEY (_%s) REFERENCES %s(id),\n", sqlname.c_str(),sqlname.c_str(),sqlname.c_str());
}
void CXmlAndSql::CreateSqlField(IXmlNode * node, std::string &tmp, std::string &keys, std::string &constraints)
{
	std::cout << node->Name() << std::endl;
	// Each type has a list of variables: attributes, inherited types, and elements associated with it.
	// Types can be simple and complex

	//if(node->Name()=="PrimaryUnitsType")
	//{
	//	assert(0);
	//}

	if(node && node->vars.size()>0)
	{
		std::vector<CVarDefPtr> seenvars;
		for(size_t j=0; j< node->vars.size(); j++)
		{
			//
			// s2 is the variable element pointer definition
			// elem2 is the IXmlNode pointer of the variable definition
			// Type should be the same for s2 or elem2 since they are now copies of each other.
			CVarDefPtr s2 = node->vars[j];
			assert(s2!=NULL);

			///////////////////////////////////////////////////////////////////////////////////
			// Choices have been "removed". Unfortunately combining choices can lead to duplicate names. 
			// And some duplicate names are optional and others not optional - so all "simple" types are made optional. 
			//
			// The XML will generate a choice, and the sql table will accept either (or both).
			// There is no checking of mutual exclusion within a choice, instead Xerces XSD/XML parser should catch this.
			//
			// Remove duplicates - so choice will work - ok, its a hack but still
			//
			bool bSeen=false;
			for(size_t k=0; k< seenvars.size(); k++)
			{
				// Skip duplicate - although may be difference in bounds!
				if(seenvars[k]->Name() == s2->Name() && seenvars[k]->TypeName() == s2->TypeName())
				{
					bSeen=true;
					break;
				}
			}
			if(bSeen)
				continue;
			seenvars.push_back(s2);
			// End of  big hack
			///////////////////////////////////////////////////////////////////////////////////

			IXmlNodePtr elem2 = s2->GetXmlNodePtr();
			IXmlNodePtr type = elem2 ? _symbols.FindTypeNode(elem2->TypeName()) : NULL;

			//if(s2->Name()=="PartSetType")
			//{
			//	_asm int 3;
			//}

			if(s2->XercesType() == XercesAdditions::FACET)
			{
				continue;
			}
			else if(s2->XercesType() == XercesAdditions::ATTRIBUTE_DECLARATION)
			{
				// assuming all attributes are simple?
				std::string comment = "-- attribute";
				std::string name = DemangleName(s2->Name());
				tmp+=StrFormat("\t%s %s%s,%s\n", 
					name.c_str(), 
					ConvertXsd2SqlDataType(s2->TypeName(), NULL).c_str(),
					(!s2->Required())? " NOT NULL" : "",
					comment.c_str());
			}
			else if(type &&  type->SimpleType() &&  type->SimpleContent())
			{
				CreateSimpleContent( type.get(), s2->Name(), tmp, keys,constraints);
			}
			else if(s2->IsSimpleType() || s2->IsSimpleContent())  
			{
				std::string sqlname = DemangleName(s2->Name());
				std::string stypename = s2->TypeName();
				s2->SqlType()=ConvertXsd2SqlDataType(stypename, s2.get());
				//tmp+=StrFormat("\t%s %s%s, \n", 
				if(s2->IsArray())
				{
					tmp+=StrFormat("\t%s %s[], \n", 	sqlname.c_str(), s2->SqlType().c_str()	);
				}
				else
				{
					tmp+=StrFormat("\t%s %s, \n",	sqlname.c_str(), s2->SqlType().c_str());
						//(!s2->Optional())? " NOT NULL": "");
				}
			}
			else
			{
				std::string type=s2->TypeName();
				if(type.empty())
					type=s2->BaseTypeName();
			
				// Substitutions are only allowed to modeled as global (outer) elements
				IXmlNodePtr head =   _symbols.FindNamedEntity(s2->Name() ); // usually ref
				if(head && !head->IsSubstitutionHead())
				{
					//CreateIndexContent(node, NULL, s2->Name(), tmp, keys, constraints);
					CreateIndexContent(node, NULL, elem2.get(), tmp, keys, constraints);
				}

				std::set<std::string> supers;
				if(head && head->IsSubstitutionHead())
				{
					supers.insert(s2->Name()); // FIXME: check if abstract? Cant its an element
					// if substitution, isnert all supers as it could be any one of these "derived" types
					supers.insert(head->SubstitutionList().begin(), head->SubstitutionList().end());
				}		

				for(std::set<std::string>::iterator it = supers.begin(); it != supers.end(); it++)
				{
					std::string super = (*it);
					//CreateIndexContent(node, elem2.get(), super, tmp, keys, constraints);
					IXmlNodePtr outer = _symbols.FindNamedEntity(super); // HAS to be "global" entity definition
					CreateIndexContent(node, elem2.get(), outer.get(), tmp, keys, constraints);
				}

			}
		}
	}
}
void CXmlAndSql::CreateSqlTableFromType(IXmlNodePtr def, std::string &sql, std::string constraints,std::string &keys)
{
	if(def.get() == NULL)
	{
		assert(0);
	}
	std::string tmp;
	//std::string name = ReplaceOnce(def->Name(), "Type", "");
	std::string name = SqlDemangleType(def->Name());

	if ( def->Type()==enumeration_)
	{
		return; // do enumerations in separate type definitions - for now
	}
	else if(def->IsSimpleType()|| def->IsSimpleContent())
	{
		std::cerr << "Skip Simple SQL Type " << name << "\n";
		return;
	}
	else if(strcasecmp(name.c_str(),"any")==0)
	{ 
		//_asm int 3;
		// Do not attempt to create table of anytype ...
		// Legal in XSD, but not handled
		return;
	}
	else
	{
		//tmp+=StrFormat("DROP TABLE IF EXISTS %s;\n", name.c_str());
		std::cout << StrFormat("CREATE TABLE %s \n", DemangleName(name).c_str());
		tmp+=StrFormat("CREATE TABLE %s (\n", DemangleName(name).c_str());

		//
		// Primary key in all table for indexing
		tmp+="\t_index_  SERIAL PRIMARY KEY,\n";

		CreateSqlField(def.get(), tmp, keys, constraints);

		// SQL Positive indication of integer values as indices
		//			tmp+=keys;
		//ReplaceAll(constraints, "xxxx", name);
		//tmp+=constraints;


		// Remove trailing , before ) or mysql parser will get upset
		RemoveTrailingComma(tmp,' ');
		//std::size_t found = tmp.rfind(",");
		//if(found != std::string::npos) tmp[found]=' ';
		tmp+=") ;\n\n";
		sql+=tmp;
	}
}
std::string CXmlAndSql::CreateSqlTablesFromAllTypes(StringVector excludetypes)
{
	std::string tmp;  //std::vector<IXmlNodePtr>
	std::string constraints;
	std::string keys;

	std::sort(_symbols.Types().begin(), _symbols.Types().end(), stepnodecomp);

	for(size_t i=0; i< _symbols.Types().size(); i++)
	{
		IXmlNodePtr type = _symbols.Types().at(i);
		if(type==NULL)
			continue;
		if(std::find(excludetypes.begin(), excludetypes.end(), type->Name()) != excludetypes.end())
		{
			std::cerr << "Skip " << type->Name() << std::endl;
			continue;
		}
		std::cerr << "Create SQL Table " << type->Name() << "\n";
		//if(!type->Abstract())  // Abstract types can be used
		CreateSqlTableFromType(type, tmp, constraints, keys);
	}
	return tmp;
}

std::string CXmlAndSql::CreateSqlTablesFromTypes(StringVector types)
{
	std::string tmp;  //std::vector<IXmlNodePtr>
	std::string constraints;
	std::string keys;

	// MySQL compliant Sql statements
	//tmp+="CREATE DATABASE  IF NOT EXISTS qif-dev ;\n";
	//tmp+="USE postgres;\n";

	for(size_t i=0; i< types.size(); i++)
	{
		IXmlNodePtr type = _symbols.FindTypeNode(types[i]);
		assert(type!=NULL);
		if(!type->Abstract())
			CreateSqlTableFromType(type, tmp, constraints, keys);
	}
	return tmp;
}

std::string CXmlAndSql::CreateSqlTablesFromGlobalElements()
{
	std::string tmp;  //std::vector<IXmlNodePtr>
	std::string constraints;
	std::string keys;

	for(size_t i=0; i< _symbols.Entities().size(); i++)
	{
		IXmlNodePtr elem = _symbols.Entities().at(i);
		if(elem->Global()==true)
		{
			IXmlNodePtr type = _symbols.FindTypeNode(elem->TypeName());
			assert(type!=NULL);
			tmp+=StrFormat("DROP TABLE IF EXISTS %s;\n", elem->Name().c_str());
			std::cout << StrFormat("CREATE TABLE %s \n", elem->Name().c_str());
			tmp+=StrFormat("CREATE TABLE %s (\n", elem->Name().c_str());

			CreateSqlField(type.get(), tmp, constraints, keys);
			RemoveTrailingComma(tmp, ' ' );  // can be comments at end of line
			tmp+=") ;\n\n";	
		}
	}
	return tmp;
}

//http://xerces.apache.org/xerces-c/apiDocs-3/annotated.html 
// INSERT INTO some_table (col1,col2,col3) values (?,?,?)
void CXmlAndSql::ParseQifDocument(xercesc::DOMElement* e,  std::string & sql, std::string outertypename)
{
	CXercesUtils utils;

	xercesc::DOMNode * node =(xercesc::DOMNode *) e;
	DOMNode::NodeType nodeType= 	node->getNodeType ();
	std::string nodename = ToStr(node->getNodeName()); 
	std::string nodetypename;
	std::string tmp;
	std::string cols;
	std::string vals;
	IXmlNodePtr elem=NULL;
	tabs+="\t";
	std::cout << tabs << "Parse " << nodename << std::endl;

	if(nodeType ==  DOMNode::ELEMENT_NODE)
	{

		//if(nodename=="ArrayReferenceFull")
		//{
		//	assert(0);
		//}	

		std::string outerelemname;
		xercesc::DOMNode * parentnode = node->getParentNode();
		outerelemname=(parentnode->getNodeName()!=NULL)? ToStr(parentnode->getNodeName()) : "";
		if(outerelemname=="#document") outerelemname.clear();
		elem = _symbols.FindNamedEntity(nodename,outerelemname);

		if(elem==NULL && !outerelemname.empty() && _symbols.IsSubstitutionGroupElement(nodename))
			elem = _symbols.FindNamedEntity(nodename); // global element

		// Punt
		if(elem==NULL)
			elem = _symbols.FindNamedEntityInType(nodename, outertypename);

		assert(elem!=NULL);

		IXmlNode * nodetypeDef = _symbols.FindTypeNode(elem->TypeName()).get();
		assert(nodetypeDef!=NULL);
		nodetypename =  nodetypeDef->Name();

		//
		// type names better be unique ...
		tmp+="INSERT INTO " + SqlDemangleType(nodetypename) + " ";
		vals=cols="";

		//
		// Handle all the attributes
		xercesc::DOMNamedNodeMap * attrMap = node->getAttributes () ;
		if(attrMap!=NULL)
		{
			size_t n = attrMap->getLength();
			for(size_t k=0; k< nodetypeDef->Attributes().size(); k++)
			{
				ISymbolPtr symbol = nodetypeDef->Attributes().at(k);
				xercesc::DOMNode * attr = attrMap->getNamedItem(ToXMLCh(symbol->Name()));

				// check if non null, if null, maybe optional
				if(attr!=NULL)
				{
					cols+=symbol->Name()+",";
					//vals+= ToStr(attr->getNodeValue()) + ",";
					const XMLCh * val = attr->getNodeValue();
					if( val == NULL)  val= attr-> getFirstChild()->getNodeValue();
					std::string value = ToStr(val);
					//virtual const XMLCh* Attributes::getType	(	const XMLSize_t 	index	)	const
					// getLength() + getLocalName()
					vals += "'" + value + "',";
				}
			}
		}

		//
		// Now handle all the element children...
		xercesc::DOMNodeList * children = node->getChildNodes ();
		if(children == NULL)
			goto cleanup;
		const XMLSize_t nodeCount = children->getLength() ;

		std::multimap<std::string, xercesc::DOMNode*>_childrenmap;
		typedef std::multimap<std::string, xercesc::DOMNode*> MapType;
		typedef std::multimap<std::string, xercesc::DOMNode*>::iterator ChildMapIterator;

		// First place XML elments into sorted map, in case array of elements
		// This assumes order is NOT important
		for( XMLSize_t ix = 0 ; ix < nodeCount ; ++ix )
		{
			xercesc::DOMNode* child = children->item( ix ) ;
			std::string childname = ToStr(child->getNodeName());
			if(childname[0]=='#') continue;
			_childrenmap.insert(MapType::value_type(childname, child));
		}

		for(ChildMapIterator it=_childrenmap.begin(); it!= _childrenmap.end(); it++)
		{
			std::string childname = (*it).first;
			xercesc::DOMNode* childdomnode = (*it).second;
			IXmlNode * typeptr = nodetypeDef;
			std::string typeName;

			//if(childname=="PartSet")
			//{
			//	_asm int 3;
			//}

			ISymbolPtr varentity = _symbols.FindNamedEntity(childname,nodename); // nodename type as node element can vary
			if(varentity==(ISymbolPtr)NULL && _symbols.IsSubstitutionGroupElement(childname))
				varentity = _symbols.FindNamedEntity(childname); // outer definition

			if(varentity==(ISymbolPtr)NULL)
				varentity = _symbols.FindNamedEntityInType(childname, nodetypename ); // outer TYPE definition
			assert(varentity!=NULL);

			typeptr = _symbols.FindTypeNode(varentity->TypeName()).get();
			assert(typeptr!=NULL);
			typeName = typeptr->Name();

			ISymbolPtr elembase = varentity;
			std::string baseelementname = varentity->SubstitutionBase();
			if(!baseelementname.empty())
			{
				elembase = _symbols.FindNamedEntity(baseelementname, nodename); // substitution group always outer element
				if(elembase==(ISymbolPtr)NULL)
				{
					elembase = _symbols.FindNamedEntityInType(baseelementname, nodetypename);
				}
				assert(elembase!=NULL);
			}
			if(varentity->IsArray()   && (typeptr->IsSimpleType() || typeptr->IsSimpleContent()) )
			{
				vals+="'{";
				cols+= childname + ","; // arrays have two underscores in column name

				while(it!= _childrenmap.end() && (*it).first == childname )
				{
					const XMLCh * val = childdomnode->getNodeValue();
					if( val == NULL)  val= childdomnode-> getFirstChild()->getNodeValue();
					std::string value = ToStr(val);
					xercesc::DOMNode* child = (*it).second;
					vals+= StrFormat("\"%s\"", value.c_str()) + ",";
					it++;
				}
				SimpleRemoveTrailingComma(vals,'}');
				vals+="',";
				it--;  // repeat last iteration since array
				continue; // skip next simple match
			}

			// check if index into sql table if so will need to recurse and get index #
			// Get type of variable
			if(typeptr->IsSimpleType() ||typeptr->IsSimpleContent() )
			{
				// could be enum - ok wil just print out valuoe, FIXME: no type checking
				cols+=childname + ",";

				const XMLCh * val = childdomnode->getNodeValue();
				if( val == NULL)  val= childdomnode-> getFirstChild()->getNodeValue();
				std::string value = ToStr(val);
				if(typeptr->IsList())
				{
					value=Trim(value);
					ReplaceAll(value," ", ",");
					vals +=  "'{"  + value + "}'," ;
				}
				else
				{
					vals += ConvertXml2SqlValue(typeName, value) + ",";
				}
			}

			// Choices are treated like sequences,NO overlap of subelements
			//  let xerces parser handle choice
			// sql will have all choices in table, but select only one

			// complex type and complex content - index into sql table - need to recurse
			else if(elembase->IsArray()) 
			{
				vals+="'{";
				cols+="__" + childname + ","; // arrays have two underscores in column name

				while(it!= _childrenmap.end() && (*it).first == childname )
				{
					xercesc::DOMNode* child = (*it).second;
					ParseQifDocument((xercesc::DOMElement*) childdomnode,  tmp, nodetypename);
					int index = odbc.SizeTable("QIF", SqlDemangleType(typeName));
					vals+= StrFormat("%d", index) + ",";
					it++;
				}
				SimpleRemoveTrailingComma(vals,'}');
				vals+="',";
				it--;  // repeat last iteration since array
			}
			else // not array of indices - but one index into sql table
			{
				// may need enum to distinguish type - or just pointer to corresponding table
				cols+="_" + childname + ",";
				ParseQifDocument((xercesc::DOMElement*) childdomnode,  tmp, nodetypename);

				int index = odbc.SizeTable("QIF", SqlDemangleType(typeName));

				vals+= StrFormat("%d", index) + ",";
			}
		}
	}
cleanup:
	SimpleRemoveTrailingComma(cols,')');
	SimpleRemoveTrailingComma(vals,')');

	// Fixme: check # , in cols = vals

	if(!cols.empty())
		tmp = tmp + "("+ cols + " values " + "(" + vals + ";\n" ;

	//std::sqltablecnt = StrFormat("SELECT COUNT(*) FROM '%s' WITH (NOLOCK) ", nodename.c_str());
	if(elem!=NULL)
		elem->SqlCount()++;
	tabs=tabs.substr(1);
	if(!cols.empty())
	{
		std::cout << "Insert " << tmp << "\n";
		odbc.InsertStatement(tmp);
		sql=tmp+sql;
	}
//	return elem->SqlCount();
	//return odbc.SizeTable("QIF", SqlDemangleType(nodetypename));
}
