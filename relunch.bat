@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "CHECKFREESPACE-02/04/2025-02:17" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "CHECKFREESPACE-02/04/2025-02:17" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\capture.bat" 
) 
