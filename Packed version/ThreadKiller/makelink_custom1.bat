@Echo off
set temp=%~dp0
>"%temp%\a.vbs"   echo Set AAA = WScript.CreateObject("WScript.Shell")                  
>>"%temp%\a.vbs" echo set BBB = AAA.CreateShortcut("%temp%\%~nx2.lnk")    
>>"%temp%\a.vbs" echo BBB.TargetPath = "%~f1"              '
>>"%temp%\a.vbs" echo BBB.Arguments = ""                                             
>>"%temp%\a.vbs" echo BBB.WindowStyle = 1                                              
rem >>"%temp%\a.vbs" echo BBB.Hotkey = "CTRL+ALT+J"                                        
>>"%temp%\a.vbs" echo BBB.IconLocation = "%~f1,0"                    
rem 这里%3一定要有给，至少也是""
>>"%temp%\a.vbs" echo BBB.Description = %3                                       
>>"%temp%\a.vbs" echo BBB.WorkingDirectory = "%~dp1"                             
>>"%temp%\a.vbs" echo BBB.Save                                                         
"%temp%\a.vbs"