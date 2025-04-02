@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-02/04/2025-07:19" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-02/04/2025-07:19" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
