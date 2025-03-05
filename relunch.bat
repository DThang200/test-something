@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-Thu/03/06-01:10" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-Thu/03/06-01:10" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
