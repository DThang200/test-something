@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-24/04/2025-06:00" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-24/04/2025-06:00" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
