@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-10/04/2025-16:44" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-10/04/2025-16:44" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
