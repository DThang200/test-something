@echo off
setlocal enabledelayedexpansion
set "downloadFolder=%USERPROFILE%\Downloads"

::save file
set "keepFile=CodeXv2663.ldbk"

for %%f in ("%downloadFolder%\*") do (
    if /i not "%%~nxf"=="%keepFile%" (
        del /f /q "%%f"
    )
)

for /d %%d in ("%downloadFolder%\*") do (
    rmdir /s /q "%%d"
)

exit
