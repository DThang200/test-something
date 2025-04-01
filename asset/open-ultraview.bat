@echo off
:: Mở UltraViewer từ thư mục C:\Program Files (x86)\UltraViewer
start "" "C:\Program Files (x86)\UltraViewer\UltraViewer_Desktop.exe"

timeout /t 10 >nul

cd %USERPROFILE%\Desktop\dow-code\test-something\asset

nircmd.exe win -top ititle "UltraViewer"


:: Thông báo đã mở UltraViewer thành công
echo Đã mở UltraViewer thành công!
exit