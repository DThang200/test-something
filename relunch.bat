@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "CHECKFREESPACE-24/04/2025-22:36" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "CHECKFREESPACE-24/04/2025-22:36" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\free-space.bat" 
) 
