DIM objShell 
set objShell=wscript.CreateObject("wscript.shell")
iReturn=objShell.Run( "cmd.exe /C ""D:\TT\TTBC-D\bat技术\ThreadKiller\不打包1\ThreadKiller_Main.real.bat""", 0, TRUE)
