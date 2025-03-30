@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "RESET-30/03/2025-16:04" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "RESET-30/03/2025-16:04" 
    shutdown /r /f /t 15 
) 
