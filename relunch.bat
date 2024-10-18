@echo off 
 
call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "TESTOOPS-18/10/2024"
if %errorlevel% equ 0 ( 
echo "Da op thanh cong" 
) else ( 
call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "TESTOOPS-18/10/2024" 
) 
