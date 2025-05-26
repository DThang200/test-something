@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "CHECKING-26/05/2025-22:25" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "CHECKING-26/05/2025-22:25" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\open-ultraview.bat" 
) 
