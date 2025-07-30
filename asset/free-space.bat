@echo off
setlocal

:: URL của webhook Discord
set "webhookUrl=https://discord.com/api/webhooks/1398583514672398336/iQV3fwEJWmuThgxzAYx9cENx4tcS3BgBOKlrLlWvZao-hGpTbISCguNsGd7GG-o8fnCJ"

:: Đường dẫn tới file Buoc3-Dat-ten-PC.txt
set "filePath=%USERPROFILE%\Desktop\dow-code\Buoc3-Dat-ten-PC.txt"

:: Đọc dòng đầu tiên của file
set "firstLine="
for /f "usebackq delims=" %%a in ("%filePath%") do (
    set "firstLine=%%a"
    goto :break
)
:break

powershell -command "Get-PSDrive -PSProvider FileSystem | ForEach-Object { try { Clear-RecycleBin -DriveLetter $_.Name -Force -ErrorAction Stop } catch {} }"

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

set "ldconsole=C:\LDPlayer\LDPlayer9\ldconsole.exe"
set "first_emulator=none"
for /f "tokens=*" %%a in ('"%ldconsole%" list') do (
    set "first_emulator=%%a"
    goto :display_result
)
:display_result

for /f "tokens=2 delims==" %%a in ('wmic cpu get loadpercentage /value') do set cpuLoad=%%a
powershell -Command " [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; $payload = '{\"content\":\"%firstLine% - Storage: %freeSpace% GB - RAM : %UsedRAM%(%TotalRAM%) GB - CPU : %cpuLoad%%% - backup : %first_emulator% \"}'; Invoke-RestMethod -Uri '%webhookUrl%' -Method Post -ContentType 'application/json' -Body $payload "
exit
