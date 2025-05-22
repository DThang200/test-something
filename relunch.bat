@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-22/05/2025-15:55" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-22/05/2025-15:55" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
