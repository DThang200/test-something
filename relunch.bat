@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-26/05/2025-13:33" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-26/05/2025-13:33" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
