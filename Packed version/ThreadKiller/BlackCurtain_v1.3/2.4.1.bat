@echo off
set here=%~dp0
set there=%~dp1
set a=%~nx1
set b=%~n1.real%~x1
echo %here%
echo %there%
echo %a%
echo %b%
::都是不含路径的文件名（带扩展名）
ren "%there%%a%" %b%
cd /d "%here%"

"%here%part2.exe" "%there%%b%"
echo part2.exe is over

copy /y "%here%runit.vbs" "%there%%a%.vbs"
del /q "%here%runit.vbs"

call "%here%makelink.bat" "%there%%a%.vbs"
echo makelink process is over

copy /y "%here%%a%.vbs.lnk" "%there%%a%.lnk"
del /q "%here%%a%.vbs.lnk"

::原来在哪现在还要在哪
cd /d "%there%"
