@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-08/05/2025-05:21" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-08/05/2025-05:21" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
