@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "RESET-28/03/2025-18:49" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "RESET-28/03/2025-18:49" 
    shutdown /r /f /t 15 
) 
