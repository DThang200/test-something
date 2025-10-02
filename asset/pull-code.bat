@echo off
for /f "usebackq tokens=*" %%f in (`powershell -Command "[math]::Round((Get-PSDrive -Name C).Free / 1GB)"`) do (
    set "freeSpace=%%f"
)
if %freeSpace% lss 10 (
	call "%USERPROFILE%\Desktop\dow-code\test-something\asset\clear-ld.vbs"
) else (
	echo Dung luong van on.
)
set "REPO_URL=https://github.com/DThang200/test-something.git"
set "TARGET_DIR=%USERPROFILE%\Desktop\dow-code\test-something"

:: Kiem tra xem thu muc da ton tai hay chua
if not exist "%TARGET_DIR%" (
    echo Thu muc khong ton tai, dang clone repository...
    cd "%TARGET_DIR%"
    git clone "%REPO_URL%"
) else (
    echo Thu muc da ton tai, dang pull code...
    cd "%TARGET_DIR%"
    git pull
)

start cmd /c "%TARGET_DIR%\relunch.bat & exit"
call "%USERPROFILE%\Desktop\dow-code\test-something\asset\check-tab.bat"