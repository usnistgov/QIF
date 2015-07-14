//
// FairReports.h
//

#pragma once
#include <string>
#include <vector>
#include <stdarg.h>  
#include <map>
#include <xercesc/dom/DOMElement.hpp>
#include <xsd/cxx/xml/string.hxx>
#include "QIFDocument.hxx"

class CFairReports
{
public:
	CFairReports(void);
	~CFairReports(void);

	std::string GenerateFAIRRepor1(xercesc::DOMElement* e );
	std::string GenerateFAIRRepor3(xercesc::DOMElement* e );

	std::string Form1();
	std::string Form3();

	void CheckEntries();
	void CheckEntries3();
	
	//
	// Utilities here - so as not to collide with windows and xerces
	bool ChromeExists();
	////////////////////////////////////////////////////////////////////////
	// Part 1 fields
	std::vector<std::string> part_names;
	std::vector<std::string> part_numbers;
	std::vector<std::string> serial_numbers;
	std::vector<std::string> FAI_report_numbers;
	std::vector<std::string> part_revisions;
	//std::vector<std::string> drawing_number;
	//std::vector<std::string> drawing_revision;
	std::vector<std::string> drawing_numbers;
	std::vector<std::string> drawing_revisions;
	std::vector<std::string> additional_changes;
	std::vector<std::string> organization_names;
	std::vector<std::string> supplier_codes;
	std::vector<std::string> po_numbers;
	std::vector<std::string> detail_fai;
	std::vector<std::string>  full_fai;
	
	// Form 3 items - some overlap with Form1
	std::vector<std::string> prepared_by;
	std::vector<std::string> date;

	//std::vector<std::string>  char_no;
	//std::vector<std::string> reference_locationId;
	//std::vector<std::string> reference_locationA;
	//std::vector<std::string> reference_locationB;
	//std::vector<std::string> reference_locationC;
	//std::vector<std::string> characteristic_designator;
	//std::vector<std::string>designed_toolingIds;
	//std::vector<std::string>designed_toolings;

	std::vector<std::string> requirement;
	std::vector<std::string> results;
	std::vector<std::string> non_conformance_number;

	struct CharacteristicInfo
	{
		CharacteristicInfo() {}

		std::string Name;
		int id;
		std::string characteristic_designator;
		std::string requirement;
		std::string results;
		//int designed_toolingId;
		//std::string designed_tooling;

		std::string print_drawing_name;
		std::string sheet_number;
		std::string drawing_zone;
		int  designed_toolingId;

		std::vector<int>  measurement_ids;
		std::vector<std::string>  measurement_names;

		std::string optional;

	};
	std::vector<CharacteristicInfo> char_info;

	struct CharacteristicDefinitionInfo
	{
		CharacteristicDefinitionInfo() {}
		int id;
		int DeviceDatumRefId;
		std::string requirements;
		void * pCharacteristicDefinitionBaseType ;
	};
	std::map<int, CharacteristicDefinitionInfo> chardef_info;

	struct CharacteristicNominalInfo
	{
		CharacteristicNominalInfo() {}
		int id;
		int CharacteristicDefinitionId;
		std::string requirements;
		//xsd::qif2::CharacteristicDefinitionBaseType* pBaseCharacteristicDefinitionType;
		void* pBaseCharacteristicDefinitionType;
	};
	std::vector<CharacteristicNominalInfo> charnom_info;

	struct DatumReferenceFrameInfo
	{
		DatumReferenceFrameInfo() {}
		int id;
		std::string requirements;
	};
	std::map<int, DatumReferenceFrameInfo>  datum_info;

protected:
	std::vector<int> LinesCount();
	std::string Form3TopOfPage(int page, int total_pages);
	std::string Form3Header();
	std::string Form3Trailer();
};

