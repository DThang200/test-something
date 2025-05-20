@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "BACKUP-20/05/2025-19:32" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "BACKUP-20/05/2025-19:32" 
    cd "%USERPROFILE%\Desktop\dow-code\test-something\asset" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\tat-app.vbs" 
) 
