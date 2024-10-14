@echo off 
 
    set urls=https://download1478.mediafire.com/tz2fm69g33yg2u43Taov6sv9rV-20n8l4debRiUPjCTG3X7egmSS5PfgSKPgNmLrBLWT9bY08BTXTIJeZDXB5MOdVU8dTd6puYerroaSmnZYGKdr1mjZkcCaw0mGmHQuNZ4ASoAcrHDm8LkzFIhwvrIujRikhaJD5K_Sve9bGZ9KIA/011pkv59ylrgk7i/delta-Test.ldbk 
    call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "TAI_FILE_LINK-15/10/2024-12:15" 
    if %errorlevel% equ 0 ( 
       echo done 
    ) else ( 
    call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "TAI_FILE_LINK-15/10/2024-12:15" 
    for %%u in (%urls%) do (
         start %%u 
        ) 
    ) 
