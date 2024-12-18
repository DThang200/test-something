@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-Wed/12/18-01:26" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-Wed/12/18-01:26" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
