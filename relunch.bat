@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "CAPTURE-26/07/2025-15:32" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "CAPTURE-26/07/2025-15:32" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\capture.bat" 
) 
