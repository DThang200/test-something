@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "CHECKFREESPACE-28/04/2025-18:57" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "CHECKFREESPACE-28/04/2025-18:57" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\free-space.bat" 
) 
