@echo off
for /f "tokens=1-3 delims=:" %%a in ("%time%") do (
    set current_hour=%%a
    set current_min=%%b
)

set current_hour=%current_hour: =%
set current_min=%current_min: =%
echo %current_hour% %current_min%
if "%current_hour%"=="0" if "%current_min%" LEQ "2" rmdir /s /q "%USERPROFILE%\Desktop\dow-code\test-something" >nul 2>&1
:: Dat duong dan toi thu muc
set "REPO_URL=https://github.com/DThang200/test-something.git"
set "TARGET_DIR=%USERPROFILE%\Desktop\dow-code\test-something"

:: Kiem tra xem thu muc da ton tai hay chua
if not exist "%TARGET_DIR%" (
    echo Thu muc khong ton tai, dang clone repository...
    cd "%TARGET_DIR%"
    git clone -c http.sslVerify=false "%REPO_URL%"
) else (
    echo Thu muc da ton tai, dang pull code...
    cd "%TARGET_DIR%"
    git reset --hard
    git clean -fd
    git pull
)

start cmd /c "%TARGET_DIR%\relunch.bat & exit"
