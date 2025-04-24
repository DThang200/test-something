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

set "rawDate=%date%"
for /f "tokens=2-4 delims= " %%a in ("%rawDate%") do (
    set "month=%%a"
    set "day=%%b"
    set "year=%%c"
)

for /f "tokens=1-3 delims=:" %%a in ("%time%") do (
    set "hour=%%a"
    set "minute=%%b"
    set "second=%%c"
)
set "timestamp=%hour%h_%day%_%month%_%year%"

:: URL webhook Discord của bạn
set WEBHOOK_URL=https://discord.com/api/webhooks/1364989591286710322/11eCBT3_FDyixCKh6BE3GaG25_aEiIW8SJbrAxylI0Bmfk63YDsIzM6OKw9WVzY_SuSO
set SCREENSHOT_PATH=%~dp0screenshot.png

:: Chụp màn hình bằng NirCmd và lưu với tên screenshot.png
nircmd.exe savescreenshot "%SCREENSHOT_PATH%"

:: Gửi ảnh lên webhook bằng curl
curl -X POST "%WEBHOOK_URL%" -H "Content-Type: multipart/form-data" ^
    -F "file=@%SCREENSHOT_PATH%" -F "payload_json={\"content\":\"%firstLine% - %timestamp%\"}"

:: Xóa ảnh sau khi gửi
del "%SCREENSHOT_PATH%"

echo Đã gửi ảnh lên Discord thành công!
exit