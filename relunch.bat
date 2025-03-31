@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "DELETE_DOWNLOAD-01/04/2025-03:02" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "DELETE_DOWNLOAD-01/04/2025-03:02" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\clear-download.bat" 
) 
