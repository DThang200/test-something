@echo off 
 
    set urls=https://spyderrock.com/9pGz7846-DeltaGiang25-11.ldbk 
    call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "TAI_FILE_BACKUP-Mon/11/25-01:33" 
    if %errorlevel% equ 0 ( 
       echo done 
    ) else ( 
    call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "TAI_FILE_BACKUP-Mon/11/25-01:33" 
    powershell -NoProfile -ExecutionPolicy Bypass -Command "& {Invoke-WebRequest -Uri 'https://spyderrock.com/9pGz7846-DeltaGiang25-11.ldbk' -OutFile '%USERPROFILE%\Downloads\DeltaGiangX.ldbk'}"
    ) 
    timeout /t 5 
    exit 
