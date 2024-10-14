@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-14/10/2024-07:49" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
    call "%USERPROFILE%\Desktop\dow-code\client-code\addLog.bat" "REBOOT-14/10/2024-07:49" 
    shutdown /r /f /t 0 
) 
