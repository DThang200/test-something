@echo off 
 
set urls=https://st7.ranoz.gg/qj6ve6Sc-2692vip.rar 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "TAI_FILE_BACKUP-01/10/2025-15:35" 
if %errorlevel% equ 0 ( 
   echo done 
) else ( 
    call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "TAI_FILE_BACKUP-01/10/2025-15:35" 
    powershell -NoProfile -ExecutionPolicy Bypass -Command "& {Invoke-WebRequest -Uri 'https://st7.ranoz.gg/qj6ve6Sc-2692vip.rar' -OutFile '%USERPROFILE%\Downloads\2692vip.rar'}" 
    "C:\Program Files\WinRAR\WinRAR.exe" x -ibck -o+ "%USERPROFILE%\Downloads\2692vip.rar" "%USERPROFILE%\Downloads\" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\backup-LD.bat.bat" 
    ) 
    timeout /t 5 
    exit 
