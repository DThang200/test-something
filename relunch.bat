@echo off 
 
    set urls=https://spyderrock.com/67gx7799-CodeXv2662.ldbk 
    call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "TAI_FILE_BACKUP-12/03/2025-10:58" 
    if %errorlevel% equ 0 ( 
       echo done 
    ) else ( 
    call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "TAI_FILE_BACKUP-12/03/2025-10:58" 
