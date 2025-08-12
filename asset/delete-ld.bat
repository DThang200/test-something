timeout /t 3
@echo off;

cd "C:\LDPlayer\LDPlayer9\"
set LDCONSOLE="C:\LDPlayer\LDPlayer9\ldconsole.exe"
%LDCONSOLE% quitall
timeout /t 30 >nul

timeout /t 5
@echo off
for /l %%i in (1,1,50) do (

	ldconsole.exe remove --index %%i
	echo Iteration %%i
	
   )
timeout /t 20
shutdown /r /t 0
