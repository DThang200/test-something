@echo off
setlocal EnableDelayedExpansion

:: L?y version Windows
for /f "tokens=2 delims==" %%i in ('"wmic os get version /value"') do (
    set "ver=%%i"
)

:: Lo?i b? kho?ng tr?ng và ký t? ?n n?u có
for /f "delims=" %%v in ("!ver!") do set "ver=%%v"

:: Ánh x? version
set "osver=unknown"
if "%ver%"=="10.0.10240" set "osver=v1507"
if "%ver%"=="10.0.10586" set "osver=v1511"
if "%ver%"=="10.0.14393" set "osver=v1607"
if "%ver%"=="10.0.15063" set "osver=v1703"
if "%ver%"=="10.0.16299" set "osver=v1709"
if "%ver%"=="10.0.17134" set "osver=v1803"
if "%ver%"=="10.0.17763" set "osver=v1809"
if "%ver%"=="10.0.18362" set "osver=v1903"
if "%ver%"=="10.0.18363" set "osver=v1909"
if "%ver%"=="10.0.19041" set "osver=v2004"
if "%ver%"=="10.0.19042" set "osver=v20H2"
if "%ver%"=="10.0.19043" set "osver=v21H1"
if "%ver%"=="10.0.19044" set "osver=v21H2"
if "%ver%"=="10.0.19045" set "osver=v22H2"

:: DEBUG ki?m tra
echo DEBUG: ver = %ver%
echo DEBUG: osver = %osver%

:: Ð?c tên t? file
set "filePath=%USERPROFILE%\Desktop\dow-code\Buoc3-Dat-ten-PC.txt"
set "name="
set "found=0"
for /f "usebackq delims=" %%a in ("%filePath%") do (
    if !found! equ 0 (
        set "name=%%a"
        set "found=1"
    )
)

:: G?i webhook
set "msg=%name% - %osver%"
powershell -Command "[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; Invoke-RestMethod -Uri 'https://discord.com/api/webhooks/1375382863633186855/s9FgLt3tHCJ6bWUjN5jEf9eZrJA2QDd5xA4eDE9Wh57H6eRbUM8v0RYC9dOfmMcu6HgR' -Method POST -Body ('{\"content\":\"%msg%\"}') -ContentType 'application/json'"

endlocal
