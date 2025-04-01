@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "RESET-01/04/2025-18:08" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "RESET-01/04/2025-18:08" 
    shutdown /r /f /t 15 
) 
