@echo off
setlocal

:: URL của webhook Discord
set "webhookUrl=https://discord.com/api/webhooks/1356349218574565476/TZDYxbBlLTPJ1Sx-fafa4qbecW0xYAJn22F0O6Yvy5KF8k1jQerLnG4nwgZTSVBDmJrF"



:: Đường dẫn tới file configs.json
set "configFile=%USERPROFILE%\Desktop\decode\configs.json"

:: Đường dẫn tới file Buoc3-Dat-ten-PC.txt
set "filePath=%USERPROFILE%\Desktop\dow-code\Buoc3-Dat-ten-PC.txt"

:: Đọc dòng đầu tiên của file Buoc3-Dat-ten-PC.txt
set "firstLine="
for /f "usebackq delims=" %%a in ("%filePath%") do (
    set "firstLine=%%a"
    goto :break
)
:break

:: Lấy giá trị device_key từ file configs.json (dùng PowerShell)
for /f "delims=" %%b in ('powershell -command "(Get-Content -Path '%configFile%' | ConvertFrom-Json).device_key"') do (
    set "device_key=%%b"
)

:: Chuẩn bị nội dung JSON (escape dấu ngoặc kép bằng \")
set "payload={\"content\":\"%firstLine% - device_key : %device_key%\"}"

:: Gửi webhook bằng curl
curl -H "Content-Type: application/json" -X POST -d "%payload%" "%webhookUrl%"

exit
