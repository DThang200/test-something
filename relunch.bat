@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-01/04/2025-18:08" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-01/04/2025-18:08" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
