@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-14/03/2025-01:55" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-14/03/2025-01:55" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
