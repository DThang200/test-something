@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-18/04/2025-20:59" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-18/04/2025-20:59" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
