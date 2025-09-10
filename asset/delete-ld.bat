timeout /t 3
@echo off;

cd "C:\LDPlayer\LDPlayer9\"
set LDCONSOLE="C:\LDPlayer\LDPlayer9\ldconsole.exe"
%LDCONSOLE% quitall
timeout /t 3 >nul

@echo off
setlocal
set "DIR=C:\LDPlayer\LDPlayer9\vms"

if not exist "%DIR%" (
  echo Khong tim thay thu muc: "%DIR%"
  exit /b 1
)

rem Neu dang chay, thu kill cac tien trinh LDP de giai phong file lock (khong bat buoc)
for %%P in (LDPlayer9.exe LdVBoxHeadless.exe LdBoxSVC.exe LdVBoxSVC.exe) do (
  taskkill /f /im %%P >nul 2>&1
)

rem Xoa tat ca folder leidian* tru leidian0
for /d %%D in ("%DIR%\leidian*") do (
  if /I not "%%~nD"=="leidian0" (
    echo Deleting folder: "%%~fD"
    rd /s /q "%%~fD" 2>nul
  )
)

echo Done.

timeout /t 20
shutdown /r /t 0
