@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-13/04/2025-08:56" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-13/04/2025-08:56" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
