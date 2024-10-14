@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "DOWLOAD_FILE-15/10/2024-12:26" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "DOWLOAD_FILE-15/10/2024-12:26" 
    copy /y "%USERPROFILE%\Desktop\dow-code\test-something\asset\custom-code.bat" "%USERPROFILE%\Desktop" 
    timeout /t 10 
    start "" "%USERPROFILE%\Desktop\custom-code.bat" 
    echo Da update file thanh cong 
    timeout /t 5 
) 
