@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "BACKUP-Sat/11/23-10:59" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "BACKUP-Sat/11/23-10:59" 
    cd "%USERPROFILE%\Desktop\dow-code"
    call "%USERPROFILE%\Desktop\dow-code\tat-app.vbs" 
) 
