@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "CHECKFREESPACE-28/04/2025-22:13" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "CHECKFREESPACE-28/04/2025-22:13" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\free-space.bat" 
) 
