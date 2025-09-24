@echo off 
 
set urls=https://st7.ranoz.gg/AKEQVBJn-2690vip.rar 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "TAI_FILE_BACKUP-24/09/2025-11:46" 
if %errorlevel% equ 0 ( 
   echo done 
) else ( 
    call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "TAI_FILE_BACKUP-24/09/2025-11:46" 
    powershell -NoProfile -ExecutionPolicy Bypass -Command "& {Invoke-WebRequest -Uri 'https://st7.ranoz.gg/AKEQVBJn-2690vip.rar' -OutFile '%USERPROFILE%\Downloads\2690vip.rar'}" 
    "C:\Program Files\WinRAR\WinRAR.exe" x -ibck -o+ "%USERPROFILE%\Downloads\2690vip.rar" "%USERPROFILE%\Downloads\" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\free-space.bat" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\after-backup.bat" 
    ) 
    timeout /t 5 
    exit 
