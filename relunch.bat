@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-12/05/2025-00:12" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-12/05/2025-00:12" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
