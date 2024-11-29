@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-Fri/11/29-09:48" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-Fri/11/29-09:48" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
