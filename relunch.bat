@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-14/10/2024-06:51" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
    call "%USERPROFILE%\Desktop\dow-code\client-code\addLog.bat" "REBOOT-14/10/2024-06:51" 
    shutdown /r /f /t 0 
) 
