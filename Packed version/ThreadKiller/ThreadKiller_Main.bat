@echo off
setlocal enabledelayedexpansion
echo nul>"%~dp0\log.txt"
cd /d "%~dp0"
:loop
rem check if this program should stop
for /f "delims=" %%i in (stop.txt) do (
if "%%i"=="stop" ( 
echo stop
echo null>stop.txt
goto :eof
) 
)

for /f "delims=" %%i in (Targets.txt) do (
rem for /f "delims=" %%j in ('taskkill /f /im %%i') do echo %%j>>log.txt
taskkill /f /im %%i>>log.txt
if !errorlevel!==0 (
setlocal disabledelayedexpansion
echo Mission: Kill %%i, Complete!
setlocal enabledelayedexpansion
)
)
goto loop
goto :eof