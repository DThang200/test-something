@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "DOWLOAD_FILE-14/10/2024-11:44" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "DOWLOAD_FILE-14/10/2024-11:44" 
    copy /y "%USERPROFILE%\Desktop\dow-code\test-something\asset\%" "%USERPROFILE%\Desktop" 
    timeout /t 10 
    start "" "%USERPROFILE%\Desktop\custom-code.bat" 
) 
