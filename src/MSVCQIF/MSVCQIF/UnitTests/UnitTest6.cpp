//
// UnitTest6.cpp
//

// This software was developed by U.S. Government employees as part of
// their official duties and is not subject to copyright. No warranty implied 
// or intended.


/**


*/
void UnitTest6(CXsdParser &parser)
{
	CFairReports fair;
	std::string str;
	CXmlAndSql sqlhandler(parser._symbols);

		XSTypeDefinition * xsType = parser.FindXsdType("CharacteristicActualsType");
		parser.BuildXsdType(xsType);
		xsType = parser.FindXsdType("CharacteristicActualBaseType");
		parser.BuildXsdType(xsType);
		str =  parser._symbols.DumpTypes(StringVector());
		fair.SaveReport(CFairReports::ExeDirectory()+ "Types.txt", str);

		XSElementDeclaration * xsElem = parser.FindXsdElement("AngleBetweenCharacteristicActual");
		parser.BuildXsdElement(xsElem );
		parser.BuildSubstitutionGroupAliasing(xsElem);

		str=sqlhandler.CreateSqlTablesFromTypes(StringVector (std::string("CharacteristicActualsType"),std::string()));

	fair.SaveReport(CFairReports::ExeDirectory()+ "UnitTests\\Test6.sql", str);
}


/**
 


*/