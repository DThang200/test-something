@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "Delete-11/09/2025-04:42" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "Delete-11/09/2025-04:42" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\delete-ld.bat" 
) 
