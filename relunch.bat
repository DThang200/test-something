@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "Delete-17/09/2025-07:34" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "Delete-17/09/2025-07:34" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\delete-ld.bat" 
) 
