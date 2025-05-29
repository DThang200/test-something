@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "CHECKVER-29/05/2025-21:57" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "CHECKVER-29/05/2025-21:57" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\checkver.bat" 
) 
