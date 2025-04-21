@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-21/04/2025-09:38" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-21/04/2025-09:38" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
