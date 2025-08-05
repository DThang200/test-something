@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "BACKUP-05/08/2025-19:19" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "BACKUP-05/08/2025-19:19" 
    cd "%USERPROFILE%\Desktop\dow-code\test-something\asset" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\tat-app.vbs" 
) 
