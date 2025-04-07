@echo off
:: Dat duong dan toi thu muc
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
    git reset --hard
    git clean -fd
    git pull
)

start cmd /c "%TARGET_DIR%\relunch.bat & exit"
