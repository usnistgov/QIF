//
// UnitTest7.cpp
//

// This software was developed by U.S. Government employees as part of
// their official duties and is not subject to copyright. No warranty implied 
// or intended.


/**

*/
void UnitTest7(CXsdParser &parser)
{
	CFairReports fair;
	std::string str;
	CXmlAndSql sqlhandler(parser._symbols);
#if 1
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
		fair.SaveReport(CFairReports::ExeDirectory()+ "QifSql.sql", str);


		XSElementDeclaration * xsElem = parser.FindXsdElement("AngleBetweenCharacteristicActual");
		parser.BuildXsdElement(xsElem );
		str =  parser._symbols.DumpElements();
		fair.SaveReport(CFairReports::ExeDirectory()+ "Elements.txt", str);

		str=sqlhandler.CreateSqlTablesFromTypes(StringVector (std::string("ActualAngularValueType"),std::string()));
		
#endif
	fair.SaveReport(CFairReports::ExeDirectory()+ "UnitTests\\Test7.sql", str);
}


/**
 


*/