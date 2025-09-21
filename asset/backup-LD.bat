timeout /t 20 
@echo off
cd /d "C:\LDPlayer\LDPlayer9\"
ldconsole.exe quitall
timeout /t 10
@echo off
for /l %%i in (1,1,50) do (

	ldconsole.exe remove --index %%i
	echo Iteration %%i
	
   )
timeout /t 10

cd "C:\LDPlayer\LDPlayer9\"

   ldconsole.exe  restore --index 0 --file "%USERPROFILE%\Downloads\2689vip.ldbk"
echo Da backup
timeout /t 20
call "%USERPROFILE%\Desktop\dow-code\test-something\asset\free-space.bat"
timeout /t 60
shutdown /r /t 0