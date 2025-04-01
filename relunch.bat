@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "CHECKING-02/04/2025-02:51" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "CHECKING-02/04/2025-02:51" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\open-ultraview.bat" 
) 
