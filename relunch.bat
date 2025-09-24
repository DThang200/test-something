@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "BACKUP-24/09/2025-12:21" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "BACKUP-24/09/2025-12:21" 
    cd "%USERPROFILE%\Desktop\dow-code\test-something\asset" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\tat-app.vbs" 
) 
