@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "BACKUP-Thu/11/28-03:00" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "BACKUP-Thu/11/28-03:00" 
    cd "%USERPROFILE%\Desktop\dow-code"
    call "%USERPROFILE%\Desktop\dow-code\tat-app.vbs" 
) 
