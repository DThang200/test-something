@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "SHUTDOWN-SELECTED-01/06/2025-03:51" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "SHUTDOWN-SELECTED-01/06/2025-03:51" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\shutdown-selected.bat" 
) 
