@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-17/04/2025-06:36" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-17/04/2025-06:36" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
