@echo off
setlocal enableextensions enabledelayedexpansion

cd %USERPROFILE%\Desktop\dow-code\test-something\asset

set "filePath=%USERPROFILE%\Desktop\dow-code\Buoc3-Dat-ten-PC.txt"

set "firstLine="
for /f "usebackq delims=" %%a in ("%filePath%") do (
    set "firstLine=%%a"
    goto :break
)
:break

:: URL webhook Discord của bạn
set WEBHOOK_URL=https://discord.com/api/webhooks/1375382863633186855/s9FgLt3tHCJ6bWUjN5jEf9eZrJA2QDd5xA4eDE9Wh57H6eRbUM8v0RYC9dOfmMcu6HgR
set SCREENSHOT_PATH=%~dp0screenshot.png

:: Chụp màn hình bằng NirCmd và lưu với tên screenshot.png


start "" "C:\Program Files (x86)\UltraViewer\UltraViewer_Desktop.exe"

timeout /t 10 >nul

nircmd.exe win -top ititle "UltraViewer"

nircmd.exe savescreenshot "%SCREENSHOT_PATH%"
:: Gửi ảnh lên webhook bằng curl
curl -X POST "%WEBHOOK_URL%" -H "Content-Type: multipart/form-data" ^
    -F "file=@%SCREENSHOT_PATH%" -F "payload_json={\"content\":\"%firstLine%\"}"

:: Xóa ảnh sau khi gửi
del "%SCREENSHOT_PATH%"

echo Đã gửi ảnh lên Discord thành công!
exit