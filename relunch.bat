@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "CAPTURE-02/04/2025-02:19" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "CAPTURE-02/04/2025-02:19" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\capture.bat" 
) 
