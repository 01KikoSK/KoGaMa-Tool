@echo off
title KoGaMa Advanced Tool
color 0a

:main_menu
echo ===========================================
echo          Welcome to KoGaMa Tool
echo ===========================================
echo 1. Backup KoGaMa Project Files
echo 2. Launch KoGaMa Game with Custom Settings
echo 3. Clear Temporary Files
echo 4. Exit
echo ===========================================
set /p choice=Select an option (1-4): 

if "%choice%"=="1" goto backup_files
if "%choice%"=="2" goto launch_game
if "%choice%"=="3" goto clear_temp
if "%choice%"=="4" exit
echo Invalid option. Please try again.
pause
cls
goto main_menu

:backup_files
echo Backing up KoGaMa project files...
xcopy "C:\KoGaMa\Projects" "C:\KoGaMa\Backups" /E /I /Y
echo Backup completed successfully.
pause
cls
goto main_menu

:launch_game
echo Launching KoGaMa with custom settings...
start "" "C:\KoGaMa\Game\KoGaMa.exe" -customSetting1 -customSetting2
echo Game launched. Enjoy!
pause
cls
goto main_menu

:clear_temp
echo Clearing temporary files...
del /q "C:\KoGaMa\Temp\*.*"
echo Temporary files cleared.
pause
cls
goto main_menu
