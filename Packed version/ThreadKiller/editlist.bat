@echo off

ver|find "5.">nul&&goto :Admin
echo 1>"%~dp0rightscheck.txt"
if exist "%~dp0rightscheck.txt" ( 
del /f /q "%~dp0rightscheck.txt"
goto :Admin
)
mshta vbscript:createobject("shell.application").shellexecute("%~f0","","","runas",1)(window.close)&goto :eof
:Admin


setlocal enabledelayedexpansion
echo %appdata%
mkdir "%appdata%\TTStudio\ThreadKiller"
cd /d "%appdata%\TTStudio\ThreadKiller"
copy /y "%~dp0Targets.txt" "Targets.txt"
notepad.exe "%appdata%\TTStudio\ThreadKiller\Targets.txt"
cd /d "%~dp0"
copy /y "%appdata%\TTStudio\ThreadKiller\Targets.txt" Targets.txt
echo !errorlevel!
if ERRORLEVEL 1 ( pause )