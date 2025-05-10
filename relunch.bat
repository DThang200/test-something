@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-10/05/2025-15:40" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-10/05/2025-15:40" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
