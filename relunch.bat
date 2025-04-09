@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "CAPTURE-10/04/2025-00:57" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "CAPTURE-10/04/2025-00:57" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\capture.bat" 
) 
