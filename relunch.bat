@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "RESET-24/03/2025-19:56" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "RESET-24/03/2025-19:56" 
    shutdown /r /f /t 15 
) 
