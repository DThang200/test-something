@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-Sat/11/23-10:54" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-Sat/11/23-10:54" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
