@echo off

call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "TESTCONFLCT-21/10/2024"
if %errorlevel% equ 0 (
echo "Da op thanh cong"
) else (
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "TESTCONFLCT-21/10/2024"
echo "1243asdfas "
)
