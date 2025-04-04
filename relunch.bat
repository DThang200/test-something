@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "CAPTURE-04/04/2025-08:22" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "CAPTURE-04/04/2025-08:22" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\capture.bat" 
) 
