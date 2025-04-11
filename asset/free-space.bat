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

PowerShell -command "Clear-RecycleBin -Force"
timeout /t 5
:: Lấy dung lượng trống của ổ C: bằng PowerShell và làm tròn số
for /f "usebackq tokens=*" %%f in (`powershell -Command "[math]::Round((Get-PSDrive -Name C).Free / 1GB)"`) do (
    set "freeSpace=%%f"
)

for /f %%A in ('powershell -command "[math]::Ceiling((Get-CimInstance -ClassName Win32_ComputerSystem).TotalPhysicalMemory / 1GB)"') do (
    set TotalRAM=%%A
)
for /f %%A in ('powershell -command "[math]::Ceiling((Get-CimInstance -ClassName Win32_OperatingSystem).FreePhysicalMemory / 1048576)"') do (
    set FreeRAM=%%A
)
set /a UsedRAM=TotalRAM-FreeRAM


for /f "tokens=2 delims==" %%a in ('wmic cpu get loadpercentage /value') do set cpuLoad=%%a


:: Chuẩn bị nội dung JSON (escape dấu ngoặc kép bằng \")
set "payload={\"content\":\"%firstLine% - Storage: %freeSpace% GB - RAM : %UsedRAM%(%TotalRAM%) GB - CPU : %cpuLoad% %% \"}"

:: Gửi webhook bằng curl
curl -H "Content-Type: application/json" -X POST -d "%payload%" "%webhookUrl%"

exit
