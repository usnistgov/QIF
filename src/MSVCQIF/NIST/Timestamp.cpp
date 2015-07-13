#include "StdAfx.h"
#include "Utils.h"

std::vector<CTimestamp * > CTimestamp::_members;

CTimestamp::CTimestamp() 
{
	startTime=endTime=-1;
	_members.push_back(this);
	_elapsed=0.0;
}
CTimestamp::~CTimestamp()
{
	for(int i=0; i< _members.size(); i++)
		if(_members[i]== this) 
			_members.erase(_members.begin() + i);
}

void CTimestamp::UpdateSimElapsed(double seconds)
{
	for(int i=0; i< _members.size(); i++)
		_members[i]-> UpdateElapsed(seconds);

}

void CTimestamp::SimStart(double seconds) {_elapsed=seconds; }
void CTimestamp::UpdateElapsed(double seconds){ _elapsed+=seconds; }
unsigned long CTimestamp::SimElapsed(){ return _elapsed; }

void CTimestamp::Start() { endTime=startTime=time(NULL); _elapsed=0.0; }

void CTimestamp::Stop() {  endTime=time(NULL); }

unsigned long CTimestamp::Elapsed() { return (unsigned long) (time(NULL) - startTime) ; } 

std::string CTimestamp::ElapsedString() { if(startTime<0) return "00:00:00"; else return GetTotalSeconds(time(NULL)-startTime); }

std::string CTimestamp::StartTimeString() { if(startTime<0) return "00:00:00"; else  return GetFormattedTime(startTime); }

std::string CTimestamp::EndTimeString() {if(endTime<0) return "00:00:00"; else  return GetFormattedTime(endTime); }

std::string CTimestamp::ToGoTimeString() {if(endTime<0) return "00:00:00"; else  return GetFormattedTime(endTime-time_t(0)); }

void CTimestamp::StopWatch(int secondsFromNow){endTime=time(NULL)+secondsFromNow;}

std::string CTimestamp::GetDate()
{
	if(startTime<0) return "00-00-0000"; 
	else  return GetFormattedTime(startTime, "%m/%D/%Y");
}
std::string CTimestamp::GetCurrentDateTime() 
{
	time_t rawtime;
	time (&rawtime);	 
	struct tm * timeinfo = localtime (&rawtime);
	std::string timestr= asctime(timeinfo);
	return timestr.substr(0,timestr.size()-1); // skip \n
	//return GetFormattedTime(time_t(0), "%m/%D/%Y %H:%M:%S");
}

std::string CTimestamp::GetFormattedTime(std::time_t rawtime, std::string format)
{
	struct tm * timeinfo;
	char buffer [80];
	timeinfo = localtime (&rawtime);

	strftime (buffer,80,format.c_str(),timeinfo);
	return buffer;
}

std::string CTimestamp::GetTotalSeconds(std::time_t rawtime)
{
	int sec = rawtime % 60;
	int min = (rawtime/60)%60;
	int hr = rawtime/3600;
	return StdStringFormat ("%02d:%02d:%02d", hr, min, sec);
}
