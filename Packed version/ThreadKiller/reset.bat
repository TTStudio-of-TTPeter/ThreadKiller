@echo off
ver|find "5.">nul&&goto :Admin
echo 1>"%~dp0rightscheck.txt"
if exist "%~dp0rightscheck.txt" ( 
del /f /q "%~dp0rightscheck.txt"
goto :Admin
)
mshta vbscript:createobject("shell.application").shellexecute("%~f0","","","runas",1)(window.close)&goto :eof
:Admin

echo Running RESET Program:
del /s /q /f "%~dp0*.lnk"
ren "%~dp0ThreadKiller_Main.real.bat" "ThreadKiller_Main.bat"
del /s /q /f "%~dp0a.vbs"
del /q /f "%~dp0ThreadKiller_Main.bat.vbs"
echo nul>Targets.txt
echo stop>stop.txt

rem remove quicklinks from menu
call "%~dp0remove_from_menu.bat" "partly"

echo RESET Program Finish.