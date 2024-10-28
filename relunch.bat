@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-Mon/10/28-12:20" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-Mon/10/28-12:20" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
