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
echo �������������� ��������� ��� �� ��� ������ ��� ������ "THELUXIFER" - ������ ����,������ ������� ������ ���������� � "Synergy";
echo ������ ��� ����� �� GitHub.
echo.
echo ���� �� ������ ������:
echo (bms) Black Mesa + Black Mesa (XEN)
echo.
echo ������ ��� ������ ������� (� �������).
set /p uprun=
for /f "delims=" %%V in ('powershell -command "$env:uprun.ToLower()"') do set "uprun=%%V"
if "%uprun%"=="sourcemods" (
	explorer "%cldir%"
	goto start
)
if "%uprun%"=="bms" goto bms
if "%uprun%"=="update" goto update
echo.
echo ������� �����)
echo.
goto start
:bms
echo ��������� �������� - ���������� RELOAD ��� 4 �����;
	echo ������������ �������,����� � ��!.
	echo ���������,������... �����!;
	RD /S /Q "C:\Program Files (x86)\Steam\steamapps\sourcemods\BMS\scripts"
	cd C:\Program Files (x86)\Steam\steamapps\sourcemods\BMS
	"C:\Users\haker\Desktop\wget.exe" --no-check-certificate "http://185.237.96.243/bms/scripts.7z"
	"C:\Program Files (x86)\Steam\steamapps\sourcemods\7-Zip\7z.exe" x .\scripts.7z
	del .\scripts.7z
	cd C:\Program Files (x86)\Steam\steamapps\sourcemods\BMS\resource
	"C:\Users\haker\Desktop\wget.exe" --no-check-certificate "http://185.237.96.243/bms/resource.7z"
	"C:\Program Files (x86)\Steam\steamapps\sourcemods\7-Zip\7z.exe" x .\resource.7z
	del .\resource.7z
	cd C:\Program Files (x86)\Steam\steamapps\common\Synergy\synergy\custom
	"C:\Users\haker\Desktop\wget.exe" --no-check-certificate "http://185.237.96.243/bms/1817140991.7z"
	"C:\Program Files (x86)\Steam\steamapps\sourcemods\7-Zip\7z.exe" x .\1817140991.7z
	del .\1817140991.7z
	cd C:\Program Files (x86)\Steam\steamapps\sourcemods
	RD /S /Q "C:\Program Files (x86)\Steam\steamapps\sourcemods\7-Zip"
	echo ���������,������ �������);
	goto start
)

