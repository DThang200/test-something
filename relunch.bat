@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-Sat/11/02-11:21" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-Sat/11/02-11:21" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
