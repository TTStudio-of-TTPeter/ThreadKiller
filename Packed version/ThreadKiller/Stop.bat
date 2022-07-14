@echo off
ver|find "5.">nul&&goto :Admin
echo 1>"%~dp0rightscheck.txt"
if exist "%~dp0rightscheck.txt" ( 
del /f /q "%~dp0rightscheck.txt"
goto :Admin
)
mshta vbscript:createobject("shell.application").shellexecute("%~f0","","","runas",1)(window.close)&goto :eof
:Admin

echo stop>"%~dp0stop.txt"
