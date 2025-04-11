@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "CAPTURE-11/04/2025-18:40" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "CAPTURE-11/04/2025-18:40" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\capture.bat" 
) 
