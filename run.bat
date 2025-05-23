@echo off
setlocal enabledelayedexpansion

set "CMM=C:\controlmymonitor\ControlMyMonitor.exe"
set "MONITOR_RIGHT=\\.\DISPLAY1\Monitor0" #you can also provide the monitors model number
set "DP=15"
set "HDMI1=17"
set "HDMI2=18"
set "INPUT_SELECT=60"

%CMM% /GetValue !MONITOR_RIGHT! !INPUT_SELECT!
set "input=!errorlevel!"

if "!input!"=="%DP%" (set newInput=%HDMI1%) else (set newInput=%DP%)

echo "Swapping [!MONITOR_RIGHT!] from [!input!] to [!newinput!]..."

%CMM% /SetValue !MONITOR_RIGHT! !INPUT_SELECT! !newInput!
	
endlocal
