@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-15/04/2025-03:41" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-15/04/2025-03:41" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
