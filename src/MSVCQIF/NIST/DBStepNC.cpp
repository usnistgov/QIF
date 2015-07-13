//
//
//

#include "StdAfx.h"
#include "DBStepNC.h"

//using namespace ADODB;



CDBStepNC::CDBStepNC(void)
{
	_ConnectionString = "Microsoft.Jet.OLEDB.4.0";
}

CDBStepNC::~CDBStepNC(void)
{
}

static void ErrorDump()
{
#if 0
	USES_CONVERSION;
	CDBErrorInfo einfo;
	BSTR bstrDescription;
	ULONG nRecords = 0;
	HRESULT hr = einfo.GetErrorRecords(&nRecords);
	if(SUCCEEDED(hr) && nRecords > 0)
	{
		LCID lcid = GetSystemDefaultLCID();
		for(ULONG nIndex = 0; nIndex < nRecords; nIndex++)
		{
			hr = einfo.GetAllErrorInfo(nIndex, lcid, &bstrDescription);
			if(SUCCEEDED(hr))
			{
				AfxMessageBox(OLE2T(bstrDescription));
				SysFreeString(bstrDescription);
			}
		}
	}
#endif	
	USES_CONVERSION;
	CComPtr<IErrorInfo> pErrInfo;
	HRESULT hr = ::GetErrorInfo(0, &pErrInfo);
	if(SUCCEEDED(hr))
	{
		_bstr_t bstrErrDescription;
		pErrInfo->GetDescription((BSTR *) &bstrErrDescription);

		CString strDescription = W2T(bstrErrDescription);
		OutputDebugString(strDescription);

	}
}

void CDBStepNC::SetConnection(CString szConnection)
{

	_ConnectionString = szConnection; // "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=\"C:\\Program Files\\NIST\\proj\\Tests\\StepNCAnnotator\\stepnc.mdb\"";
	//"Provider=MSDAORA.1;Password=xxxx;User ID=xxxx;Data Source=yapprd;Persist Security Info=True";
}
void CDBStepNC::SetDataSource(CString szSource)
{
	_DataSource=szSource; // Data Source=\"C:\\Program Files\\NIST\\proj\\Tests\\StepNCAnnotator\\stepnc.mdb\"";
	//"Provider=MSDAORA.1;Password=xxxx;User ID=xxxx;Data Source=yapprd;Persist Security Info=True";
}

HRESULT CDBStepNC::CreateDatabase(CString szDatabaseName)
{
	return E_NOTIMPL;
}
HRESULT CDBStepNC::Connect()
{
	HRESULT hr;
		// connection string and SQL command to execute
		//CString SQLCommandString = "INSERT INTO GROUPS (Code,Name) VALUES (1,'Group1')";
		//CString	ConnectionString = "Microsoft.Jet.OLEDB.4.0";
		//CString	_DataSource= "C:\\Program Files\\NIST\\proj\\Tests\\StepNCAnnotator\\stepnc.mdb";

		if(_ConnectionString.GetLength() < 1 || _DataSource.GetLength() < 1)
			return E_INVALIDARG;

		try {

			CDBPropSet dbinit [2];

			dbinit [0].SetGUID(DBPROPSET_DBINIT);
			//dbinit [1].SetGUID(DBPROPSET_SSCE_DBINIT);

			dbinit [0].AddProperty(DBPROP_INIT_DATASOURCE,    _DataSource);
			//dbinit [1].AddProperty(DBPROP_SSCE_TEMPFILE_DIRECTORY, OLESTR (<Path to store temp files>);

			if (FAILED(hr = db.Open(_ConnectionString, dbinit, 1)))
			{
				return hr;
			}

			//		DatabaseConnection.CreateInstance(__uuidof(Connection));
			//		SQLCommand.CreateInstance(__uuidof(Command));
			hr = m_session.Open(db);
			if(FAILED(hr))
			{
				db.Close();
				return hr;
			}
	
		// open connection
		OutputDebugString( "Opening database connection...\n" );
		//DatabaseConnection->Open(_bstr_t(ConnectionString), "", "", adOpenUnspecified);

		// specify connection for command and SQL command
		//SQLCommand->ActiveConnection = DatabaseConnection;
	}
	catch(_com_error& e)
	{
		ATLTRACE("com error: %d - %s\n", e.Error(), (const char*)e.Description());
		//DatabaseConnection->RollbackTrans();
		return E_FAIL;

	}
	return S_OK;
}
void CDBStepNC::ExecuteSql(CString tszSQL)
{
	HRESULT hr;
	try {

		CCommand<CDynamicAccessor, CRowset> commandInsert;
		//TCHAR tszSQL[] = _bstr_t(SQLCommandString);
		//hr = m_session.StartTransaction();
		if(FAILED(hr = commandInsert.Open(m_session,
			(LPCTSTR) tszSQL,
			NULL ,
			NULL,
			DBGUID_DBSQL,
			false)))
			DebugBreak();
		//if(FAILED(hr = m_session.Commit()))
		//	DebugBreak();
		

		//DatabaseConnection->BeginTrans();
//		SQLCommand->ActiveConnection = DatabaseConnection;
//		SQLCommand->CommandText = _bstr_t(SQLCommandString);
// 		SQLCommand->Execute(NULL, NULL, adCmdText);
	}
	catch(_com_error& e)
	{
		ATLTRACE("com error: %d - %s\n", e.Error(), (const char*)e.Description());
		Close();
		//DatabaseConnection->RollbackTrans();

	}
	//	DatabaseConnection->Commit(); 

	OutputDebugString("ExecuteSql Succeeded\n");

}

HRESULT CDBStepNC::InsertRow(CString table, CStringVector & columns, CStringVector & values)
{
	CCommand< CDynamicStringAccessor > sqlInsertCommand;
	int i;
	CString tszSQL;
	HRESULT hr;

	if(values.size() != columns.size())
		return E_INVALIDARG;
	if(values.size() == 0 ||  columns.size()==0)
		return E_INVALIDARG;

	tszSQL.Format("INSERT INTO %s (", table);
	for(i=0; i<columns.size(); i++)
	{
		if(i>0) tszSQL+=" ,";
		tszSQL.AppendFormat("%s", columns[i]);
	}
	tszSQL.AppendFormat(") VALUES (");
	for(i=0; i<values.size(); i++)
	{
		if(i>0) tszSQL+=" ,";
		tszSQL.AppendFormat("'%s'", values[i]);
	}
	tszSQL.AppendFormat(")");

	hr = sqlInsertCommand.Open( m_session, tszSQL );
	return hr;

}


HRESULT CDBStepNC::ExecuteSelectSql(CString tszSQL, StringTable &szColumnTable, StringTable &szDataTable)
{
	USES_CONVERSION;
	CCommand< CDynamicStringAccessor > m_QueryCommand;

	HRESULT hr;
	hr = m_QueryCommand.Open( m_session, tszSQL );
	if( FAILED( hr ) )
		return hr;

	hr = m_QueryCommand.MoveFirst();
	if( FAILED( hr ) )
		return hr;
	int j=0;
	while( SUCCEEDED( hr ) && hr != DB_S_ENDOFROWSET )
	{
		for( size_t i = 1; i < m_QueryCommand.GetColumnCount( ); i++ )
		{
            OutputDebugString(StrFormat( "Column %d [%S]= %s\n",  i, m_QueryCommand.GetColumnName( i ), m_QueryCommand.GetString( i ) )); 
			szDataTable(j,i-1)=m_QueryCommand.GetString( i );
			if(j==0)
				szColumnTable(0,i)=W2T(_bstr_t(m_QueryCommand.GetColumnName( i )));
		}
		hr = m_QueryCommand.MoveNext( );
		j++;
	}
errors:
	return hr;
}

std::vector<CDBCutterAccessor> gCutters;


HRESULT CDBStepNC::SelectTable(CString tszSQL, StringTable &szColumnTable,	 StringTable &szDataTable)
{
	USES_CONVERSION;
	HRESULT hr;
	//CTable<CDynamicAccessor> rs;
	CTable<CDynamicStringAccessor> rs;

	hr = rs.Open( m_session, "milling_cutter" );

    hr = rs.MoveFirst( );
	int j=0;
    while( SUCCEEDED( hr ) && hr != DB_S_ENDOFROWSET )
    {
        for( size_t i = 1; i < rs.GetColumnCount( ); i++ )
        {
            OutputDebugString(StrFormat( "Column %d [%S]= %s\n",  i, rs.GetColumnName( i ), rs.GetString( i ) )); 
			if(j==0)
				szColumnTable(0,i)=W2T(_bstr_t(rs.GetColumnName( i )));
			szDataTable(j,i-1)=rs.GetString( i );


			OutputDebugString(szDataTable(j,i));
		}
        hr = rs.MoveNext( );
		j++;
    }

	return hr;
}

// close connection
void CDBStepNC::Close()
{		
	db.Close();
	//DatabaseConnection->Close();
}

void CDBStepNC::CreateToolDbTable()
{

	// 
	ExecuteSql("DROP TABLE milling_cutter");
	ExecuteSql("DROP TABLE millingtooltype");
	ExecuteSql("DROP TABLE materialtype");

	CString sqlCreateToolTable = "CREATE TABLE milling_cutter( "
		"[toolid] SMALLINT NOT NULL, "
		"[name] TEXT(50), "
		"[tooltypeid] INTEGER, "
		"[materialid] INTEGER, "
		"[chuckid] INTEGER, "
		"[manufacturer] TEXT(50), "
		"[sku] TEXT(50), "
		"[number_of_teeth] INT, "
		"[hand_of_cut]  TEXT(50), "
		"[coolant_through_tool] SMALLINT, "
		"[cutting_edge_length]  FLOAT, "
		"[flute_length]  FLOAT, "
		"[overall_length]  FLOAT, "
		"[shoulder_length]  FLOAT, "
		"[tip_diameter]  FLOAT, "
		"[tool_tip_half_angle] FLOAT, "
		"[tool_circumference_angle] FLOAT, "
		"[tool_holder_diameter_for_spindle_orientation] FLOAT, "
		"[arbor_diameter] FLOAT, "
		"[pilot_diameter]  FLOAT, "
		"[pilot_length]  FLOAT, "
		"[edge_radius]  FLOAT, "
		"[edge_center_vertical] FLOAT, "
		"[edge_center_horizontal] FLOAT, "
		"[sfm]  FLOAT, "
		"[fpt]  FLOAT, "
		"[metric] SMALLINT, "
		"[timeunit] SMALLINT, "
		"[Image] TEXT(120), "
		"[thread_root_diameter]  FLOAT, "
		"[thread_angle]  FLOAT, "
		"[direction_for_spindle_orientation] INTEGER, "
		"[countersink_radius] FLOAT,  "
		"[tapered_drill_angle]  FLOAT, "
		"[tapered_endmill_angle]  FLOAT, "
		"[t_slot_mill_cutting_thickness] FLOAT, "
		"[dovetail_mill_included_angle]  FLOAT, "
		"[woodruff_keyseat_mill_cutter_width]  FLOAT, "
		"[side_mill_cutter_width]  FLOAT, "
		"[tapered_tap_angle]  FLOAT, "
		"[combined_drill_and_tap_length]  FLOAT,  "
		"[tapered_reamer_taper_angle]  FLOAT, "
		"[combined_drill_and_reamer_length]  FLOAT, "
		"[boring_tool_retract_movement_forbidden] SMALLINT, "
		"PRIMARY KEY  (toolid));" ;
#if 1
	ExecuteSql(sqlCreateToolTable);
	//ExecuteSql("INSERT INTO milling_cutter ( toolid , name, tooltypeid, tip_diameter, number_of_teeth, metric) VALUES ( 1, '1/4 END MILL FLAT', 10, 0.25, 2, 0)");
	//ExecuteSql("INSERT INTO milling_cutter ( toolid , name, tooltypeid, tip_diameter, number_of_teeth, metric) VALUES ( 2, '1/2 END MILL FLAT', 10, 0.5, 2, 0)");
	//ExecuteSql("INSERT INTO milling_cutter ( toolid , name, tooltypeid, tip_diameter, number_of_teeth, metric) VALUES ( 3, '1/2 CENTER DRILL', 1, 0.5, 2, 0)");

	CString sqlCreateToolTableType = "CREATE TABLE millingtooltype( "
		"[tooltypeid] INTEGER CONSTRAINT PK_ToolType PRIMARY KEY, "
		"[description] TEXT(50), "
		"[bitmask] SMALLINT "
		" );" ;
	ExecuteSql(sqlCreateToolTableType);

	ExecuteSql("INSERT INTO millingtooltype ( tooltypeid , description) VALUES ( 1, 'CENTER DRILL')");
	ExecuteSql("INSERT INTO millingtooltype ( tooltypeid , description) VALUES ( 2, 'SPOT')");
	ExecuteSql("INSERT INTO millingtooltype ( tooltypeid , description) VALUES ( 3, 'DRILL')");
	ExecuteSql("INSERT INTO millingtooltype ( tooltypeid , description) VALUES ( 4, 'TAP-RH')");
	ExecuteSql("INSERT INTO millingtooltype ( tooltypeid , description) VALUES ( 5, 'TAP-LH')");
	ExecuteSql("INSERT INTO millingtooltype ( tooltypeid , description) VALUES ( 6, 'REAMER')");
	ExecuteSql("INSERT INTO millingtooltype ( tooltypeid , description) VALUES ( 7, 'BORING BAR')");
	ExecuteSql("INSERT INTO millingtooltype ( tooltypeid , description) VALUES ( 8, 'COUNTER BORE')");
	ExecuteSql("INSERT INTO millingtooltype ( tooltypeid , description) VALUES ( 9, 'COUNTER SINK')");
	ExecuteSql("INSERT INTO millingtooltype ( tooltypeid , description) VALUES ( 10, 'END MILL FLAT')");
	ExecuteSql("INSERT INTO millingtooltype ( tooltypeid , description) VALUES ( 11, 'END MILL SPHERE')");
	ExecuteSql("INSERT INTO millingtooltype ( tooltypeid , description) VALUES ( 12, 'END MILL BULL')");
	ExecuteSql("INSERT INTO millingtooltype ( tooltypeid , description) VALUES ( 13, 'CHAMFER MILL')");
	ExecuteSql("INSERT INTO millingtooltype ( tooltypeid , description) VALUES ( 14, 'FACE MILL')");
	ExecuteSql("INSERT INTO millingtooltype ( tooltypeid , description) VALUES ( 15, 'SLOT MILL')");
	ExecuteSql("INSERT INTO millingtooltype ( tooltypeid , description) VALUES ( 16, 'CORNER RAD MILL')");
	ExecuteSql("INSERT INTO millingtooltype ( tooltypeid , description) VALUES ( 17, 'DOVETAIL MILL')");
	ExecuteSql("INSERT INTO millingtooltype ( tooltypeid , description) VALUES ( 18, 'TAPER MILL')");
	ExecuteSql("INSERT INTO millingtooltype ( tooltypeid , description) VALUES ( 19, 'LOLLIPOP MILL')");
#endif
	ExecuteSql("ALTER TABLE milling_cutter ADD CONSTRAINT ToolTypeRelationship FOREIGN KEY (tooltypeid) REFERENCES millingtooltype (tooltypeid))");

	CString sqlCreateMaterialTable = "CREATE TABLE materialtype( "
		"[materialid] INTEGER CONSTRAINT PK_MaterialType PRIMARY KEY, "
		"[description] TEXT(50), "
		"[bitmask] SMALLINT, "
		"[hardness] FLOAT "
		" );" ;
	ExecuteSql(sqlCreateMaterialTable);
	//tool material (1-HSS, 2-CARBIDE, 3-COATED CAR, 4-CERAMIC, 5-BORZON, 10-UNKNOWN)
	ExecuteSql("INSERT INTO materialtype ( materialid , description) VALUES ( 1, 'HSS')");
	ExecuteSql("INSERT INTO materialtype ( materialid , description) VALUES ( 2, 'CARBIDE')");
	ExecuteSql("INSERT INTO materialtype ( materialid , description) VALUES ( 3, 'COATED CAR')");
	ExecuteSql("INSERT INTO materialtype ( materialid , description) VALUES ( 4, 'CERAMIC')");
	ExecuteSql("INSERT INTO materialtype ( materialid , description) VALUES ( 5, 'BORZON')");
	ExecuteSql("INSERT INTO materialtype ( materialid , description) VALUES ( 10, 'UNKONWN')");


}

// line 1 - TOOL (start of tool definition)
// line 2 - tool material (1-HSS, 2-CARBIDE, 3-COATED CAR, 4-CERAMIC, 5-BORZON, 10-UNKNOWN)
// line 3 - tool comment
// line 4 - tool name (geometry reference for backplot)
// line 5 - tool manufacturer
// line 6 - chuck designation
// line 7 - tool_no, tool_type, rad_type, dia, crad, thds, tip_angle, 
//         dia_off, len_off, feed, plunge, retract, rpm, coolant, n_flutes
// line 8 - Drilling attributes (see tool_type in line 7 above)
// line 8 - cycle, peck1, peck2, peck_clr, chip_brk, dwell, shldr_angle, root_dia (tap), bore_shift
// line 8 - Milling attributes (see tool_type in line 7 above)
// line 8 - cut_able, rgh_x, rgh_z, fin_x, fin_z, tip_dia, root_dia (thd mill), thd_angle
// line 9 - pilot_dia, flute_len, oa_len, shldr_len, arbor_dia, hldr_dia, hldr_len, spindle_ccw, sfm, fpt, metric
HRESULT CDBStepNC::LoadMasterCAMTool(CString filename)
{
	CString contents = ReadAFile(filename);
	if(contents.GetLength()< 1)
		return E_INVALIDARG;
	CStringVector lines = CStringVector::Tokenize(contents, "\n");
	CStringVector columns;
	columns.push_back("toolid");
	columns.push_back("name");
	columns.push_back("tooltypeid");
	columns.push_back("materialid");
	columns.push_back("number_of_teeth");
	columns.push_back("hand_of_cut");
	columns.push_back("coolant_through_tool");
	columns.push_back("cutting_edge_length");
	columns.push_back("flute_length");
	columns.push_back("overall_length");
	columns.push_back("shoulder_length");
	columns.push_back("tip_diameter");
	columns.push_back("tool_tip_half_angle");
	columns.push_back("sfm");
	columns.push_back("fpt");
	columns.push_back("metric");

	CStringVector values;
	values.resize(16); 
	for(int i=40, j=1; i< lines.size(); i+=10, j++)
	{
		CStringVector items1 = CStringVector::Tokenize(lines[i+1]," ");
		CStringVector items2 = CStringVector::Tokenize(lines[i+2]," ");
		CStringVector items3 = CStringVector::Tokenize(lines[i+3]," ");
		CStringVector items7 = CStringVector::Tokenize(lines[i+7]," ");
		CStringVector items8 = CStringVector::Tokenize(lines[i+8]," ");
		CStringVector items9 = CStringVector::Tokenize(lines[i+9]," ");
		values[0] =StrFormat("%d", j); //                  toolid
		values[1]=lines[i+3].Mid(lines[i+3].Find("-")+1).Trim();	// name
		values[2]=items7[3].Trim();	// tooltypeid
		values[3]=items2[2].Trim();	// materialid
		values[4]= items7[16].Trim();             //  number_of_teeth
		values[5]= (items9[9] ==1) ? "LEFT" : "RIGHT";    //  hand_of_cut
		values[6]= items7[15];             //  coolant_through_tool
		values[7]= items9[3];             //  cutting_edge_length
		values[8]= items9[3];             //  flute_length
		values[9]= items7[10];             //  overall_length
		values[10]= items9[5];             //  shoulder_length
		values[11]= items7[5];             //  tip_diameter
		values[12]= items7[8];             //  tool_tip_half_angle
		values[13]= items9[10];             //  sfm
		values[14]= items9[11];             //  fpt
		values[15]= items9[12].Trim();             //  metric
		InsertRow("milling_cutter", columns, values);
	}
	return S_OK;
}


#if 0

tooltypes["CENTERDRILL"]=1;
tooltypes["SPOT"]=2;
tooltypes["DRILL"]=3;
tooltypes["TAP-RH"]=4;
tooltypes["TAP-LH"]=5;
tooltypes["REAMER"]=6;
tooltypes["BORINGBAR"]=7;
tooltypes["COUNTERBORE"]=8;
tooltypes["COUNTERSINK"]=9;
tooltypes["ENDMILLFLAT"]=10;
tooltypes["ENDMILLSPHERE"]=11;
tooltypes["ENDMILLBULL"]=12;
tooltypes["CHAMFERMILL"]=13;
tooltypes["FACEMILL"]=14;
tooltypes["SLOTMILL"]=15;
tooltypes["CORNERRADMILL"]=16;
tooltypes["DOVETAILMILL"]=17;
tooltypes["TAPERMILL"]=18;
tooltypes["LOLLIPOPMILL"]=19;
#endif