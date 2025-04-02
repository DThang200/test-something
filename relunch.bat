@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "CAPTURE-03/04/2025-00:03" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "CAPTURE-03/04/2025-00:03" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\capture.bat" 
) 
