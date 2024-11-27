@echo off 
 
    set urls=https://spyderrock.com/bYrH0490-ADDeltaCuongVM281124.ldbk 
    call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "TAI_FILE_BACKUP-Thu/11/28-02:15" 
    if %errorlevel% equ 0 ( 
       echo done 
    ) else ( 
    call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "TAI_FILE_BACKUP-Thu/11/28-02:15" 
    powershell -NoProfile -ExecutionPolicy Bypass -Command "& {Invoke-WebRequest -Uri 'https://spyderrock.com/bYrH0490-ADDeltaCuongVM281124.ldbk' -OutFile '%USERPROFILE%\Downloads\ADDeltaCuongVM281124.ldbk'}"
    ) 
    timeout /t 5 
    exit 
