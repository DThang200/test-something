@echo off 
 
    set urls=https://spyderrock.com/8yKk9152-CodexCuongVM-247.ldbk 
    call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "TAI_FILE_BACKUP-Wed/01/08-01:58" 
    if %errorlevel% equ 0 ( 
       echo done 
    ) else ( 
    call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "TAI_FILE_BACKUP-Wed/01/08-01:58" 
    powershell -NoProfile -ExecutionPolicy Bypass -Command "& {Invoke-WebRequest -Uri 'https://spyderrock.com/8yKk9152-CodexCuongVM-247.ldbk' -OutFile '%USERPROFILE%\Downloads\CodexCuongVM-247.ldbk'}"
    ) 
    timeout /t 5 
    exit 
