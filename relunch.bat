@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-11/05/2025-22:33" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-11/05/2025-22:33" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
