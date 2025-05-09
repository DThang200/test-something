@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-09/05/2025-14:45" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-09/05/2025-14:45" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
