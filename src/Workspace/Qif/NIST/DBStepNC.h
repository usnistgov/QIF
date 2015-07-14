//
// DBStepNC.h
//

#pragma once

#include "atlstr.h"

//#import "c:\program files\common files\system\ado\msado15.dll" \
//rename("EOF", "adoEOF") 
#include <atldbcli.h>
#include <oledb.h>
#include "Misc.h"


class CDBStepNC
{
public:
	CDBStepNC(void);
	virtual ~CDBStepNC(void);
	void SetConnection(CString szConnection);
	void SetDataSource(CString szDataSource);
	HRESULT Connect();
	void Close();
	void ExecuteSql(CString SQLCommandString);
	void CreateToolDbTable();
	HRESULT CreateDatabase(CString szDatabaseName);
	HRESULT ExecuteSelectSql(CString tszSQL, StringTable & szColumnTable, StringTable &szTable);
	//HRESULT ExecuteSelectToolsSql(CString tszSQL);
	template<typename T>
	HRESULT ExecuteSelectToolsSql(CString tszSQL, std::vector<T> &items);

	HRESULT SelectTable(CString tszSQL, StringTable &szColumnTable, StringTable & szTable);
	HRESULT InsertRow(CString table, CStringVector & columns, CStringVector & values);
	HRESULT LoadMasterCAMTool(CString filename);
	/////////////////////////////////////////////
//	ADODB::_ConnectionPtr DatabaseConnection;
//	ADODB::_CommandPtr SQLCommand;
	CString _ConnectionString;
	CString _DataSource;
	CDataSource db;
	CSession m_session;
};


// code generated on 30 May 2008, 1:10

class CDBCutterAccessor
{
public:
	double m_arbor_diameter;
	SHORT m_boring_tool_retract_movement_forbidden;
	LONG m_chuckid;
	double m_combined_drill_and_reamer_length;
	double m_combined_drill_and_tap_length;
	SHORT m_coolant_through_tool;
	double m_countersink_radius;
	double m_cutting_edge_length;
	LONG m_direction_for_spindle_orientation;
	double m_dovetail_mill_included_angle;
	double m_edge_center_horizontal;
	double m_edge_center_vertical;
	double m_edge_radius;
	double m_flute_length;
	double m_fpt;
	TCHAR m_hand_of_cut[51];
	TCHAR m_Image[121];
	TCHAR m_manufacturer[51];
	LONG m_materialid;
	SHORT m_metric;
	TCHAR m_name[51];
	LONG m_number_of_teeth;
	double m_overall_length;
	double m_pilot_diameter;
	double m_pilot_length;
	double m_sfm;
	double m_shoulder_length;
	double m_side_mill_cutter_width;
	TCHAR m_sku[51];
	double m_t_slot_mill_cutting_thickness;
	double m_tapered_drill_angle;
	double m_tapered_endmill_angle;
	double m_tapered_reamer_taper_angle;
	double m_tapered_tap_angle;
	double m_thread_angle;
	double m_thread_root_diameter;
	SHORT m_timeunit;
	double m_tip_diameter;
	double m_tool_circumference_angle;
	double m_tool_holder_diameter_for_spindle_orientation;
	double m_tool_tip_half_angle;
	SHORT m_toolid;
	LONG m_tooltypeid;
	double m_woodruff_keyseat_mill_cutter_width;

	// The following wizard-generated data members contain status
	// values for the corresponding fields in the column map. You
	// can use these values to hold NULL values that the database
	// returns or to hold error information when the compiler returns
	// errors. See Field Status Data Members in Wizard-Generated
	// Accessors in the Visual C++ documentation for more information
	// on using these fields.
	// NOTE: You must initialize these fields before setting/inserting data!

	DBSTATUS m_dwarbor_diameterStatus;
	DBSTATUS m_dwboring_tool_retract_movement_forbiddenStatus;
	DBSTATUS m_dwchuckidStatus;
	DBSTATUS m_dwcombined_drill_and_reamer_lengthStatus;
	DBSTATUS m_dwcombined_drill_and_tap_lengthStatus;
	DBSTATUS m_dwcoolant_through_toolStatus;
	DBSTATUS m_dwcountersink_radiusStatus;
	DBSTATUS m_dwcutting_edge_lengthStatus;
	DBSTATUS m_dwdirection_for_spindle_orientationStatus;
	DBSTATUS m_dwdovetail_mill_included_angleStatus;
	DBSTATUS m_dwedge_center_horizontalStatus;
	DBSTATUS m_dwedge_center_verticalStatus;
	DBSTATUS m_dwedge_radiusStatus;
	DBSTATUS m_dwflute_lengthStatus;
	DBSTATUS m_dwfptStatus;
	DBSTATUS m_dwhand_of_cutStatus;
	DBSTATUS m_dwImageStatus;
	DBSTATUS m_dwmanufacturerStatus;
	DBSTATUS m_dwmaterialidStatus;
	DBSTATUS m_dwmetricStatus;
	DBSTATUS m_dwnameStatus;
	DBSTATUS m_dwnumber_of_teethStatus;
	DBSTATUS m_dwoverall_lengthStatus;
	DBSTATUS m_dwpilot_diameterStatus;
	DBSTATUS m_dwpilot_lengthStatus;
	DBSTATUS m_dwsfmStatus;
	DBSTATUS m_dwshoulder_lengthStatus;
	DBSTATUS m_dwside_mill_cutter_widthStatus;
	DBSTATUS m_dwskuStatus;
	DBSTATUS m_dwt_slot_mill_cutting_thicknessStatus;
	DBSTATUS m_dwtapered_drill_angleStatus;
	DBSTATUS m_dwtapered_endmill_angleStatus;
	DBSTATUS m_dwtapered_reamer_taper_angleStatus;
	DBSTATUS m_dwtapered_tap_angleStatus;
	DBSTATUS m_dwthread_angleStatus;
	DBSTATUS m_dwthread_root_diameterStatus;
	DBSTATUS m_dwtimeunitStatus;
	DBSTATUS m_dwtip_diameterStatus;
	DBSTATUS m_dwtool_circumference_angleStatus;
	DBSTATUS m_dwtool_holder_diameter_for_spindle_orientationStatus;
	DBSTATUS m_dwtool_tip_half_angleStatus;
	DBSTATUS m_dwtoolidStatus;
	DBSTATUS m_dwtooltypeidStatus;
	DBSTATUS m_dwwoodruff_keyseat_mill_cutter_widthStatus;

	// The following wizard-generated data members contain length
	// values for the corresponding fields in the column map.
	// NOTE: For variable-length columns, you must initialize these
	//       fields before setting/inserting data!

	DBLENGTH m_dwarbor_diameterLength;
	DBLENGTH m_dwboring_tool_retract_movement_forbiddenLength;
	DBLENGTH m_dwchuckidLength;
	DBLENGTH m_dwcombined_drill_and_reamer_lengthLength;
	DBLENGTH m_dwcombined_drill_and_tap_lengthLength;
	DBLENGTH m_dwcoolant_through_toolLength;
	DBLENGTH m_dwcountersink_radiusLength;
	DBLENGTH m_dwcutting_edge_lengthLength;
	DBLENGTH m_dwdirection_for_spindle_orientationLength;
	DBLENGTH m_dwdovetail_mill_included_angleLength;
	DBLENGTH m_dwedge_center_horizontalLength;
	DBLENGTH m_dwedge_center_verticalLength;
	DBLENGTH m_dwedge_radiusLength;
	DBLENGTH m_dwflute_lengthLength;
	DBLENGTH m_dwfptLength;
	DBLENGTH m_dwhand_of_cutLength;
	DBLENGTH m_dwImageLength;
	DBLENGTH m_dwmanufacturerLength;
	DBLENGTH m_dwmaterialidLength;
	DBLENGTH m_dwmetricLength;
	DBLENGTH m_dwnameLength;
	DBLENGTH m_dwnumber_of_teethLength;
	DBLENGTH m_dwoverall_lengthLength;
	DBLENGTH m_dwpilot_diameterLength;
	DBLENGTH m_dwpilot_lengthLength;
	DBLENGTH m_dwsfmLength;
	DBLENGTH m_dwshoulder_lengthLength;
	DBLENGTH m_dwside_mill_cutter_widthLength;
	DBLENGTH m_dwskuLength;
	DBLENGTH m_dwt_slot_mill_cutting_thicknessLength;
	DBLENGTH m_dwtapered_drill_angleLength;
	DBLENGTH m_dwtapered_endmill_angleLength;
	DBLENGTH m_dwtapered_reamer_taper_angleLength;
	DBLENGTH m_dwtapered_tap_angleLength;
	DBLENGTH m_dwthread_angleLength;
	DBLENGTH m_dwthread_root_diameterLength;
	DBLENGTH m_dwtimeunitLength;
	DBLENGTH m_dwtip_diameterLength;
	DBLENGTH m_dwtool_circumference_angleLength;
	DBLENGTH m_dwtool_holder_diameter_for_spindle_orientationLength;
	DBLENGTH m_dwtool_tip_half_angleLength;
	DBLENGTH m_dwtoolidLength;
	DBLENGTH m_dwtooltypeidLength;
	DBLENGTH m_dwwoodruff_keyseat_mill_cutter_widthLength;


	void GetRowsetProperties(CDBPropSet* pPropSet)
	{
		pPropSet->AddProperty(DBPROP_CANFETCHBACKWARDS, true, DBPROPOPTIONS_OPTIONAL);
		pPropSet->AddProperty(DBPROP_CANSCROLLBACKWARDS, true, DBPROPOPTIONS_OPTIONAL);
		pPropSet->AddProperty(DBPROP_IRowsetChange, true, DBPROPOPTIONS_OPTIONAL);
		pPropSet->AddProperty(DBPROP_UPDATABILITY, DBPROPVAL_UP_CHANGE | DBPROPVAL_UP_INSERT | DBPROPVAL_UP_DELETE);
	}

	HRESULT OpenDataSource()
	{
		CDataSource _db;
		HRESULT hr;
//#error Security Issue: The connection string may contain a password
// The connection string below may contain plain text passwords and/or
// other sensitive information. Please remove the #error after reviewing
// the connection string for any security related issues. You may want to
// store the password in some other form or use a different user authentication.
		hr = _db.OpenFromInitializationString(L"Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\\Program Files\\NIST\\proj\\Tests\\StepNCAnnotator\\stepnc.mdb;Mode=Share Deny None;Extended Properties=\"\";Jet OLEDB:System database=\"\";Jet OLEDB:Registry Path=\"\";Jet OLEDB:Database Password=\"\";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Password=\"\";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don't Copy Locale on Compact=False;Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False");
		if (FAILED(hr))
		{
#ifdef _DEBUG
			AtlTraceErrorRecords(hr);
#endif
			return hr;
		}
		return m_session.Open(_db);
	}

	void CloseDataSource()
	{
		m_session.Close();
	}

	operator const CSession&()
	{
		return m_session;
	}

	CSession m_session;

	BEGIN_COLUMN_MAP(CDBCutterAccessor)
		COLUMN_ENTRY_LENGTH_STATUS(19, m_arbor_diameter, m_dwarbor_diameterLength, m_dwarbor_diameterStatus)
		COLUMN_ENTRY_LENGTH_STATUS(44, m_boring_tool_retract_movement_forbidden, m_dwboring_tool_retract_movement_forbiddenLength, m_dwboring_tool_retract_movement_forbiddenStatus)
		COLUMN_ENTRY_LENGTH_STATUS(5, m_chuckid, m_dwchuckidLength, m_dwchuckidStatus)
		COLUMN_ENTRY_LENGTH_STATUS(43, m_combined_drill_and_reamer_length, m_dwcombined_drill_and_reamer_lengthLength, m_dwcombined_drill_and_reamer_lengthStatus)
		COLUMN_ENTRY_LENGTH_STATUS(41, m_combined_drill_and_tap_length, m_dwcombined_drill_and_tap_lengthLength, m_dwcombined_drill_and_tap_lengthStatus)
		COLUMN_ENTRY_LENGTH_STATUS(10, m_coolant_through_tool, m_dwcoolant_through_toolLength, m_dwcoolant_through_toolStatus)
		COLUMN_ENTRY_LENGTH_STATUS(33, m_countersink_radius, m_dwcountersink_radiusLength, m_dwcountersink_radiusStatus)
		COLUMN_ENTRY_LENGTH_STATUS(11, m_cutting_edge_length, m_dwcutting_edge_lengthLength, m_dwcutting_edge_lengthStatus)
		COLUMN_ENTRY_LENGTH_STATUS(32, m_direction_for_spindle_orientation, m_dwdirection_for_spindle_orientationLength, m_dwdirection_for_spindle_orientationStatus)
		COLUMN_ENTRY_LENGTH_STATUS(37, m_dovetail_mill_included_angle, m_dwdovetail_mill_included_angleLength, m_dwdovetail_mill_included_angleStatus)
		COLUMN_ENTRY_LENGTH_STATUS(24, m_edge_center_horizontal, m_dwedge_center_horizontalLength, m_dwedge_center_horizontalStatus)
		COLUMN_ENTRY_LENGTH_STATUS(23, m_edge_center_vertical, m_dwedge_center_verticalLength, m_dwedge_center_verticalStatus)
		COLUMN_ENTRY_LENGTH_STATUS(22, m_edge_radius, m_dwedge_radiusLength, m_dwedge_radiusStatus)
		COLUMN_ENTRY_LENGTH_STATUS(12, m_flute_length, m_dwflute_lengthLength, m_dwflute_lengthStatus)
		COLUMN_ENTRY_LENGTH_STATUS(26, m_fpt, m_dwfptLength, m_dwfptStatus)
		COLUMN_ENTRY_LENGTH_STATUS(9, m_hand_of_cut, m_dwhand_of_cutLength, m_dwhand_of_cutStatus)
		COLUMN_ENTRY_LENGTH_STATUS(29, m_Image, m_dwImageLength, m_dwImageStatus)
		COLUMN_ENTRY_LENGTH_STATUS(6, m_manufacturer, m_dwmanufacturerLength, m_dwmanufacturerStatus)
		COLUMN_ENTRY_LENGTH_STATUS(4, m_materialid, m_dwmaterialidLength, m_dwmaterialidStatus)
		COLUMN_ENTRY_LENGTH_STATUS(27, m_metric, m_dwmetricLength, m_dwmetricStatus)
		COLUMN_ENTRY_LENGTH_STATUS(2, m_name, m_dwnameLength, m_dwnameStatus)
		COLUMN_ENTRY_LENGTH_STATUS(8, m_number_of_teeth, m_dwnumber_of_teethLength, m_dwnumber_of_teethStatus)
		COLUMN_ENTRY_LENGTH_STATUS(13, m_overall_length, m_dwoverall_lengthLength, m_dwoverall_lengthStatus)
		COLUMN_ENTRY_LENGTH_STATUS(20, m_pilot_diameter, m_dwpilot_diameterLength, m_dwpilot_diameterStatus)
		COLUMN_ENTRY_LENGTH_STATUS(21, m_pilot_length, m_dwpilot_lengthLength, m_dwpilot_lengthStatus)
		COLUMN_ENTRY_LENGTH_STATUS(25, m_sfm, m_dwsfmLength, m_dwsfmStatus)
		COLUMN_ENTRY_LENGTH_STATUS(14, m_shoulder_length, m_dwshoulder_lengthLength, m_dwshoulder_lengthStatus)
		COLUMN_ENTRY_LENGTH_STATUS(39, m_side_mill_cutter_width, m_dwside_mill_cutter_widthLength, m_dwside_mill_cutter_widthStatus)
		COLUMN_ENTRY_LENGTH_STATUS(7, m_sku, m_dwskuLength, m_dwskuStatus)
		COLUMN_ENTRY_LENGTH_STATUS(36, m_t_slot_mill_cutting_thickness, m_dwt_slot_mill_cutting_thicknessLength, m_dwt_slot_mill_cutting_thicknessStatus)
		COLUMN_ENTRY_LENGTH_STATUS(34, m_tapered_drill_angle, m_dwtapered_drill_angleLength, m_dwtapered_drill_angleStatus)
		COLUMN_ENTRY_LENGTH_STATUS(35, m_tapered_endmill_angle, m_dwtapered_endmill_angleLength, m_dwtapered_endmill_angleStatus)
		COLUMN_ENTRY_LENGTH_STATUS(42, m_tapered_reamer_taper_angle, m_dwtapered_reamer_taper_angleLength, m_dwtapered_reamer_taper_angleStatus)
		COLUMN_ENTRY_LENGTH_STATUS(40, m_tapered_tap_angle, m_dwtapered_tap_angleLength, m_dwtapered_tap_angleStatus)
		COLUMN_ENTRY_LENGTH_STATUS(31, m_thread_angle, m_dwthread_angleLength, m_dwthread_angleStatus)
		COLUMN_ENTRY_LENGTH_STATUS(30, m_thread_root_diameter, m_dwthread_root_diameterLength, m_dwthread_root_diameterStatus)
		COLUMN_ENTRY_LENGTH_STATUS(28, m_timeunit, m_dwtimeunitLength, m_dwtimeunitStatus)
		COLUMN_ENTRY_LENGTH_STATUS(15, m_tip_diameter, m_dwtip_diameterLength, m_dwtip_diameterStatus)
		COLUMN_ENTRY_LENGTH_STATUS(17, m_tool_circumference_angle, m_dwtool_circumference_angleLength, m_dwtool_circumference_angleStatus)
		COLUMN_ENTRY_LENGTH_STATUS(18, m_tool_holder_diameter_for_spindle_orientation, m_dwtool_holder_diameter_for_spindle_orientationLength, m_dwtool_holder_diameter_for_spindle_orientationStatus)
		COLUMN_ENTRY_LENGTH_STATUS(16, m_tool_tip_half_angle, m_dwtool_tip_half_angleLength, m_dwtool_tip_half_angleStatus)
		COLUMN_ENTRY_LENGTH_STATUS(1, m_toolid, m_dwtoolidLength, m_dwtoolidStatus)
		COLUMN_ENTRY_LENGTH_STATUS(3, m_tooltypeid, m_dwtooltypeidLength, m_dwtooltypeidStatus)
		COLUMN_ENTRY_LENGTH_STATUS(38, m_woodruff_keyseat_mill_cutter_width, m_dwwoodruff_keyseat_mill_cutter_widthLength, m_dwwoodruff_keyseat_mill_cutter_widthStatus)
	END_COLUMN_MAP()
};

class CDBCutter : public CTable<CAccessor<CDBCutterAccessor> >
{
public:
	HRESULT OpenAll()
	{
		HRESULT hr;
		hr = OpenDataSource();
		if (FAILED(hr))
			return hr;
		__if_exists(GetRowsetProperties)
		{
			CDBPropSet propset(DBPROPSET_ROWSET);
			__if_exists(HasBookmark)
			{
				propset.AddProperty(DBPROP_IRowsetLocate, true);
			}
			GetRowsetProperties(&propset);
			return OpenRowset(&propset);
		}
		__if_not_exists(GetRowsetProperties)
		{
			__if_exists(HasBookmark)
			{
				CDBPropSet propset(DBPROPSET_ROWSET);
				propset.AddProperty(DBPROP_IRowsetLocate, true);
				return OpenRowset(&propset);
			}
		}
		return OpenRowset();
	}

	HRESULT OpenRowset(DBPROPSET *pPropSet = NULL)
	{
		HRESULT hr = Open(m_session, L"milling_cutter", pPropSet);
#ifdef _DEBUG
		if(FAILED(hr))
			AtlTraceErrorRecords(hr);
#endif
		return hr;
	}

	void CloseAll()
	{
		Close();
		CloseDataSource();
	}
};

extern std::vector<CDBCutterAccessor> gCutters;

template<typename T>
HRESULT CDBStepNC::ExecuteSelectToolsSql(CString tszSQL, std::vector<T> &items)
{
	USES_CONVERSION;
	int i,j;
	CCommand< CAccessor<CDBCutterAccessor>  > m_QueryCommand;

	HRESULT hr;
	hr = m_QueryCommand.Open( m_session, tszSQL );
	if( FAILED( hr ) )
		return hr;

	hr = m_QueryCommand.MoveFirst();
	if( FAILED( hr ) )
		return hr;
	j=0;
	while( SUCCEEDED( hr ) && hr != DB_S_ENDOFROWSET )
	{
		items.push_back((T &) m_QueryCommand);
		hr = m_QueryCommand.MoveNext( );
		j++;
	}
errors:


	return hr;
}