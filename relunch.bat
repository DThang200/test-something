@echo off 
 
set urls=https://st2.ranoz.gg/5CqQr7BS-Delta2685.rar 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "TAI_FILE_BACKUP-12/08/2025-21:22" 
if %errorlevel% equ 0 ( 
   echo done 
) else ( 
    call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "TAI_FILE_BACKUP-12/08/2025-21:22" 
    powershell -NoProfile -ExecutionPolicy Bypass -Command "& {Invoke-WebRequest -Uri 'https://st2.ranoz.gg/5CqQr7BS-Delta2685.rar' -OutFile '%USERPROFILE%\Downloads\Delta2685.rar'}" 
    "C:\Program Files\WinRAR\WinRAR.exe" x -ibck -o+ "%USERPROFILE%\Downloads\Delta2685.rar" "%USERPROFILE%\Downloads\" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\after-backup.bat" 
    ) 
    timeout /t 5 
    exit 
