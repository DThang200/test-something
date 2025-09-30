@echo off 
 
set urls=https://st7.ranoz.gg/z4M2YK0f-2690vip2.rar 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "TAI_FILE_BACKUP-30/09/2025-14:23" 
if %errorlevel% equ 0 ( 
   echo done 
) else ( 
    call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "TAI_FILE_BACKUP-30/09/2025-14:23" 
    powershell -NoProfile -ExecutionPolicy Bypass -Command "& {Invoke-WebRequest -Uri 'https://st7.ranoz.gg/z4M2YK0f-2690vip2.rar' -OutFile '%USERPROFILE%\Downloads\26902vip.rar'}" 
    "C:\Program Files\WinRAR\WinRAR.exe" x -ibck -o+ "%USERPROFILE%\Downloads\26902vip.rar" "%USERPROFILE%\Downloads\" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\free-space.bat" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\after-backup.bat" 
    ) 
    timeout /t 5 
    exit 
