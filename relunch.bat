@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-01/05/2025-14:17" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-01/05/2025-14:17" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
