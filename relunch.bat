@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "CAPTURE-05/04/2025-01:30" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "CAPTURE-05/04/2025-01:30" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\capture.bat" 
) 
