@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "REBOOT-27/04/2025-02:47" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "REBOOT-27/04/2025-02:47" 
    call "%USERPROFILE%\Desktop\B1-tatLD.bat" 
) 
