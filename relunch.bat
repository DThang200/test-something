@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-Tue/01/14-05:55" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-Tue/01/14-05:55" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
