@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-Tue/10/22-12:04" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-Tue/10/22-12:04" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
