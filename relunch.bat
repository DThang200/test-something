@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-Sat/01/11-12:42" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-Sat/01/11-12:42" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
