@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "Delete-29/09/2025-05:38" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "Delete-29/09/2025-05:38" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\delete-ld.bat" 
) 
