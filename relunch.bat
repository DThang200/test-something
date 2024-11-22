@echo off 
 
    set urls=https://download1339.mediafire.com/8yq4d4mnr3cgsHKzTLtr3eLgZV0ZxQZ4-xEsDaplljNfnYpaGQoGIZMN0M2wJFegCn4YGwZlYHtnkwzdY1DeT4q59v8AfU6XewhTKaB95nssyQHhdQY85A4j_zTjBAqDQ8c9mQkeqh-2qg3rWODJD7B6GwXDHSMSPkgEDrYHvPd59w/fwtgt8t74d8hpn5/DeltaGiangX.ldbk 
    call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "TAI_FILE_BACKUP-Sat/11/23-05:10" 
    if %errorlevel% equ 0 ( 
       echo done 
    ) else ( 
    call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "TAI_FILE_BACKUP-Sat/11/23-05:10" 
    powershell -NoProfile -ExecutionPolicy Bypass -Command "& {Invoke-WebRequest -Uri 'https://download1339.mediafire.com/8yq4d4mnr3cgsHKzTLtr3eLgZV0ZxQZ4-xEsDaplljNfnYpaGQoGIZMN0M2wJFegCn4YGwZlYHtnkwzdY1DeT4q59v8AfU6XewhTKaB95nssyQHhdQY85A4j_zTjBAqDQ8c9mQkeqh-2qg3rWODJD7B6GwXDHSMSPkgEDrYHvPd59w/fwtgt8t74d8hpn5/DeltaGiangX.ldbk' -OutFile '%USERPROFILE%\Downloads\DeltaGiangX.ldbk'}"
    ) 
    timeout /t 5 
    exit 
