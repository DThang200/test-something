@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-18/05/2025-04:42" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-18/05/2025-04:42" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
