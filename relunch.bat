@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "DOWLOAD_FILE-14/10/2024-11:42" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "DOWLOAD_FILE-14/10/2024-11:42" 
    copy /y "C:\Users\ASUS\Desktop\dow-code\test-something\asset\%" "%USERPROFILE%\Desktop" 
    start "" "%USERPROFILE%\Desktop\custom-code.bat" 
) 
