@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-Mon/12/30-12:01" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-Mon/12/30-12:01" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
