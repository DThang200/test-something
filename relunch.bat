@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "CAPTURE-13/04/2025-04:33" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "CAPTURE-13/04/2025-04:33" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\capture.bat" 
) 
