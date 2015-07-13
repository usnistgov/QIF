//
// UnitTest4.cpp
//

// This software was developed by U.S. Government employees as part of
// their official duties and is not subject to copyright. No warranty implied 
// or intended.


/**
This tests 
*/
void UnitTest4(CXsdParser &parser)
{
	CFairReports fair;
	std::string str;
	CXmlAndSql sqlhandler(parser._symbols);


	fair.SaveReport(CFairReports::ExeDirectory()+ "Test4.sql", str);
}


/**
 


*/