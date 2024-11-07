@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-Thu/11/07-11:50" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-Thu/11/07-11:50" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
