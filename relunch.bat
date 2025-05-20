@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "CAPTURE-20/05/2025-21:21" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "CAPTURE-20/05/2025-21:21" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\capture.bat" 
) 
