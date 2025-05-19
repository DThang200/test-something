@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-19/05/2025-22:36" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-19/05/2025-22:36" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
