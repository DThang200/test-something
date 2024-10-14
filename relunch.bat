@echo off
::shutdown /r /t 0
cd "%USERPROFILE%\Desktop\dow-code\test-something\asset"
xcopy "text1.txt" "%USERPROFILE%\Desktop\" /E /I /Y
xcopy "text2.txt" "%USERPROFILE%\Desktop\" /E /I /Y

start cmd /c "%USERPROFILE%\Desktop\dow-code\test-something\asset\test.bat & exit"