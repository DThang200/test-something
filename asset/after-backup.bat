@echo off
@echo off
setlocal EnableDelayedExpansion

set "filePath=%USERPROFILE%\Desktop\dow-code\Buoc3-Dat-ten-PC.txt"
set "firstLine="

:: Lấy dòng đầu tiên
for /f "usebackq delims=" %%a in ("%filePath%") do (
    set "firstLine=%%a"
    goto :break
)
:break
echo !firstLine! | findstr /i "AWP" >nul
if !errorlevel! equ 0 (
    echo Dòng đầu có chứa "AWP"
    taskkill /f /im RobloxPlayerBeta.exe >nul 2>&1
    taskkill /f /im Roblox.exe >nul 2>&1
    taskkill /f /im Windows10Universal.exe >nul 2>&1
    shutdown /r /t 0
) else (
    cd "%%USERPROFILE%%\Desktop\dow-code\test-something\asset"
    call "%%USERPROFILE%%\Desktop\dow-code\test-something\asset\tat-app.vbs"
)
exit