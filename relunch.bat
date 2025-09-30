@echo off 
 
set urls=https://st7.ranoz.gg/r0N8adSa-2690vip3.rar 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "TAI_FILE_BACKUP-30/09/2025-15:45" 
if %errorlevel% equ 0 ( 
   echo done 
) else ( 
    call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "TAI_FILE_BACKUP-30/09/2025-15:45" 
    powershell -NoProfile -ExecutionPolicy Bypass -Command "& {Invoke-WebRequest -Uri 'https://st7.ranoz.gg/r0N8adSa-2690vip3.rar' -OutFile '%USERPROFILE%\Downloads\2690vip3.rar'}" 
    "C:\Program Files\WinRAR\WinRAR.exe" x -ibck -o+ "%USERPROFILE%\Downloads\2690vip3.rar" "%USERPROFILE%\Downloads\" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\backup-LD.bat.bat" 
    ) 
    timeout /t 5 
    exit 
