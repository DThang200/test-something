@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "BACKUP-11/04/2025-22:23" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "BACKUP-11/04/2025-22:23" 
    cd "%USERPROFILE%\Desktop\dow-code" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\tat-app.vbs" 
) 
