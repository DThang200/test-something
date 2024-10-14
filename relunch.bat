@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "BACKUP-14/10/2024-10:54" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "BACKUP-14/10/2024-10:54" 
    call "%USERPROFILE%\Desktop\tat-app.vbs" 
) 
