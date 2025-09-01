@echo off 
 
set urls=https://st7.ranoz.gg/N5PEP4aB-2687.rar 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "TAI_FILE_BACKUP-02/09/2025-01:03" 
if %errorlevel% equ 0 ( 
   echo done 
) else ( 
    call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "TAI_FILE_BACKUP-02/09/2025-01:03" 
    powershell -NoProfile -ExecutionPolicy Bypass -Command "& {Invoke-WebRequest -Uri 'https://st7.ranoz.gg/N5PEP4aB-2687.rar' -OutFile '%USERPROFILE%\Downloads\Delta2685.rar'}" 
    "C:\Program Files\WinRAR\WinRAR.exe" x -ibck -o+ "%USERPROFILE%\Downloads\Delta2685.rar" "%USERPROFILE%\Downloads\" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\free-space.bat" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\after-backup.bat" 
    ) 
    timeout /t 5 
    exit 
