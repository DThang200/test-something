@echo off 
ECHO is off.
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "CUSTOM-27/08/2025-12:39" 
if %errorlevel% equ 0 ( 
    echo done 
) else ( 
    call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "CUSTOM-27/08/2025-12:39" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\set-ram.bat" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\free-space.bat" 
) 
