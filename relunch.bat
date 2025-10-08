@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "CLEAR-LD-09/10/2025-04:55" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "CLEAR-LD-09/10/2025-04:55" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\clear-ld.vbs" 
) 
