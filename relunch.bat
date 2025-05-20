@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-21/05/2025-00:29" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-21/05/2025-00:29" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
