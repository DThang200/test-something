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
) else (   
    call "%%USERPROFILE%%\Desktop\B1-tatLD.bat"
)
exit