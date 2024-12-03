@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-Wed/12/04-12:08" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-Wed/12/04-12:08" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
