@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "BACKUP-Sat/11/23-10:52" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "BACKUP-Sat/11/23-10:52" 
    call "%USERPROFILE%\Desktop\dow-code\tat-app.vbs" 
) 
