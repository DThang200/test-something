@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "CHECKFREESPACE-07/04/2025-07:19" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "CHECKFREESPACE-07/04/2025-07:19" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\free-space.bat" 
) 
