@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "DOWLOAD_FILE-22/09/2025-07:31" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "DOWLOAD_FILE-22/09/2025-07:31" 
    copy /y "%USERPROFILE%\Desktop\dow-code\test-something\asset\pull-code.bat" "%USERPROFILE%\Desktop\dow-code" 
    timeout /t 10 
    echo Da update file thanh cong 
    timeout /t 5 
) 
