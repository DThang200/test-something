@echo off 
 
set urls=https://st1.ranoz.gg/0S2rI40W-Delta2679_2.rar 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "TAI_FILE_BACKUP-18/07/2025-04:31" 
if %errorlevel% equ 0 ( 
   echo done 
) else ( 
    call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "TAI_FILE_BACKUP-18/07/2025-04:31" 
    powershell -NoProfile -ExecutionPolicy Bypass -Command "& {Invoke-WebRequest -Uri 'https://st1.ranoz.gg/0S2rI40W-Delta2679_2.rar' -OutFile '%USERPROFILE%\Downloads\Delta2679_2.ldbk'}" 
    "C:\Program Files\WinRAR\WinRAR.exe" x -ibck -o+ "%USERPROFILE%\Downloads\Delta2679_2.rar" "%USERPROFILE%\Downloads\" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\after-backup.bat" 
    ) 
    timeout /t 5 
    exit 
