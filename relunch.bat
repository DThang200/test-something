@echo off

call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "%~1"
if %errorlevel% equ 0 (
     shutdown /r /f /t 0
) else (
    call "%USERPROFILE%\Desktop\dow-code\client-code\addLog.bat" "%~1"
)
