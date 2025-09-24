@echo off
setlocal EnableExtensions EnableDelayedExpansion
copy /y "%USERPROFILE%\Desktop\dow-code\test-something\asset\leidians.config" "C:\LDPlayer\LDPlayer9\vms\config\"
:: ===== SETTINGS (LDPlayer 9) =====
set "LDROOT=C:\LDPlayer\LDPlayer9"
set "VMBASE=%LDROOT%\vms"
set "CFGDIR=%VMBASE%\config"
set "JSON=%USERPROFILE%\Desktop\decode\data\emulators.json"

:: ===== Stop & delete tabs whose cpuCount is MISSING or == 4; collect indices =====
set "DELIDX="

for %%F in ("%CFGDIR%\leidian*.config") do (
  set "name=%%~nF"          & rem e.g. leidian12
  set "idx=!name:leidian=!" & rem -> 12
  if not "!idx!"=="0" (
    set "cpu="
    for /f "usebackq delims=" %%C in (`
      powershell -NoP -C ^
        "$t=Get-Content -Raw '%%~fF';" ^
        "if($t -match '\"advancedSettings\.cpuCount\"\s*:\s*(\d+)'){ $matches[1] }"
    `) do set "cpu=%%C"

    if not defined cpu (
      call :CloseAndDelete "!idx!"
    ) else (
      if "!cpu!"=="4" call :CloseAndDelete "!idx!"
    )
  )
)

:: ===== Update emulators.json: single-line, UTF-8 without BOM =====
if defined DELIDX (
  powershell -NoP -C ^
    "$p=$env:JSON;" ^
    "$raw = (Test-Path $p) ? (Get-Content -Raw $p) : '[]';" ^
    "if([string]::IsNullOrWhiteSpace($raw)){ $raw='[]' }" ^
    "$data = $raw | ConvertFrom-Json;" ^
    "$rm = ($env:DELIDX -split ',') | ForEach-Object{ [int]($_.Trim()) };" ^
    "$out = $data | Where-Object { $_.emulator_number -notin $rm };" ^
    "$json = if( (Get-Command ConvertTo-Json).Parameters.ContainsKey('Compress') ){" ^
    "          $out | ConvertTo-Json -Depth 5 -Compress" ^
    "        } else {" ^
    "          ($out | ConvertTo-Json -Depth 5) -replace \"`r?`n\",''" ^
    "        };" ^
    "$enc = New-Object System.Text.UTF8Encoding($false);" ^
    "$sw = New-Object System.IO.StreamWriter($p,$false,$enc);" ^
    "$sw.Write($json); $sw.Close()"
)

if defined DELIDX echo Removed tabs: %DELIDX%
exit /b

:CloseAndDelete
setlocal
set "IDX=%~1"
echo Processing index: %IDX%

:: close tab
if exist "%LDROOT%\ldconsole.exe" "%LDROOT%\ldconsole.exe" quit --index %IDX% >nul 2>nul
timeout /t 2 >nul

:: delete VM folder (retry if locked)
set "VMFOLDER=%VMBASE%\leidian%IDX%"
set /a tries=0
:retry_del
rmdir /s /q "%VMFOLDER%" 2>nul
if exist "%VMFOLDER%" (
  if %tries% lss 6 (
    set /a tries+=1
    timeout /t 2 >nul
    goto retry_del
  )
)

:: delete its config file (e.g., C:\LDPlayer\LDPlayer9\vms\config\leidian3.config)
del /f /q "%CFGDIR%\leidian%IDX%.config" >nul 2>nul

if not exist "%VMFOLDER%" (
  echo Deleted index: %IDX%
  if defined DELIDX (endlocal & set "DELIDX=%DELIDX%,%IDX%") else (endlocal & set "DELIDX=%IDX%")
) else (
  echo Failed to delete index: %IDX%
  endlocal
)
exit /b
