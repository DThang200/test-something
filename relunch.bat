@echo off 
 
set urls=https://spyderrock.com/htZW8936-Codexv2675.ldbk 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "TAI_FILE_BACKUP-08/06/2025-00:39" 
if %errorlevel% equ 0 ( 
   echo done 
) else ( 
    call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "TAI_FILE_BACKUP-08/06/2025-00:39" 
    powershell -NoProfile -ExecutionPolicy Bypass -Command "& {Invoke-WebRequest -Uri 'https://spyderrock.com/htZW8936-Codexv2675.ldbk' -OutFile '%USERPROFILE%\Downloads\Codexv2675.ldbk'}" 
    timeout /t 60 
    cd "%USERPROFILE%\Desktop\dow-code\test-something\asset" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\after-backup.bat" 
    ) 
    timeout /t 5 
    exit 
