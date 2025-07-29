@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "CAPTURE-29/07/2025-12:01" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "CAPTURE-29/07/2025-12:01" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\capture.bat" 
) 
