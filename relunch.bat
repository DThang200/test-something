@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "CAPTURE-11/05/2025-06:56" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "CAPTURE-11/05/2025-06:56" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\capture.bat" 
) 
