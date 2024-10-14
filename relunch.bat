@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-15/10/2024-05:08" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-15/10/2024-05:08" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
