@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-Sun/10/20-09:29" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-Sun/10/20-09:29" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
