@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-11/04/2025-21:26" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-11/04/2025-21:26" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
