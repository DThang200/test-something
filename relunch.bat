@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-09/04/2025-00:50" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-09/04/2025-00:50" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
