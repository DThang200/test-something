@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-14/10/2024-11:06" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-14/10/2024-11:06" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
