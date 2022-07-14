@echo off

ver|find "5.">nul&&goto :Admin
echo 1>"%~dp0rightscheck.txt"
if exist "%~dp0rightscheck.txt" ( 
del /f /q "%~dp0rightscheck.txt"
goto :Admin
)
mshta vbscript:createobject("shell.application").shellexecute("%~f0","","","runas",1)(window.close)&goto :eof
:Admin

set BCFN=BlackCurtain_v1.3

echo Setup of %BCFN%.lnk and BC.lnk
call "%~dp0%BCFN%\setup.bat"
copy /Y "%~dp0%BCFN%\%BCFN%.lnk" "%~dp0BC.lnk"

echo BC _Main.bat
call "%~dp0BC.lnk" "%~dp0ThreadKiller_Main.bat"
rem ren "%~dp0ThreadKiller_Main.bat.lnk" ThreadKiller.lnk

echo Time to make links

set mklkc="%~dp0makelink_custom1.bat"
call %mklkc% "%~dp0ReadME.txt" "ThreadKiller_Help" "See Help Document of the software."

call %mklkc% "%~dp0showrun.bat" "ThreadKiller_ShowRun" "Run ThreadKiller without hiding window."

call %mklkc% "%~dp0ThreadKiller.bat" "ThreadKiller" "Run ThreadKiller with window hidden."

call %mklkc% "%~dp0editlist.bat" "ThreadKiller_Targets" "Edit list of targets."

call %mklkc% "%~dp0Stop.bat" "ThreadKiller_Stop" "Stop it."

call %mklkc% "%~dp0reset.bat" "ThreadKiller_Reset" "Reset to just-unpacked."

call %mklkc% "%~dp0uninstall.bat" "ThreadKiller_Uninstall" "Uninstall Software. ATTENTION: if there exists nodeletion.txt, files in installation directory will not be removed."

set launch_pos=%appdata%\Microsoft\Windows\Start Menu\Programs\TTStudio ThreadKiller
del /q /f "%launch_pos%\ThreadKiller_HALF.lnk"


if exist "%~dp0ThreadKiller_Main.bat" (
echo HALF INSTALLED.
call %mklkc% "%~dp0setup.bat" "ThreadKiller_HALF" "Press Me to complete installation."
)

echo Time to save links
echo %appdata%
mkdir "%launch_pos%"
echo %launch_pos%
echo on
del /q /f "%launch_pos%\ThreadKiller_FullyRemove.lnk"
del /q /f "%launch_pos%\ThreadKiller_Setup.lnk"
copy /y /l "%~dp0ThreadKiller_Help.lnk" "%launch_pos%\ThreadKiller_Help.lnk"
copy /y /l "%~dp0ThreadKiller_ShowRun.lnk" "%launch_pos%\ThreadKiller_ShowRun.lnk"
copy /y /l "%~dp0ThreadKiller.lnk" "%launch_pos%\ThreadKiller.lnk"
copy /y /l "%~dp0ThreadKiller_Targets.lnk" "%launch_pos%\ThreadKiller_Targets.lnk"
copy /y /l "%~dp0ThreadKiller_Stop.lnk" "%launch_pos%\ThreadKiller_Stop.lnk"
copy /y /l "%~dp0ThreadKiller_Reset.lnk" "%launch_pos%\ThreadKiller_Reset.lnk"
copy /y /l "%~dp0ThreadKiller_Uninstall.lnk" "%launch_pos%\ThreadKiller_Uninstall.lnk"

copy /y /l "%~dp0ThreadKiller_HALF.lnk" "%launch_pos%\ThreadKiller_HALF.lnk"
