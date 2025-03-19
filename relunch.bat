@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-19/03/2025-22:41" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-19/03/2025-22:41" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
