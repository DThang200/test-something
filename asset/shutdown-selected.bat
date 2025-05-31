@echo off
setlocal enabledelayedexpansion

set "filePath=%USERPROFILE%\Desktop\dow-code\Buoc3-Dat-ten-PC.txt"
set "firstLine="

for /f "usebackq delims=" %%a in ("%filePath%") do (
    set "firstLine=%%a"
    goto :break
)
:break

:: Khai báo mảng
set "vps_list=VPS_38 VPS_42 VPS_72 VPS_73 VPS_74 VPS_75 VPS_76 VPS_77 VPS_78 VPS_80 VPS_81 VPS_84 VPS_85 VPS_88 VPS_89 VPS_91 VPS_93 VPS_94 VPS_95 VPS_96 VPS_97 VPS_123 VPS_124 VPS_133 VPS_137 VPS_140 VPS_171 VPS_172 VPS_173 VPS_176 VPS_216 VPS_241 VPS_242 VPS_245 VPS_82 VPS_83 VPS_92 VPS_34 VPS_41 VPS_66 VPS_71 VPS_249 VPS_35 VPS_141 VPS_142 VPS_99 VPS_132 VPS_156 VPS_32 VPS_30 VPS_146 VPS_136 VPS_138 VPS_144 VPS_151 VPS_135 VPS_149 VPS_36 VPS_147 VPS_148 VPS_150 VPS_139 VPS_145"

:: Kiểm tra xem firstLine có nằm trong mảng không
set "found=false"
for %%v in (%vps_list%) do (
    if /i "!firstLine!"=="%%v" (
        set "found=true"
        goto :shutdown
    )
)

:continue
echo FirstLine "!firstLine!" KHÔNG nằm trong mảng, không shutdown.
goto :eof

:shutdown
cd "C:\LDPlayer\LDPlayer9\"
ldconsole.exe quitall
echo FirstLine "!firstLine!" có trong mảng, sẽ shutdown máy.
shutdown /s /f /t 10
