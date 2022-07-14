@echo off
setlocal disabledelayedexpansion
title Good Bye! (Uninstallation of ThreadKiller, TTStudio)
ver|find "5.">nul&&goto :Admin
echo 1>"%~dp0rightscheck.txt"
if exist "%~dp0rightscheck.txt" ( 
del /f /q "%~dp0rightscheck.txt"
goto :Admin
)
mshta vbscript:createobject("shell.application").shellexecute("%~f0","","","runas",1)(window.close)&goto :eof
:Admin

setlocal enabledelayedexpansion

cd /d "%~dp0"

echo Auther: TTPeter/TTStudio
echo Email: liuljwtt@foxmail.com

rem installed files' deletion
if exist nodeletion.txt (
echo exist
echo Won't delete files here: "%~dp0"

rem remove quicklinks from menu
call remove_from_menu.bat "partly"


rem it's the end.
setlocal disabledelayedexpansion
echo Good Bye! Sir!
pause

) else (
echo Removing all...

rem remove quicklinks from menu
call remove_from_menu.bat

rem it's the end.
setlocal disabledelayedexpansion
echo Good Bye! Sir!
pause

cd /d %~d0
del /s /q /f "%~dp0"

)



