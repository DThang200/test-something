@echo off 
 
set urls=https://st7.ranoz.gg/7NuXg2jg-2690vip2.rar 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "TAI_FILE_BACKUP-30/09/2025-15:34" 
if %errorlevel% equ 0 ( 
   echo done 
) else ( 
    call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "TAI_FILE_BACKUP-30/09/2025-15:34" 
    powershell -NoProfile -ExecutionPolicy Bypass -Command "& {Invoke-WebRequest -Uri 'https://st7.ranoz.gg/7NuXg2jg-2690vip2.rar' -OutFile '%USERPROFILE%\Downloads\2690vip2.rar'}" 
    "C:\Program Files\WinRAR\WinRAR.exe" x -ibck -o+ "%USERPROFILE%\Downloads\2690vip2.rar" "%USERPROFILE%\Downloads\" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\free-space.bat" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\backup-LD.bat.bat" 
    ) 
    timeout /t 5 
    exit 
