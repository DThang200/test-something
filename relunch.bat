@echo off

:: Check file ton tai va copy

set file_path="%USERPROFILE%\Desktop\DEMo\text1.txt"
set source_file=.\asset\text1.txt
set target_directory=%USERPROFILE%\Desktop\DEMo

if exist %file_path% (
    echo File %file_path% da ton tai.
) else (


    :: Echo ra cac bien
    echo Source file: %source_file%
    echo Target directory: %target_directory%

    copy %source_file% %target_directory%

    if %errorlevel% == 0 (
        echo Da sao chep thanh cong.
    ) else (
        echo Da xay ra loi khi sao chep file.
    )
)

pause
