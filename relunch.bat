@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-Sun/01/05-08:40" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-Sun/01/05-08:40" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
