@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "DOWLOAD_FILE-19/03/2025-16:30" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "DOWLOAD_FILE-19/03/2025-16:30" 
    copy /y "%USERPROFILE%\Desktop\dow-code\test-something\asset\backup-LD.bat" "%USERPROFILE%\Desktop\dow-code" 
    timeout /t 10 
    echo Da update file thanh cong 
    timeout /t 5 
) 
