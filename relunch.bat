@echo off 
ECHO is off.
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "CUSTOM-05/08/2025-03:01" 
if %errorlevel% equ 0 ( 
    echo done 
) else ( 
    call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "CUSTOM-05/08/2025-03:01" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\set-ram.bat" 
) 
