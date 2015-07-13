//
// Utils.h
//

#pragma once

#include <ctime>
#include <string>
#include "StdStringFcn.h"
class CTimestamp;

class CTimestamp
{
public:
	CTimestamp() ;
	~CTimestamp();
	static std::vector<CTimestamp * > _members;
	static void UpdateSimElapsed(double seconds);
	void UpdateElapsed(double seconds);
	void SimStart(double seconds) ;
	unsigned long SimElapsed();

	void Start() ;
	void Stop() ;
	unsigned long Elapsed() ;

	std::string ElapsedString() ;
	std::string StartTimeString() ;
	std::string EndTimeString() ;
	void StopWatch(int secondsFromNow);
	std::string ToGoTimeString();
	std::string GetDate() ;
	std::string GetCurrentDateTime() ;
	static std::string GetFormattedTime(std::time_t rawtime, std::string format="%m/%D/%Y %H:%M:%S");
	static std::string ClockFormatofSeconds(double seconds)
	{
		int time = (int) seconds;
		int hour=time/3600;
		time=time%3600;
		int min=time/60;
		time=time%60;
		int sec=time;
		return StdStringFormat("%02d:%02d:%02d", hour, min, sec);
	}

private:
	std::time_t startTime;
	std::time_t endTime;

	std::string GetTotalSeconds(std::time_t rawtime);
	double _elapsed;

};

//__declspec(selectany)  	 std::vector<CTimestamp * > CTimestamp::_members;
//__declspec(selectany)  CTimestamp Timestamp;
extern  CTimestamp Timestamp;
#if 0
CTimestamp::CTimestamp() 
{
	startTime=endTime=-1;
	_members.push_back(this);
	_elapsed=0.0;
}
CTimestamp::~CTimestamp()
{
	for(size_t i=0; i< _members.size(); i++)
		if(_members[i]== this) 
			_members.erase(_members.begin() + i);
}

void CTimestamp::UpdateSimElapsed(double seconds)
{
	for(size_t i=0; i< _members.size(); i++)
		_members[i]-> UpdateElapsed(seconds);

}

void CTimestamp::SimStart(double seconds) {_elapsed=seconds; }
void CTimestamp::UpdateElapsed(double seconds){ _elapsed+=seconds; }
unsigned long CTimestamp::SimElapsed(){  return (unsigned long) _elapsed; }
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
	//timeinfo = localtime_s (&rawtime);
#ifdef WINDOWS
	localtime_s (timeinfo, &rawtime);
#else
	timeinfo = localtime ( &rawtime );
#endif

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
#endif
