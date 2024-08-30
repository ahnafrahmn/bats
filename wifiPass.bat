:: Only for Urgent use!!

@echo off
setlocal enabledelayedexpansion
for /f "tokens=2 delims=:" %%a in ('netsh wlan show interfaces ^| findstr /C:"SSID" ^| findstr /V "BSSID"') do (
	set "ssid=%%a"
	set "ssid=!ssid:~1!"    
	netsh wlan show profiles "!ssid!" key=clear 
)
pause
