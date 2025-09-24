@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "CAPTURE-24/09/2025-20:47" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "CAPTURE-24/09/2025-20:47" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\capture.bat" 
) 
