Set AAA = WScript.CreateObject("WScript.Shell")                  
set BBB = AAA.CreateShortcut("D:\TT\TTBC-D\bat技术\ThreadKiller\不打包1\BlackCurtain_v1.3\\ThreadKiller_Main.bat.vbs.lnk")    
BBB.TargetPath = "D:\TT\TTBC-D\bat技术\ThreadKiller\不打包1\ThreadKiller_Main.bat.vbs"              '
BBB.Arguments = ""                                             
BBB.WindowStyle = 1                                              
BBB.IconLocation = "D:\TT\TTBC-D\bat技术\ThreadKiller\不打包1\ThreadKiller_Main.bat.vbs,0"                    
BBB.Description = ""                                             
BBB.WorkingDirectory = "D:\TT\TTBC-D\bat技术\ThreadKiller\不打包1\"                             
BBB.Save                                                         
