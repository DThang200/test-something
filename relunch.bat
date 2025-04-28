@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "CHECKING-29/04/2025-00:49" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "CHECKING-29/04/2025-00:49" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\open-ultraview.bat" 
) 
