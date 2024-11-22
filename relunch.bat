@echo off 
 
    set urls=https://download1339.mediafire.com/w5sub39666mgD_Dgdz57GZTSfOTeSMZDtywHnPf2DuwbePdNBtyTan_kccwgM8Q_bUl2kKyC1_2ciyjakwos64hZtPycytYof8huf7NjECUZrLTsriTV5Tk1mQr5Jd2ZoxQO40loxzVC8kOAfjh8wzjOQQo_OUDr80t40mhHH4M8/o6k70nkjrbuwrbl/DeltaGiangX.ldbk 
    call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "TAI_FILE_BACKUP-Sat/11/23-05:18" 
    if %errorlevel% equ 0 ( 
       echo done 
    ) else ( 
    call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "TAI_FILE_BACKUP-Sat/11/23-05:18" 
    powershell -NoProfile -ExecutionPolicy Bypass -Command "& {Invoke-WebRequest -Uri 'https://download1339.mediafire.com/w5sub39666mgD_Dgdz57GZTSfOTeSMZDtywHnPf2DuwbePdNBtyTan_kccwgM8Q_bUl2kKyC1_2ciyjakwos64hZtPycytYof8huf7NjECUZrLTsriTV5Tk1mQr5Jd2ZoxQO40loxzVC8kOAfjh8wzjOQQo_OUDr80t40mhHH4M8/o6k70nkjrbuwrbl/DeltaGiangX.ldbk' -OutFile '%USERPROFILE%\Downloads\DeltaGiangX.ldbk'}"
    ) 
    timeout /t 5 
    exit 
