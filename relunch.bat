@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "CAPTURE-25/05/2025-13:10" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "CAPTURE-25/05/2025-13:10" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\capture.bat" 
) 
