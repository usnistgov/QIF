//
// WinUtils.cpp
//

// This software was developed by U.S. Government employees as part of
// their official duties and is not subject to copyright. No warranty implied 
// or intended.

#include "Windows.h"
#include <exception>

// C++ Project ->Properties -> Compiler -> Code Generation -> Enable C++ Exceptions -> Yes with SEH Exceptions (/EHa) 
static void trans_func( unsigned int u, EXCEPTION_POINTERS* pExp )
{
	//std::string errmsg =  "In trans_func - Code = 0x%x\n" ++ pExp->ExceptionRecord->ExceptionCode;
	//GLogger.Warning(errmsg.c_str() );
	throw std::exception( "MSVC Exception caught in trans_func", pExp->ExceptionRecord->ExceptionCode);
}

struct CSetup
{
	CSetup::CSetup()
	{
		_set_se_translator( trans_func );   //Handles Win32 exceptions (C structured exceptions) as C++ typed exceptions

	}
};

CSetup setup;

#include <string>
std::string ExeDirectory()
{
	std::string cmd = GetCommandLine();
	if(cmd[0]!= '"')
		return "";
	cmd =cmd.substr(1);
	std::string::size_type delimPos = cmd.find_first_of('"', 0);
	if(std::string::npos == delimPos)
		return "";
	cmd=cmd.substr(0,delimPos);
	return cmd.substr( 0, cmd.find_last_of( '\\' ) +1 );
}
