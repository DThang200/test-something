@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-25/04/2025-18:31" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-25/04/2025-18:31" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
