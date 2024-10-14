@echo off 
 
    set urls=www.example.com www.google.com www.github.com 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "TAI_FILE_LINK-14/10/2024-11:57" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "TAI_FILE_LINK-14/10/2024-11:57" 
    for %u in (%urls%) do (
    start %u 
    ) 
ECHO is off.
) 
