@echo off

ver|find "5.">nul&&goto :Admin
echo 1>"%~dp0rightscheck.txt"
if exist "%~dp0rightscheck.txt" ( 
del /f /q "%~dp0rightscheck.txt"
goto :Admin
)
mshta vbscript:createobject("shell.application").shellexecute("%~f0","%~f1","","runas",1)(window.close)&goto :eof
:Admin

setlocal enabledelayedexpansion

cd /d "%~dp0"
set mklkc="makelink_custom1.bat"

rem remove quicklinks from menu
echo Removing shortcuts...
echo APPDATA=%appdata%
set launch_pos=%appdata%\Microsoft\Windows\Start Menu\Programs\TTStudio ThreadKiller

del /s /f /q "%launch_pos%"

echo All shortcuts removed
echo %1
if "%1"==""partly"" (
echo mklkc=%mklkc%
echo %mklkc% "setup.bat" "ThreadKiller_Setup" "Press Me to install."
call %mklkc% "setup.bat" "ThreadKiller_Setup" "Press Me to install."
echo %mklkc% "fully_remove.bat" "ThreadKiller_FullyRemove" "Press Me to fully uninstall."
call %mklkc% "fully_remove.bat" "ThreadKiller_FullyRemove" "Press Me to fully uninstall."
echo on
copy /y /l "ThreadKiller_Setup.lnk" "%launch_pos%\ThreadKiller_Setup.lnk"
copy /y /l "ThreadKiller_FullyRemove.lnk" "%launch_pos%\ThreadKiller_FullyRemove.lnk"
@echo off
)


