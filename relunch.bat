@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-20/05/2025-15:03" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-20/05/2025-15:03" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
