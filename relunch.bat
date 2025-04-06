@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "CAPTURE-06/04/2025-17:31" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "CAPTURE-06/04/2025-17:31" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\capture.bat" 
) 
