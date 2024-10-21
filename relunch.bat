@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "TESTTTTTTTTTTTTT-21/10/2024-09:29" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "TESTTTTTTTTTTTTT-21/10/2024-09:29" 
    echo "123" 
) 
