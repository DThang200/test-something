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
set "VSP_list=VSP_38 VSP_42 VSP_72 VSP_73 VSP_74 VSP_75 VSP_76 VSP_77 VSP_78 VSP_80 VSP_81 VSP_84 VSP_85 VSP_88 VSP_89 VSP_91 VSP_93 VSP_94 VSP_95 VSP_96 VSP_97 VSP_123 VSP_124 VSP_133 VSP_137 VSP_140 VSP_171 VSP_172 VSP_173 VSP_176 VSP_216 VSP_241 VSP_242 VSP_245 VSP_82 VSP_83 VSP_92 VSP_34 VSP_41 VSP_66 VSP_71 VSP_249 VSP_35 VSP_141 VSP_142 VSP_99 VSP_132 VSP_156 VSP_32 VSP_30 VSP_146 VSP_136 VSP_138 VSP_144 VSP_151 VSP_135 VSP_149 VSP_36 VSP_147 VSP_148 VSP_150 VSP_139 VSP_145"

:: Kiểm tra xem firstLine có nằm trong mảng không
set "found=false"
for %%v in (%VSP_list%) do (
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
