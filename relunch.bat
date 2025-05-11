@echo off 
 
set urls=https://spyderrock.com/jwuW8946-Codexv670.ldbk 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "TAI_FILE_BACKUP-11/05/2025-13:59" 
if %errorlevel% equ 0 ( 
   echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "TAI_FILE_BACKUP-11/05/2025-13:59" 
powershell -NoProfile -ExecutionPolicy Bypass -Command "& {Invoke-WebRequest -Uri 'https://spyderrock.com/jwuW8946-Codexv670.ldbk' -OutFile '%USERPROFILE%\Downloads\Codexv670.ldbk'}" 
    ) 
    timeout /t 5 
    exit 
