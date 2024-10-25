@echo off 

call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-Fri/10/25-07:39" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-Fri/10/25-07:39" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
