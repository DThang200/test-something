@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-04/04/2025-19:21" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-04/04/2025-19:21" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
