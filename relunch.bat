@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "RESET-23/03/2025-21:31" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "RESET-23/03/2025-21:31" 
    shutdown /r /f /t 15 
) 
