@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-05/05/2025-17:53" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-05/05/2025-17:53" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
