@echo off
setlocal

:: URL của webhook Discord
set "webhookUrl=https://discord.com/api/webhooks/1356349218574565476/TZDYxbBlLTPJ1Sx-fafa4qbecW0xYAJn22F0O6Yvy5KF8k1jQerLnG4nwgZTSVBDmJrF"

:: Đường dẫn tới file Buoc3-Dat-ten-PC.txt
set "filePath=%USERPROFILE%\Desktop\dow-code\Buoc3-Dat-ten-PC.txt"

:: Đọc dòng đầu tiên của file
set "firstLine="
for /f "usebackq delims=" %%a in ("%filePath%") do (
    set "firstLine=%%a"
    goto :break
)
:break

:: Lấy dung lượng trống của ổ C: bằng PowerShell và làm tròn số
for /f "usebackq tokens=*" %%f in (`powershell -Command "[math]::Round((Get-PSDrive -Name C).Free / 1GB)"`) do (
    set "freeSpace=%%f"
)

:: Chuẩn bị nội dung JSON (escape dấu ngoặc kép bằng \")
set "payload={\"content\":\"%firstLine% - Free space: %freeSpace% GB\"}"

:: Gửi webhook bằng curl
curl -H "Content-Type: application/json" -X POST -d "%payload%" "%webhookUrl%"

exit
