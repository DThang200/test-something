@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "BACKUP-19/03/2025-16:54" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "BACKUP-19/03/2025-16:54" 
    cd "%USERPROFILE%\Desktop\dow-code" 
    call "%USERPROFILE%\Desktop\dow-code\tat-app.vbs" 
) 
