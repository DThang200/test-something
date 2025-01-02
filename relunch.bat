@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-Thu/01/02-11:08" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-Thu/01/02-11:08" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
