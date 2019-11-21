@echo off
title AUTOINSTALLBMS
goto startinit
:startinit
if EXIST "drivers\etc\hosts" cd "%~dp0"
set cldir=%programfiles(x86)%\Steam\steamapps
for /f "skip=2 tokens=1,3* delims== " %%i in ('reg QUERY HKEY_CURRENT_USER\Software\Valve\Steam /f SteamPath /t REG_SZ /v') do (
	set "cldir=%%j%%k"
	goto start
)
:start
echo €‚’“‘’€‚™ˆŠ “‘’€‚ˆ’ ‚‘… ‡€ ‚€‘ ‘Šˆ’ ›‹ ‘‡„€ "THELUXIFER" - ‚›…ˆ ˆƒ“,‘…‚… Š’›… •—…˜œ “‘’€‚ˆ’œ ‚ "Synergy";
echo ‘Šˆ’ ›‹ ‡€‹ˆ’ € GitHub.
echo.
echo ˆƒ› € „€›‰ ŒŒ…’:
echo (bms) Black Mesa + Black Mesa (XEN)
echo.
echo €ˆ˜ˆ —’ •—…˜œ ‚›€’œ (‚ ‘ŠŠ€•).
set /p uprun=
for /f "delims=" %%V in ('powershell -command "$env:uprun.ToLower()"') do set "uprun=%%V"
if "%uprun%"=="sourcemods" (
	explorer "%cldir%"
	goto start
)
if "%uprun%"=="bms" goto bms
if "%uprun%"=="update" goto update
echo.
echo •˜ˆ‰ ‚›)
echo.
goto start
:bms
echo “‘’€‚Š€ Black Mesa + Black Mesa (XEN), ‚‘… ’ ‚…‘ˆ’ [BLACK MESA - 3 GB, BLACK MESA (XEN) - 500 MB];
echo ‘Š€—ˆ‚€ „‹Ÿ €—€‹ BLACK MESA ORIGINAL 2012;
echo ‘ª çª ... †„…Œ‘!;
    cd C:\Program Files (x86)\Steam\steamapps\sourcemods
	echo Ÿ ˆŠ€—“)
	wget.exe --no-check-certificate "http://84.201.134.102/BMS.7z"
	echo ‘Š€—Š€ ˜‹€ “‘…˜, €—ˆ€ €‘€Š‚Š“.
	"C:\Program Files (x86)\Steam\steamapps\sourcemods\7-Zip\7z.exe" x .\BMS.7z
	echo €‘€Š‚Š€ ˜‹€ “‘…˜,Œˆ“‘ €•ˆ‚! WARING !.
	del .\BMS.7z
	echo €•ˆ‚ “„€‹….
	echo ‘Š€—ˆ‚€ 2 ’€ Black Mesa (XEN);
	echo ‘ª çª ... †„…Œ‘!;
	wget.exe --no-check-certificate "http://84.201.134.102/xen.7z"
	echo ‘Š€—Š€ ˜‹€ “‘…˜, €—ˆ€ €‘€Š‚Š“.
	"C:\Program Files (x86)\Steam\steamapps\sourcemods\7-Zip\7z.exe" x .\xen.7z
	echo €‘€Š‚Š€ ˜‹€ “‘…˜,Œˆ“‘ €•ˆ‚! WARING !.
	del .\xen.7z
	echo €•ˆ‚ “„€‹….
	echo “‘’€€‚‹ˆ‚€ ‘Šˆ’›,”ˆŠ‘› ˆ ’„!.
	echo “‘’€‚Š€,‘Š€—Š€... †„…Œ‘!;
	RD /S /Q "C:\Program Files (x86)\Steam\steamapps\sourcemods\BMS\scripts"
	cd C:\Program Files (x86)\Steam\steamapps\sourcemods\BMS
	wget.exe --no-check-certificate "http://84.201.134.102/scripts.7z"
	"C:\Program Files (x86)\Steam\steamapps\sourcemods\7-Zip\7z.exe" x .\scripts.7z
	del .\scripts.7z
	cd C:\Program Files (x86)\Steam\steamapps\sourcemods\BMS\resource
	wget.exe --no-check-certificate "http://84.201.134.102/resource.7z"
	"C:\Program Files (x86)\Steam\steamapps\sourcemods\7-Zip\7z.exe" x .\resource.7z
	del .\resource.7z
	cd C:\Program Files (x86)\Steam\steamapps\common\Synergy\synergy\custom
	wget.exe --no-check-certificate "http://84.201.134.102/1817140991.7z"
	"C:\Program Files (x86)\Steam\steamapps\sourcemods\7-Zip\7z.exe" x .\1817140991.7z
	del .\1817140991.7z
	cd C:\Program Files (x86)\Steam\steamapps\sourcemods
	RD /S /Q "C:\Program Files (x86)\Steam\steamapps\sourcemods\7-Zip"
	echo “‘’€‚Š€,˜‹€ “‘…˜);
	goto start
)

