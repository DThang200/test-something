@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-28/05/2025-18:36" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-28/05/2025-18:36" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
