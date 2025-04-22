@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-22/04/2025-23:53" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-22/04/2025-23:53" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
