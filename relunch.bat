@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-29/04/2025-01:32" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-29/04/2025-01:32" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
