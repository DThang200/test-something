@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "CHECKFREESPACE-01/04/2025-06:09" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "CHECKFREESPACE-01/04/2025-06:09" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\test-wh.bat" 
) 
