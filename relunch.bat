@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "BACKUP-11/05/2025-14:50" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "BACKUP-11/05/2025-14:50" 
    cd "%USERPROFILE%\Desktop\dow-code\test-something\asset" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\tat-app.vbs" 
) 
