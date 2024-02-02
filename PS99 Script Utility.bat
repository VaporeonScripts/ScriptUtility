��&cls
@echo off
setlocal enabledelayedexpansion

>nul echo Any attempt of selling or trading this script will result in a blacklist from every future projects.
echo dm yokonara_is_returned on discord for any suggestions or if you are encountering any errors in the script.
echo This is the only official version of the script, any other copy of the script has to be considered unsafe.
pause >nul

set "script_stato1=OFF"
set "script_stato3=OFF"
set "script_stato5=OFF"
set "script_stato6=OFF"

:menu
cls
echo.
echo *****************************************************
echo *               YOKONARA SCRIPTS V1.5               *
echo *****************************************************
echo *    Latest Update (02/02/2024)                     *
echo *****************************************************
echo.
echo [1] PS99 Trade Script                [!script_stato1!] (Undetected)
echo.
echo [2] Dupe Checker                     [!script_stato3!] (Undetected)
echo.
echo [3] Force Trade Accept               [!script_stato5!] (Semi-Undetected)
echo.
echo [4] Lag Person                       [!script_stato6!] (Semi-Undetected)
echo.
echo [5] Misc Scripts
echo.
echo [6] Script Help
echo.
echo [7] Executors Tab
echo.
echo [8] Discord Info
echo.
echo [9] Credits
echo.
echo [10] Unlock Roblox FPS Tutorial
echo.
echo [11] Exit
echo *****************************************************
echo.

set /p scelta="Select An Option: "

if "%scelta%"=="1" (
    call :toggle_script_state script_stato1 "PS99 Trade Script"
) else if "%scelta%"=="2" (
    call :toggle_script_state script_stato3 "Dupe Checker"
) else if "%scelta%"=="3" (
    call :toggle_script_state script_stato5 "Force Trade Accept"
) else if "%scelta%"=="4" (
    call :toggle_script_state script_stato6 "Lag Person"
) else if "%scelta%"=="5" (
    call :misc_scripts_menu
) else if "%scelta%"=="6" (
    call :script_help_menu
) else if "%scelta%"=="7" (
    call :executors_menu
) else if "%scelta%"=="8" (
    start "" "https://discord.gg/HM9aCuwhBb"
) else if "%scelta%"=="9" (
    start "" "https://github.com/VaporeonScripts"
    start "" "https://www.tiktok.com/@yokonaraps99"
    start "" "https://www.tiktok.com/@ps99_scripts_yokonara"
) else if "%scelta%"=="10" (
    start "" "https://pastebin.pl/view/raw/7d5752d6"
) else if "%scelta%"=="11" (
    call :confirm_exit
) else (
    echo Invalid choice. Please try again.
    timeout /nobreak /t 2 >nul
    goto menu
)

timeout /nobreak /t 0 >nul
goto menu

:toggle_script_state
echo.
set "script_state=!%1!"
set "option_name=%2"
if "!script_state!"=="ON" (
    echo Turning OFF !option_name!...
    set "%1=OFF"
) else (
    echo Turning ON !option_name!...
    set "%1=ON"
)
timeout /nobreak /t 0 >nul
exit /b

:misc_scripts_menu
:submenu
cls
echo.
echo *****************************************************
echo *                  MISC SCRIPTS                     *
echo *****************************************************
echo.
echo [1] AutoFarm Script
echo [2] Visual Script
echo [3] Fake Trade Scam Gui
echo [4] Back to Main Menu
echo *****************************************************
echo.

set /p misc_choice="Select A Misc Script: "

if "%misc_choice%"=="1" (
    start "" "https://pastebin.pl/view/raw/76c02554"
) else if "%misc_choice%"=="2" (
    start "" "https://pastebin.pl/view/raw/2f27c7f7"
) else if "%misc_choice%"=="3" (
    start "" "https://pastebin.pl/view/raw/9e08ef4e"
) else if "%misc_choice%"=="4" (
    goto menu
) else (
    echo Invalid choice. Please try again.
    timeout /nobreak /t 2 >nul
    goto submenu
)

timeout /nobreak /t 0 >nul
goto submenu

:script_help_menu
:helpmenu
cls
echo.
echo *****************************************************
echo *                 SCRIPT HELP                       *
echo *****************************************************
echo.
echo [1] PS99 Trade Script - Automates trading on PS99.
echo [2] Dupe Checker - Checks for duplicated Pets/Items.
echo [3] Force Trade Accept - Forces player to accept.
echo [4] Lag Person - Simulates lag for the person ur trading.
echo [5] Back to Main Menu
echo *****************************************************
echo.

set /p help_choice="Select A Script for Help: "

if "%help_choice%"=="1" (
    echo.
    echo PS99 Trade Script:
    echo This script automates the trading process on PS99.
    echo.
    echo Make sure to use responsibly and in accordance with the platform's terms of service.
    echo.
    pause
) else if "%help_choice%"=="2" (
    echo.
    echo Dupe Checker:
    echo This script checks for duplicated items in the game.
    echo.
    echo Make sure to use responsibly and in accordance with the platform's terms of service.
    echo.
    pause
) else if "%help_choice%"=="3" (
    echo.
    echo Force Trade Accept:
    echo This script automatically accepts incoming trades.
    echo.
    echo Make sure to use responsibly and in accordance with the platform's terms of service.
    echo.
    pause
) else if "%help_choice%"=="4" (
    echo.
    echo Lag Person:
    echo This script simulates lag for a specific person.
    echo.
    echo Make sure to use responsibly and in accordance with the platform's terms of service.
    echo.
    pause
) else if "%help_choice%"=="5" (
    goto menu
) else (
    echo Invalid choice. Please try again.
    timeout /nobreak /t 2 >nul
    goto helpmenu
)

timeout /nobreak /t 0 >nul
goto helpmenu

:executors_menu
:executorsubmenu
cls
echo.
echo *****************************************************
echo *                 EXECUTORS MENU                    *
echo *****************************************************
echo.
echo [1] Arceus X Neo (3 Steps Key,Best)
echo [2] Codex        (3 Steps Key)
echo [3] Delta        (1 Steps Key)
echo [4] Back to Main Menu
echo *****************************************************
echo.

set /p executor_choice="Select An Executor Option: "

if "%executor_choice%"=="1" (
    start "" "https://spdmteam.com/"
) else if "%executor_choice%"=="2" (
    start "" "https://codex.lol/"
) else if "%executor_choice%"=="3" (
    start "" "https://deltaexploits.net/"
) else if "%executor_choice%"=="4" (
    goto menu
) else (
    echo Invalid choice. Please try again.
    timeout /nobreak /t 2 >nul
    goto executorsubmenu
)

timeout /nobreak /t 0 >nul
goto executorsubmenu

:confirm_exit
echo.
set /p confirm_exit_choice="Are you sure you want to exit? (Y/N): "
if /i "%confirm_exit_choice%"=="Y" (
    exit
) else (
    goto menu
)
