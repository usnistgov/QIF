//
// FairReports.cpp
//

// No precompiled headers...
//#include "StdAfx.h"

#include "FairReports.h"
#include <string>
#include <numeric> 
#include <xercesc/dom/DOM.hpp>
#include <xercesc/util/PlatformUtils.hpp>
#include <xsd/cxx/xml/string.hxx>
#include "QIFDocument.hxx"
#include <algorithm>
#include <iostream>
#include "XercesUtils.h"

#ifdef WINDOWS
#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#endif
#include "StdStringFcn.h"

using namespace xsd;
using namespace qif2;
using namespace std;

#define SAFESTORE(X,Y,Z) \
	try { X=Y; } catch(...) { X=Z;}


static std::string GetStrDateTimestamp(xsd::cxx::tree::optional<xsd::qif2::NotedEventType::TimeOccurred_type> & ts)
{
	std::stringstream s;
	ts.get();
	s << ts.get().year() << "/" << ts.get().month() << "/" << ts.get().day() << "T" << ts.get().hours()  << ":" << ts.get().minutes() << ":" << ts.get().seconds()<< "Z";
	return s.str();
}

static int GetIdFromString(std::string str)
{
	int id=0;
	id=ConvertString<int>(str, 0);
#if 0
	if(str.size() == 1)
		id=str[0];
	if(str.size() == 2)
	{
		char s[3] ;
		strncpy(s, str.c_str(),2);
		id=(int) s;
	}
#endif
	return id;
}
//////////////////////////////////////////////////////////////
CFairReports::CFairReports(void)
{
}


CFairReports::~CFairReports(void)
{
}



std::string CFairReports::GenerateFAIRRepor1(xercesc::DOMElement* e ) 
{
	try
	{
		CXercesUtils utils;

		// Form 1
		// 
		part_numbers = utils.GetXpathResults(e, "//QIFDocument/Product/PartSet/Part/ModelNumber");
		part_names =utils. GetXpathResults(e, "//QIFDocument/Product/PartSet/Part/Name");
		serial_numbers = utils.GetXpathResults(e, "//QIFDocument/MeasurementsResults/ActualComponentSet/ActualComponent/SerialNumber");
		FAI_report_numbers = utils.GetXpathResults(e, "//QIFDocument/PreInspectionTraceability/ReportNumber");

		part_revisions= utils.GetXpathResults(e, "//QIFDocument/Product/PartSet/Part/Version");
		drawing_numbers= utils.GetXpathResults(e, "//QIFDocument/Product/PartSet/Part/DefinitionExternal/PrintedDrawing/DrawingNumber");
		drawing_revisions= utils.GetXpathResults(e, "//QIFDocument/Product/PartSet/Part/DefinitionExternal/PrintedDrawing/Version");
		additional_changes= utils.GetXpathResults(e, "//QIFDocument/Product/PartSet/Part/DefinitionExternal/PrintedDrawing/AdditionalChanges");

		organization_names= utils.GetXpathResults(e, "//QIFDocument/PreInspectionTraceability/InspectingOrganization/Name");
		supplier_codes= utils.GetXpathResults(e, "//QIFDocument/PreInspectionTraceability/SupplierCode");
		po_numbers= utils.GetXpathResults(e, "//QIFDocument/PreInspectionTraceability/PurchaseOrderNumber");

		detail_fai= utils.GetXpathResults(e, "//QIFDocument/PreInspectionTraceability/InspectionScope");
		full_fai= utils.GetXpathResults(e, "//QIFDocument/PreInspectionTraceability/InspectionMode");

		return Form1();
		//fair.SaveReport(CFairReports::ExeDirectory()+ "FairReport1.html", report1);
	}
	catch (const xml_schema::exception& e)
	{
		//OutputDebugString(e.what());
		cerr << e << endl;
	}
	catch (...)
	{
		XERCES_STD_QUALIFIER cerr << "An error occurred prarsing/creating the document" << XERCES_STD_QUALIFIER endl;
	}	
	return "";
}

std::string CFairReports::GenerateFAIRRepor3(xercesc::DOMElement* e ) 
{
	///////////////////////////////////////////////////////////////////////////////////////////////
	// FAIR Form 3 new additions - generally arrays of values - array size *should* match but doesnt
	///////////////////////////////////////////////////////////////////////////////////////////////

	try 
	{
		CXercesUtils utils;

		// Get all the XML nodes to help fill out form
		//
		std::vector<xsd::qif2::CharacteristicItemBaseType*> cis=   utils.GetXpathAsStructs<xsd::qif2::CharacteristicItemBaseType>(e, "//QIFDocument/Characteristics/CharacteristicItems/*");

		for(size_t k=0; k< cis.size(); k++)
		{
			CFairReports::CharacteristicInfo ci;
			std::string tooling_id;
			std::string ci_id;
			SAFESTORE(ci.Name,cis[k]->Name(),"");
			SAFESTORE(ci.characteristic_designator,*(cis[k]->KeyCharacteristic()->Criticality()),"");
			SAFESTORE(ci.sheet_number,*(cis[k]->LocationOnDrawing()->SheetNumber()),"");
			SAFESTORE(ci.drawing_zone,*(cis[k]->LocationOnDrawing()->DrawingZone()),"");

			SAFESTORE(ci_id,cis[k]->id(),"");
			ci.id = GetIdFromString(ci_id);

			ci.optional= utils.GetElementName(static_cast<xercesc::DOMElement*> ((*cis[k])._node ()));
			ci.optional=ci.optional.substr(0,ci.optional.find("CharacteristicItem"));

			SAFESTORE(tooling_id, *(cis[k]->LocationOnDrawing()->DrawingId()), "-1");
			ci.designed_toolingId= GetIdFromString(tooling_id); // atoi(tooling_id.c_str());

			size_t num;
			SAFESTORE(num,cis[k]->MeasurementDeviceIds()->Id().size(),0);  // in case no device specified, catch exception

			for(size_t m=0; m < num; m++)
			{
				std::string id;
				SAFESTORE(id,cis[k]->MeasurementDeviceIds()->Id().at(m),"-1");
				ci.measurement_ids.push_back(GetIdFromString(id));
			}

			char_info.push_back(ci);
		}

		// MeasurementDevice lookup id and then get associatd name, save in devicemap
		//
		std::vector<xsd::qif2::MeasurementDeviceType*> devices= utils.GetXpathAsStructs<xsd::qif2::MeasurementDeviceType>(e, "//QIFDocument/MeasurementResources/MeasurementDevices/MeasurementDevice");
		std::map<int, std::string> devicemap;
		for(size_t i=0; i< devices.size(); i++)
		{
			std::string device_name;
			std::string device_id;
			SAFESTORE(device_name, devices[i]->Name(), "Unknown");
			SAFESTORE(device_id, devices[i]->id(), "-1");
			devicemap[GetIdFromString(device_id)]=device_name;
		}

		// now resolve form 3 MeasurementDevice Id to measurement name
		//
		for(size_t j=0; j< char_info.size(); j++)
		{
			for(size_t k=0; k< char_info[j].measurement_ids.size(); k++)
				char_info[j].measurement_names.push_back(devicemap[char_info[j].measurement_ids[k]]); // blank string if no match
		}

		// Get all printed drawing id accompanied with name, save in printmap
		//
		std::vector<xsd::qif2::PrintedDrawingType*> nodes= utils.GetXpathAsStructs<xsd::qif2::PrintedDrawingType>(e, "//QIFDocument/Product/PartSet/Part/DefinitionExternal/PrintedDrawing");
		std::map<int, std::string> printmap;
		for(size_t i=0; i< nodes.size(); i++)
		{
			std::string print_name;
			std::string print_id;
			SAFESTORE(print_name, nodes[i]->Name(), "Unknown");
			SAFESTORE(print_id, nodes[i]->id(), "-1");
			printmap[GetIdFromString(print_id)]=print_name;
		}

		// now resolve form 3 PrintDrawing Id to PrintDrawing name
		//
		for(size_t j=0; j< char_info.size(); j++)
		{
			char_info[j].print_drawing_name=printmap[char_info[j].designed_toolingId]; // blank string if no match
		}

		// These are single value arrays in form 3
		//
		prepared_by= utils.GetXpathResults(e, "//QIFDocument/MeasurementsResults/InspectionTraceability/ReportPreparer/Name");
		date= utils.GetXpathResults(e, "//QIFDocument/MeasurementsResults/InspectionTraceability/ReportPreparationDate");


		std::vector<xsd::qif2::CharacteristicActualBaseType*> actuals=   utils.GetXpathAsStructs<xsd::qif2::CharacteristicActualBaseType>(e, "//QIFDocument/MeasurementsResults/MeasurementResults/MeasuredCharacteristics/CharacteristicActuals/*");
		for(size_t i=0; i< actuals.size(); i++)
		{
			std::string result, non_conformance_num;
			SAFESTORE(result, *(actuals[i]->Status().CharacteristicStatusEnum()), "");
			results.push_back(result);
			SAFESTORE(non_conformance_num, *(actuals[i]->NonConformanceDesignator()), "");
			non_conformance_number.push_back(non_conformance_num);
		}

		// Characteristic items better match Characteristic actual measurements
		//
		// results.size() == cis.size();
		// Requirements need information from Characteristic Definitions
		//
		std::vector<xsd::qif2::DatumReferenceFrameType*> datum=   utils.GetXpathAsStructs<xsd::qif2::DatumReferenceFrameType>(e, "//QIFDocument/DatumReferenceFrames/*");
		for(size_t i=0; i< datum.size(); i++)
		{
			CFairReports::DatumReferenceFrameInfo datum_definition;

			std::string id;
			SAFESTORE(id, datum[i]->id(), "-1");
			datum_definition.id = GetIdFromString(id);

			std::vector<std::string> excludes;
			excludes.push_back("DatumDefinitionId");
			datum_definition.requirements+=utils.GetSubElementValues(static_cast<xercesc::DOMElement*> ((*datum[i])._node ()), excludes);

			datum_info[datum_definition.id]=datum_definition;
		}
		// Requirements need information from Characteristic Definitions
		//
		std::vector<xsd::qif2::CharacteristicDefinitionBaseType*> definitions=   utils.GetXpathAsStructs<xsd::qif2::CharacteristicDefinitionBaseType>(e, "//QIFDocument/Characteristics/CharacteristicDefinitions/*");
		for(size_t i=0; i< definitions.size(); i++)
		{
			CFairReports::CharacteristicDefinitionInfo char_definition;
			char_definition.pCharacteristicDefinitionBaseType= (void * ) definitions[i];

			std::string id;
			SAFESTORE(id, definitions[i]->id(), "-1");
			char_definition.id = GetIdFromString(id);

			xercesc::DOMElement* elem;
			if(elem=utils.FindChildElementName(static_cast<xercesc::DOMElement*> ((*definitions[i])._node ()) , "DatumReferenceFrameId") ) 
			{
				std::string datumId = utils.GetElementValue(elem);
				char_definition.DeviceDatumRefId=atoi(datumId.c_str());
				char_definition.requirements+=datum_info[char_definition.DeviceDatumRefId].requirements;
			}

			std::vector<std::string> excludes;
			excludes.push_back("DatumReferenceFrameId");
			char_definition.requirements+=utils.GetSubElementValues(static_cast<xercesc::DOMElement*> ((*definitions[i])._node ()), excludes);

			chardef_info[char_definition.id]=char_definition;

		}

		// Requirements are based on the Characteristic Nominals
		//
		std::vector<xsd::qif2::CharacteristicNominalBaseType*> nominals=  utils.GetXpathAsStructs<xsd::qif2::CharacteristicNominalBaseType>(e, "//QIFDocument/Characteristics/CharacteristicNominals/*");
		for(size_t i=0; i< nominals.size(); i++)
		{
			CFairReports::CharacteristicNominalInfo char_nominal;

			std::string id;
			SAFESTORE(id, nominals[i]->id(), "-1");
			char_nominal.id = GetIdFromString(id);

			std::string definition_id;
			SAFESTORE(definition_id, nominals[i]->CharacteristicDefinitionId(), "-1");
			char_nominal.CharacteristicDefinitionId = GetIdFromString(definition_id);

			char_nominal.pBaseCharacteristicDefinitionType=(CharacteristicDefinitionBaseType*) chardef_info[char_nominal.CharacteristicDefinitionId].pCharacteristicDefinitionBaseType;

			char_nominal.requirements=chardef_info[char_nominal.CharacteristicDefinitionId].requirements;

			std::vector<std::string> excludes;
			excludes.push_back("CharacteristicDefinitionId");
			char_nominal.requirements+=utils.GetSubElementValues(static_cast<xercesc::DOMElement*> ((*nominals[i])._node ()), excludes);

			charnom_info.push_back(char_nominal);
		}
		return  Form3();
	}
	catch (const xml_schema::exception& e)
	{
		//OutputDebugString(e.what());
		cerr << e << endl;
	}
	catch (...)
	{
		XERCES_STD_QUALIFIER cerr << "An error occurred prarsing/creating the document" << XERCES_STD_QUALIFIER endl;
	}	
	return "";
}

void CFairReports::SaveReport(std::string filename, std::string &report)
{
	std::ofstream out(filename.c_str()); 
	out << report <<std::endl;
	out.close();
}
std::string CFairReports::StdStringFormat(const char* format, ...)
{
	va_list ap;
	va_start(ap, format);

	int m;
	int n= strlen(format) + 1028;
	std::string tmp(n,'0');	


	// Kind of a bogus way to insure that we don't
	// exceed the limit of our buffer
	while((m=vsnprintf(&tmp[0], n-1, format, ap))<0)
	{
		n=n+1028;
		tmp.resize(n,'0');
	}
	va_end(ap);
	return tmp.substr(0,m);

}

bool CFairReports::ChromeExists()
{
	return true;
#if 0
	HKEY hKey;
	LONG res=RegOpenKeyEx(HKEY_CLASSES_ROOT, TEXT("ChromeHTML"),0,KEY_QUERY_VALUE,&hKey);
	if(res!=ERROR_SUCCESS)
	{
		OutputDebugString(TEXT("No google chrome web browser\n"));
		return false;
	}
	return true;
#endif
}
void CFairReports::CheckEntries()
{
	// This should actually do a better job checking for correctness
	if(part_names.size() == 0) part_names.push_back("");
	if(part_numbers.size() == 0) part_numbers.push_back("");
	if(serial_numbers.size() == 0) serial_numbers.push_back("");
	if(FAI_report_numbers.size() == 0) FAI_report_numbers.push_back("");
	if(part_revisions.size() == 0) part_revisions.push_back("");
	if(drawing_numbers.size() == 0) drawing_numbers.push_back("");
	if(drawing_revisions.size() == 0) drawing_revisions.push_back("");
	if( additional_changes.size() == 0) additional_changes.push_back("");
	if(organization_names.size() == 0) organization_names.push_back("");
	if( supplier_codes.size() == 0) supplier_codes.push_back("");
	if(po_numbers.size() == 0) po_numbers.push_back("");
	if(detail_fai.size() == 0) detail_fai.push_back("");
	if( full_fai.size() == 0) full_fai.push_back("");

}
void CFairReports::CheckEntries3()
{
	// This should actually do a better job checking for correctness
	if(prepared_by.size() == 0) prepared_by.push_back("");
	if(date.size() == 0) date.push_back("");
	while(results.size()<char_info.size()) results.push_back(""); // kludge to prevent chaos
	while(non_conformance_number.size()<char_info.size()) non_conformance_number.push_back(""); // kludge to prevent chaos
}
#define TEXT(X) X
std::string CFairReports::Form1()
{
	CheckEntries(); // Clean up any cretin arrays
	std::string form;
	form += TEXT("<html>\n");
	form += TEXT("<header>\n");
	form += TEXT("<style type=\"text/css\">\n");
	form += TEXT("<!--\n");
	form += TEXT("@page { size:8.5in 11in; margin: .25in }\n");
	form += TEXT("-->\n");
	form += TEXT("table { table-layout: fixed; }\n");
	form += TEXT("\n");
	form += TEXT("@media print {\n");
	form += TEXT("\n");
	form += TEXT("   table { table-layout: fixed; }\n");
	form += TEXT("  #hearder{display:none;} \n");
	form += TEXT("   #footer{display:none;} \n");
	form += TEXT("  * {\n");
	form += TEXT("    background: #fff;\n");
	form += TEXT("    color: #000;\n");
	form += TEXT("  }\n");
	form += TEXT("  td{font-family: Arial; font-size: 10pt;}\n");
	form += TEXT("  th{font-family: Arial; font-size: 10pt;}\n");
	form += TEXT("  tr{ height=\".120in\"}\n");
	form += TEXT("  html {\n");
	form += TEXT("   font: 100%/1.5 georgia, serif;\n");
	form += TEXT("  }\n");
	form += TEXT("  @page { size:8.5in 11in; margin: 0.25in }\n");
	form += TEXT("body\n");
	form += TEXT("{\n");
	form += TEXT("  <!-- top, right, bottom, left --> \n");
	form += TEXT(" margin: 2mm 5mm 2mm 5mm;\n");
	form += TEXT("}\n");
	form += TEXT("}\n");
	form += TEXT("</style>\n");
	form += TEXT("</header>\n");
	form += TEXT("<body>\n");
	form += TEXT("<table width=\"100%\" border=0> \n");
	form += TEXT("<tr>\n");
	form += TEXT("<th width=\"70%\" align=\"left\"> AS9102 Rev A First Article Inspection </th>\n");
	form += TEXT("<th width=\"30%\" align=\"right\"> Sheet 1 of <u>1</u></th>\n");
	form += TEXT("</tr>\n");
	form += TEXT("<tr> <td colspan=2><b> Form 1: Product Number Accountability </b></tr>\n");
	form += TEXT("<tr height=\"10px\" colspan=2> <td>&nbsp;</td></tr>\n");
	form += TEXT("</table>\n");


	form += TEXT("<table width=\"100%\" border=1 style=\"border-collapse: collapse;\">\n");

	form += TEXT("<tr height=75px valign=\"top\" align=\"left\">\n");
	form += StdStringFormat("<th width=\"1.625in\"><b>1. Part Number </b><br>%s</th>\n", part_numbers[0].c_str());

	form += StdStringFormat("<th width=\"1.625in\"><b>2. Part Name </b><br>%s</th>\n", part_names[0].c_str());
	form += StdStringFormat("<th width=\"1.625in\"><b>3. Serial Number </b><br>%s</th>\n", serial_numbers[0].c_str());
	form += StdStringFormat("<th width=\"1.625in\"><b>4. FAI Report Number </b><br>%s</th>\n", FAI_report_numbers[0].c_str());
	form += TEXT("</tr>\n");


	form += TEXT("<tr height=75px valign=\"top\" align=\"left\">\n");
	form += StdStringFormat("<td  ><b> 5. Part Revision Level</b><br>%s</td>\n", part_revisions[0].c_str());
	form += StdStringFormat("<td ><b> 6.Drawing Number </b><br>%s</td>\n", drawing_numbers[0].c_str());
	form += StdStringFormat("<td ><b> 7. Drawing revision level</b><br>%s</td>\n", drawing_revisions[0].c_str());
	form += StdStringFormat("<td  ><b> 8. Additional Changes </b><br>%s</td>\n", additional_changes[0].c_str());
	form += TEXT("</tr>\n");

	form += TEXT("<tr height=70px valign=\"top\" align=\"left\">\n");
	form += StdStringFormat("<td  ><b> 9. Manufacturing Process<br>Reference</b></td>\n");
	form += StdStringFormat("<td ><b> 10. Organization Name </b><br>%s</td>\n", organization_names[0].c_str());
	form += StdStringFormat("<td ><b> 11. Supplier Code</b><br>%s</td>\n", supplier_codes[0].c_str());
	form += StdStringFormat("<td   ><b> 12. P.O. Number </b><br>%s</td>\n", po_numbers[0].c_str());
	form += TEXT("</tr>\n");

	form += TEXT("<tr height=38px valign=\"top\" align=\"left\">\n");
	form += StdStringFormat("<td  ><b> 13. Detail FAI &nbsp;&nbsp;&nbsp; &%s;</b></td>\n", detail_fai[0] == "DETAIL" ? "#9745" : "#9744" );
	form += StdStringFormat("<td  ><b> 14. Full FAI &nbsp;&nbsp;&nbsp; &%s;<br> Partial FAI&nbsp;&nbsp;&nbsp; &%s;</b></td>\n", 
		full_fai[0] == "FAI_Full" ? "#9745" : "#9744" , full_fai[0] != "FAI_Full" ? "#9745" : "#9744");
	form += TEXT("<td  colspan=2><br><b> Baseline Part Number including revision number</b></td>\n");
	form += TEXT("</tr>\n");

	form += TEXT("<tr height=38px valign=\"top\" align=\"left\">\n");
	form += TEXT("<td  ><b> Assembly FAI&nbsp;&nbsp;&nbsp; &#x2751;</b></td>\n");
	form += TEXT("<td  colspan=3><b> Reason for Partial FAI:</b></td>\n");
	form += TEXT("</tr>\n");

	form += TEXT("<tr height=\"0.5in\"  align=\"left\"> <td colspan=4> a) if above part number is a detail part only, go to Field 19<br>\n");
	form += TEXT("b) if above part number is an assembly, go to the \"INDEX\" section below </td> \n");
	form += TEXT("</tr>\n");

	form += TEXT("<tr height=\"0.125in\" valign=\"top\" align=\"left\">\n");
	form += TEXT("<td  colspan=4><b> INDEX of part numbers or sub-assembly numbers required to make the assembly noted above.</b></td>\n");
	form += TEXT("</tr>\n");

	form += TEXT("<tr height=\"0.20in\" valign=\"top\" align=\"left\">\n");
	form += TEXT("<td  ><b> 15. Part Number</b></td>\n");
	form += TEXT("<td  ><b> 16. Part Name</b></td>\n");
	form += TEXT("<td  ><b> 17. Part Serial Number</b></td>\n");
	form += TEXT("<td  ><b> 18. FAI Report Number</b></td>\n");
	form += TEXT("</tr>\n");
	form += TEXT("<tr height=\"0.20in\"> <td> &nbsp; </td><td> &nbsp; </td><td> &nbsp; </td><td> &nbsp; </td> </tr>\n");
	form += TEXT("<tr height=\"0.20in\"> <td> &nbsp; </td><td> &nbsp; </td><td> &nbsp; </td><td> &nbsp; </td> </tr>\n");
	form += TEXT("<tr height=\"0.20in\"> <td> &nbsp; </td><td> &nbsp; </td><td> &nbsp; </td><td> &nbsp; </td> </tr>\n");
	form += TEXT("<tr height=\"0.20in\"> <td> &nbsp; </td><td> &nbsp; </td><td> &nbsp; </td><td> &nbsp; </td> </tr>\n");
	form += TEXT("<tr height=\"0.20in\"> <td> &nbsp; </td><td> &nbsp; </td><td> &nbsp; </td><td> &nbsp; </td> </tr>\n");
	form += TEXT("<tr height=\"0.20in\"> <td> &nbsp; </td><td> &nbsp; </td><td> &nbsp; </td><td> &nbsp; </td> </tr>\n");
	form += TEXT("<tr height=\"0.20in\"> <td> &nbsp; </td><td> &nbsp; </td><td> &nbsp; </td><td> &nbsp; </td> </tr>\n");
	form += TEXT("<tr height=\"0.20in\"> <td> &nbsp; </td><td> &nbsp; </td><td> &nbsp; </td><td> &nbsp; </td> </tr>\n");
	form += TEXT("<tr height=\"0.20in\"> <td> &nbsp; </td><td> &nbsp; </td><td> &nbsp; </td><td> &nbsp; </td> </tr>\n");
	form += TEXT("<tr height=\"0.20in\"> <td> &nbsp; </td><td> &nbsp; </td><td> &nbsp; </td><td> &nbsp; </td> </tr>\n");
	form += TEXT("<tr height=\"0.20in\"> <td> &nbsp; </td><td> &nbsp; </td><td> &nbsp; </td><td> &nbsp; </td> </tr>\n");
	form += TEXT("<tr height=\"0.20in\"> <td> &nbsp; </td><td> &nbsp; </td><td> &nbsp; </td><td> &nbsp; </td> </tr>\n");
	form += TEXT("<tr height=\"0.20in\"> <td> &nbsp; </td><td> &nbsp; </td><td> &nbsp; </td><td> &nbsp; </td> </tr>\n");
	form += TEXT("<tr height=\"0.20in\"> <td> &nbsp; </td><td> &nbsp; </td><td> &nbsp; </td><td> &nbsp; </td> </tr>\n");
	form += TEXT("<tr height=\"0.20in\"> <td> &nbsp; </td><td> &nbsp; </td><td> &nbsp; </td><td> &nbsp; </td> </tr>\n");
	form += TEXT("<tr height=\"0.20in\"> <td> &nbsp; </td><td> &nbsp; </td><td> &nbsp; </td><td> &nbsp; </td> </tr>\n");
	form += TEXT("<tr height=\"0.20in\"> <td> &nbsp; </td><td> &nbsp; </td><td> &nbsp; </td><td> &nbsp; </td> </tr>\n");

	form += TEXT("<tr height=\"0.25in\" > <td colspan=4 style=\"border:solid 0px #060\"> <b> 1) Signature dicates that all characteristics are accounted for; meet drawing requirements or are properly documented for disposition<b><br></td></tr>\n");
	form += TEXT("<tr height=\"0.25in\"> <td colspan=4 style=\"border:solid 0px #060\"> <b> 2) Also indicate if the FAI is complete per Section 5.4: &nbsp; &#x2751; FAI Complete &nbsp;&nbsp;&nbsp;&nbsp; &#x2751; FAI Not Complete <b></td></tr>\n");

	form += TEXT("<tr> <td align=\"left\" valign=\"top\" colspan=3 style=\"border:solid 0px #060\"><b> 19. Signature</b><br> &nbsp;</td> <td align=\"left\" colspan=1><b> 22. Date</b> <br> &nbsp;</td></tr>\n");
	form += TEXT("<tr> <td align=\"left\" valign=\"top\" colspan=3><b> 21. Reviewed By</b><br> &nbsp;</td> <td align=\"left\" colspan=1><b> 22. Date</b><br> &nbsp; </td></tr>\n");
	form += TEXT("<tr> <td align=\"left\" valign=\"top\" colspan=3><b> 23. Customer Approval</b><br> &nbsp;</td> <td align=\"left\" colspan=1><b> 24. Date</b> <br> &nbsp;</td></tr>\n");

	form += TEXT("</table>\n");


	form += TEXT("</body>\n");
	form += TEXT("</html>\n");
	return form;
}
static int countSubstring(const std::string& str, const std::string& sub)
{
	if (sub.length() == 0) return 0;
	int count = 0;
	for (size_t offset = str.find(sub); offset != std::string::npos;
		offset = str.find(sub, offset + sub.length()))
	{
		++count;
	}
	return count;
}


std::string CFairReports::Form3Header()
{
	std::string form;
	form += TEXT("<html>\n");
	form += TEXT("<header>\n");
	form += TEXT("<style type=\"text/css\">\n");
	form += TEXT("<!--\n");
	form += TEXT("@page { size:8.5in 11in; margin: 2cm }\n");
	form += TEXT("http://css-discuss.incutio.com/wiki/Printing_Headers\n");
	form += TEXT("-->\n");
	form += TEXT("table { table-layout: fixed; }\n");
	form += TEXT(".breakhere {page-break-after: always}\n");
	form += TEXT("\n");
	form += TEXT("@media print {\n");

	form += TEXT("   #hearder{display:none;} \n");
	form += TEXT("   #footer{display:none;} \n");
	form += TEXT("  * {\n");
	form += TEXT("    background: #fff;\n");
	form += TEXT("    color: #000;\n");
	form += TEXT("  }\n");
	form += TEXT("  td{font-family: Arial; font-size: 9pt;}\n");
	form += TEXT("  th{font-family: Arial; font-size: 9pt;}\n");
	form += TEXT("  tr{ height=\".120in\"}\n");
	form += TEXT("  html {\n");
	form += TEXT("    font: 100%/1.5 georgia, serif;\n");
	form += TEXT(" }\n");
	form += TEXT("  @page { size:landscape ; margin: 0.25in; }\n");
	//	form += TEXT("  footer {page-break-after: always;}\n");
	form += TEXT("body\n");
	form += TEXT("{\n");
	form += TEXT("  <!-- top, right, bottom, left --> \n");
	form += TEXT("  margin: 0.5in 0.25in 2mm 0.25in;\n");
	form += TEXT("}\n");
	form += TEXT("}\n");
	form += TEXT("</style>\n");
	form += TEXT("</header>\n");
	form += TEXT("<body>\n");
	return form;
}

std::string CFairReports::Form3TopOfPage(int page, int total_pages)
{
	std::string form;
	form += TEXT("<table width=\"100%\" border=0> \n");
	form += TEXT("<tr>\n");
	form += TEXT("<th width=\"70%\" align=\"left\"> AS9102 Rev A First Article Inspection </th>\n");
	form += StdStringFormat("<th width=\"30%\" align=\"right\"> Sheet %d of <u>%d</u></th>\n",page, total_pages);
	form += TEXT("</tr>\n");
	form += TEXT("<tr> <td colspan=2><b> Form 3: Characteristic Accountability, Verification and Compatability Evaluation </b></tr></tr>\n");
	form += TEXT("</table>\n");

	form += TEXT("<table width=\"100%\" border=1 style=\"border-collapse: collapse;\">\n");

	form += TEXT("<tr style=\"border:solid 0px #060\" height=\"1px\" valign=\"top\" align=\"center\">\n");

	form += TEXT("<th style=\"border:solid 0px #060\" width=\"0.375in\">&nbsp;</th>\n");
	form += TEXT("<th style=\"border:solid 0px #060\" width=\"0.625in\">&nbsp;</th>\n");
	form += TEXT("<th style=\"border:solid 0px #060\" width=\"0.75in\">&nbsp;</th>\n");
	form += TEXT("<th style=\"border:solid 0px #060\" width=\"1.0in\">&nbsp;</th>\n");
	form += TEXT("<th style=\"border:solid 0px #060\" width=\"1.25in\">&nbsp;</th>\n");
	form += TEXT("<th style=\"border:solid 0px #060\" width=\"0.875in\">&nbsp;</th>\n");
	form += TEXT("<th style=\"border:solid 0px #060\" width=\"0.875in\">&nbsp;</th>\n");
	form += TEXT("<th style=\"border:solid 0px #060\" width=\"3.125in\">&nbsp;</th>\n");
	form += TEXT("</tr>\n");

	form += TEXT("<tr height=\"0.5in\" valign=\"top\" align=\"center\">\n");
	form += TEXT("<td colspan=4  ><b> Characteristic Accountability </b></td>\n");
	form += TEXT("<td colspan=3><b> Inspection/Test Results</b></td>\n");
	form += TEXT("<td colspan=1><b> Optional Fields</b></td>\n");
	form += TEXT("</tr>\n");

	form += TEXT("<tr valign=\"top\" align=\"center\">\n");
	form += TEXT("<td ><b> 5. Char<br>No. </b></td>\n");
	form += TEXT("<td ><b> 6.<br> Reference<br>Location</b></td>\n");
	form += TEXT("<td ><b> 7.<br> Characteristic<br>Designator </b></td>\n");
	form += TEXT("<td ><b> 8. Requirement </b></td>\n");
	form += TEXT("<td ><b> 9. Results </b></td>\n");
	form += TEXT("<td ><b> 10. Designed <br> Tooling</b></td>\n");
	form += TEXT("<td ><b> 11. Non-<br>Conformance<br> Number</b></td>\n");
	form += TEXT("<td >14. [Insert columns, etc., as required by Organization or Customer]</td>\n");
	form += TEXT("</tr>\n");
	return form;

}
std::string CFairReports::Form3Trailer()
{
	std::string form;
	form += TEXT("<tr> <td align=\"center\" colspan=8 style=\"border:solid 0px #060\"><b> The signature indicates that all characteristics are accounted for; meeting requirements or are properly documented for disposition. </b></td></tr>\n");
	form += StdStringFormat("<tr> <td align=\"center\" colspan=7 style=\"border-top:solid 0px #060\"><b> 12. Prepared By</b><br>%s</td> <td align=\"center\"><b> 13. Date</b><br>%s </td></tr>\n",prepared_by[0].c_str(), date[0].c_str());

	form += TEXT("</table>\n");


	form += TEXT("</body>\n");
	form += TEXT("</html>\n");
	return form;
}

std::vector<int> CFairReports::LinesCount()
{
	// assume 3 minimum lines per table line
	// Count <BR> in
	//
	std::vector<int> tot;
	for(size_t i=0; i < charnom_info.size(); i++)
	{
		int n = countSubstring(charnom_info[i].requirements, "<br>") +1;
		tot.push_back( (n>3)? n:3);
	}
	return tot;
}
std::string CFairReports::Form3()
{
	CheckEntries(); // Clean up any cretin arrays
	CheckEntries3(); // Clean up any cretin arrays
	int numpage = char_info.size()/14 +1;
	int sheet = 1;
	std::string form= Form3Header();

	// 52 lines per page
	std::vector<int> lines = LinesCount();
	int total_lines = std::accumulate(lines.begin(), lines.end(), 0);
	int total_pages = total_lines/40 +1;
	int start_line=0;
	int end_line=0;
	for(int k=0 ; k< total_pages; k++)
	{
		//if(k> 0)
		//	form += "<P class=\"breakhere\">\n";
		if(k> 0)
		{	
			form += TEXT("</table>\n");

			form += "<div style=\"page-break-before: always\">&nbsp;</div>";
		}

		form += Form3TopOfPage(sheet, total_pages);
		sheet++;
		start_line=end_line;
		size_t linecnt=0, j=start_line;
		while(j< lines.size() && linecnt < 40) { linecnt+=lines[j]; j++; }
		end_line=j;
		for(int i=start_line; i< end_line; i++)
		{
			std::string tooling;
			for(size_t k=0; k< char_info[i].measurement_names.size(); k++) 
				tooling+=char_info[i].measurement_names[k] +"<br>";
			form += StdStringFormat("<tr> <td> %s </td> <td> %s </td> <td> %s </td> <td> %s </td> <td> %s </td><td> %s </td><td> %s </td><td> %s </td></tr>\n",
				("<CENTER>" + char_info[i].Name + "</CENTER>" ).c_str(), 
				("<CENTER>" + char_info[i].print_drawing_name +"<br>"+ char_info[i].sheet_number+ "<br>" + char_info[i].drawing_zone +  "</CENTER>").c_str(),
				("<CENTER>" + char_info[i].characteristic_designator + "</CENTER>").c_str(),
				charnom_info[i].requirements.c_str(),
				("<CENTER>" + results[i] + "</CENTER>" ).c_str(),
				("<CENTER>" + tooling + "</CENTER>" ).c_str(),
				("<CENTER>" + non_conformance_number[i] + "</CENTER>" ).c_str() ,
				("<LEFT>" + char_info[i].optional + "</LEFT>" ).c_str() 
				);

		}
		//for(int i=0; i< 14-char_info.size(); i++)
		//	form += TEXT("<tr> <td> &nbsp; </td> <td> &nbsp; </td> <td> &nbsp; </td> <td> &nbsp; </td> <td> &nbsp; </td><td> &nbsp; </td><td> &nbsp; </td><td> &nbsp; </td></tr>\n");
	}
	form += Form3Trailer();
	return form;
}
