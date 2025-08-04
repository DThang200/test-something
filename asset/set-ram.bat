@echo off
setlocal enabledelayedexpansion

:: Ðu?ng d?n t?i ldconsole.exe (s?a n?u b?n cài LDPlayer ? noi khác)
set LDCONSOLE="C:\LDPlayer\LDPlayer9\ldconsole.exe"
set RAM_MB=1536
set MAX_TAB=49

echo -------------------------------
echo Ðóng t?t c? tab LDPlayer...
echo -------------------------------
%LDCONSOLE% quitall
timeout /t 5 >nul

echo -------------------------------
echo Ð?t RAM = %RAM_MB% MB cho 50 tab...
echo -------------------------------
for /l %%i in (0,1,%MAX_TAB%) do (
    echo Tab %%i: set RAM to %RAM_MB% MB
    %LDCONSOLE% modify --index %%i --memory %RAM_MB%
)

echo -------------------------------
echo Hoàn t?t.
