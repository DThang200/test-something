@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "Delete-09/08/2025-07:13" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "Delete-09/08/2025-07:13" 
    call "%USERPROFILE%\Desktop\delete-ld.bat" 
) 
