@echo off 
 
set urls=https://spyderrock.com/7Gx26888-CodeXv2663.ldbk 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "TAI_FILE_BACKUP-19/03/2025-14:08" 
if %errorlevel% equ 0 ( 
   echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "TAI_FILE_BACKUP-19/03/2025-14:08" 
powershell -NoProfile -ExecutionPolicy Bypass -Command "& {Invoke-WebRequest -Uri 'https://spyderrock.com/7Gx26888-CodeXv2663.ldbk' -OutFile '%USERPROFILE%\Downloads\CodeXv2663.ldbk'}" 
    ) 
    timeout /t 5 
    exit 
