@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-06/04/2025-15:05" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-06/04/2025-15:05" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
