@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-Wed/01/15-10:15" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-Wed/01/15-10:15" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
