@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "DOWLOAD_FILE-02/10/2025-08:47" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "DOWLOAD_FILE-02/10/2025-08:47" 
    copy /y "%USERPROFILE%\Desktop\dow-code\test-something\asset\pull-code.bat" "%USERPROFILE%\Desktop\dow-code" 
    timeout /t 10 
    echo Da update file thanh cong 
    timeout /t 5 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\free-space.bat" 
) 
