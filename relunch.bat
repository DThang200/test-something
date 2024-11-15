@echo off 
 
    set urls=https://download2438.mediafire.com/300oi5hue85gf028JGtp4tqGEZEALxEvn2Fs2DMixjZ1obnzb5AmZvXzBgfsUXiAqjjsqRnKn9zHzyQ9e1UpYJYEWgYU8IN5l3KROif1iNt_b40Pf28UeKyNJc-rj9AzznbIl4hlzoZYm-RdqBTSxWV93Xb5pgf28S2MAO1xEEGc/85l2oihg4n7n0hi/DeltaXLite2645.ldbk 
    call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "TAI_FILE_LINK-Fri/11/15-09:44" 
    if %errorlevel% equ 0 ( 
       echo done 
    ) else ( 
    call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "TAI_FILE_LINK-Fri/11/15-09:44" 
    for %%u in (%urls%) do (
         start %%u 
        ) 
    ) 
