@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "CHECKING-20/04/2025-19:07" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "CHECKING-20/04/2025-19:07" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\open-ultraview.bat" 
) 
