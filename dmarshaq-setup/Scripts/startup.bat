@echo off
cd /d "%ProgramFiles%\glzr.io\GlazeWM"
start glazewm.exe

:: cd /d "C:\Program Files (x86)\Steam\steamapps\common\wallpaper_engine"
:: start wallpaper64.exe

cd %USERPROFILE%
start "" "%ProgramFiles%\Alacritty\alacritty.exe"

exit
