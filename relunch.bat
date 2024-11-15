@echo off 
 
    set urls=https://download1530.mediafire.com/2w4et1942ccgLujEiVqXhtgsiTQfPY_qvk1sjd9-R3AuEIoy3wwJPUbc8vGHeHz8m4Hg7yMdDqt1QZ1dUmfhattyeauxMMuGxB1vrpoTPguGA-zFSDxivwOaD_zTlKhSISOp1Tr9KZl_OTYCPUVsWYRS0eRT2Kox67tvado2q4LW/85l2oihg4n7n0hi/DeltaXLite2645.ldbk 
    call "%USERPROFILE%\Desktop\dow-code\client-code\checklog.bat" "TAI_FILE_LINK-Fri/11/15-09:38" 
    if %errorlevel% equ 0 ( 
       echo done 
    ) else ( 
    call "%USERPROFILE%\Desktop\dow-code\client-code\addlog.bat" "TAI_FILE_LINK-Fri/11/15-09:38" 
    for %%u in (%urls%) do (
         start %%u 
        ) 
    ) 
