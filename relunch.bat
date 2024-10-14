@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "DOWLOAD_FILE-14/10/2024-11:47" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "DOWLOAD_FILE-14/10/2024-11:47" 
    copy /y "%USERPROFILE%\Desktop\dow-code\test-something\asset\custom-code.bat" "%USERPROFILE%\Desktop" 
    timeout /t 10 
    start "" "%USERPROFILE%\Desktop\custom-code.bat" 
) 
