@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "CAPTURE-16/04/2025-05:08" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "CAPTURE-16/04/2025-05:08" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\capture.bat" 
) 
