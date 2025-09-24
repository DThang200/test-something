@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "Delete-24/09/2025-21:23" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "Delete-24/09/2025-21:23" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\delete-ld.bat" 
) 
