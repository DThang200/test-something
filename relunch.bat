@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "CAPTURE-22/04/2025-02:14" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "CAPTURE-22/04/2025-02:14" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\capture.bat" 
) 
