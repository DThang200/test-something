@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-Fri/12/27-12:57" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-Fri/12/27-12:57" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
