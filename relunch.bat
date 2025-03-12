@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "BACKUP-12/03/2025-12:33" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "BACKUP-12/03/2025-12:33" 
    call "%USERPROFILE%\Desktop\dow-code\tat-app.vbs" 
) 
