@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-Thu/10/17-12:00" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-Thu/10/17-12:00" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
