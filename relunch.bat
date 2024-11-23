@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "DOWLOAD_FILE-23/11/2024-02:55" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "DOWLOAD_FILE-23/11/2024-02:55" 
    copy /y "%USERPROFILE%\Desktop\dow-code\test-something\asset\backup-LD.bat" "%USERPROFILE%\Desktop\dow-code" 
    timeout /t 10 
    echo Da update file thanh cong 
    timeout /t 5 
) 
