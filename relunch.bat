@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-26/04/2025-14:48" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-26/04/2025-14:48" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
