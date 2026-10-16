@echo off
setlocal EnableExtensions EnableDelayedExpansion
title SNACK OPS SDK - Unreal Engine 5.3 Launcher
mode con: cols=200 lines=400 >nul 2>&1
goto init


:init
:: ============================================================
:: SNACK OPS SDK LAUNCHER
:: UNREAL ENGINE 5.3
:: ============================================================
set "PROJECT=C:\Snack Ops\5.8\Call-of-Dutie-Snack-Ops\SnackOps_SDK.uproject"
set "PROJECT_DIR=C:\Snack Ops\5.8\Call-of-Dutie-Snack-Ops"

:: ============================================================
:: FIXED UNREAL ENGINE PATH
:: ============================================================

set "UE_EDITOR=C:\Program Files\Epic Games\UE_5.8\Engine\Binaries\Win64\UnrealEditor.exe"
set "UE_VERSION=5.3"

set "LOCAL_BANNER=%~dp0SnackOps_Banner.txt"

goto :SPLASH


:SPLASH
cls
call :HEADER
echo.
echo  Strike any key to continue...
pause >nul
goto :MENU


:MENU
cls
call :HEADER

echo.
echo  [1]  LAUNCH UNREAL EDITOR
echo  [2]  LAUNCH EDITOR + LOGGING
echo  [3]  OPEN PROJECT FOLDER
echo  [4]  OPEN .UPROJECT FILE
echo  [5]  CLEAN PROJECT CACHE
echo  [6]  CLEAN DDC ONLY
echo  [7]  VERIFY PATHS
echo  [0]  EXIT
echo.
echo  ================================================================
echo.

choice /c 12345670 /n /m "  Select an operation: "

if errorlevel 8 goto :EOF
if errorlevel 7 goto :VERIFY
if errorlevel 6 goto :CLEAN_DDC
if errorlevel 5 goto :CLEAN
if errorlevel 4 goto :OPEN_UPROJECT
if errorlevel 3 goto :OPEN_FOLDER
if errorlevel 2 goto :LAUNCH_LOG
if errorlevel 1 goto :LAUNCH

goto :MENU


:HEADER
cls

echo.
echo  ================================================================
echo                     S N A C K   O P S   S D K
echo                 UNREAL ENGINE 5.3 LAUNCHER
echo  ================================================================
echo.
echo                    [ENGINE: UE %UE_VERSION%]
echo.
echo  ================================================================
echo.

if exist "%LOCAL_BANNER%" (
    type "%LOCAL_BANNER%"
) else (
    echo  [!] WARNING: SnackOps_Banner.txt not found at:
    echo      %LOCAL_BANNER%
    echo  [!] Banner will display when the file is in the same
    echo      folder as this launcher.
)

echo.
exit /b


:LAUNCH
cls
call :HEADER

echo.
echo  ================================================================
echo                     LAUNCHING UNREAL ENGINE
echo  ================================================================
echo.
echo  [*] Engine:
echo      UE %UE_VERSION%
echo.
echo  [*] Executable:
echo      %UE_EDITOR%
echo.
echo  [*] Project:
echo      %PROJECT%
echo.

if not exist "%UE_EDITOR%" (
    echo  ================================================================
    echo  [ERROR] UnrealEditor.exe was not found!
    echo.
    echo  Expected location:
    echo      %UE_EDITOR%
    echo  ================================================================
    echo.
    pause
    goto :MENU
)

if not exist "%PROJECT%" (
    echo  ================================================================
    echo  [ERROR] Project file was not found!
    echo.
    echo  Expected location:
    echo      %PROJECT%
    echo  ================================================================
    echo.
    pause
    goto :MENU
)

echo  [OK] Unreal Engine 5.3 found.
echo  [OK] Snack Ops project found.
echo.
echo  [*] Starting Unreal Editor...
echo.

start "" "%UE_EDITOR%" "%PROJECT%"

echo  [OK] Unreal Editor 5.3 launched.
echo.

timeout /t 2 /nobreak >nul
goto :MENU


:LAUNCH_LOG
cls
call :HEADER

echo.
echo  ================================================================
echo                  LAUNCHING UE 5.3 WITH LOGGING
echo  ================================================================
echo.

if not exist "%UE_EDITOR%" (
    echo  [ERROR] UnrealEditor.exe was not found:
    echo          %UE_EDITOR%
    echo.
    pause
    goto :MENU
)

if not exist "%PROJECT%" (
    echo  [ERROR] Project file was not found:
    echo          %PROJECT%
    echo.
    pause
    goto :MENU
)

echo  [*] Starting Unreal Editor with -log...
echo.

start "Snack Ops Unreal Editor 5.3" "%UE_EDITOR%" "%PROJECT%" -log

echo  [OK] Unreal Editor 5.3 + live log launched.
echo.

timeout /t 2 /nobreak >nul
goto :MENU


:OPEN_FOLDER
cls
call :HEADER

echo.
echo  [*] Opening Snack Ops project folder...
echo.
echo      %PROJECT_DIR%
echo.

if not exist "%PROJECT_DIR%" (
    echo  [ERROR] Project directory does not exist.
    echo.
    pause
    goto :MENU
)

start "" explorer.exe "%PROJECT_DIR%"

timeout /t 1 /nobreak >nul
goto :MENU


:OPEN_UPROJECT
cls
call :HEADER

echo.
echo  [*] Opening SnackOps_SDK.uproject...
echo.

if not exist "%PROJECT%" (
    echo  [ERROR] Project file does not exist:
    echo          %PROJECT%
    echo.
    pause
    goto :MENU
)

start "" "%PROJECT%"

timeout /t 1 /nobreak >nul
goto :MENU


:VERIFY
cls
call :HEADER

echo.
echo  ================================================================
echo                        PATH VERIFICATION
echo  ================================================================
echo.

echo  --- UNREAL ENGINE ---
echo.

if exist "%UE_EDITOR%" (
    echo  [OK] Unreal Engine 5.3
    echo.
    echo      %UE_EDITOR%
) else (
    echo  [FAIL] Unreal Engine 5.3 NOT FOUND
    echo.
    echo        %UE_EDITOR%
)

echo.
echo  --- SELECTED ENGINE ---
echo.

echo  Version:
echo      UE %UE_VERSION%

echo.
echo  Executable:
echo      %UE_EDITOR%

echo.
echo  --- PROJECT ---
echo.

if exist "%PROJECT%" (
    echo  [OK] Snack Ops project found
    echo.
    echo      %PROJECT%
) else (
    echo  [FAIL] Snack Ops project NOT FOUND
    echo.
    echo        %PROJECT%
)

echo.
echo  --- PROJECT DIRECTORY ---
echo.

if exist "%PROJECT_DIR%" (
    echo  [OK] Project directory
    echo      %PROJECT_DIR%
) else (
    echo  [FAIL] Project directory not found
)

echo.
echo  --- PROJECT CONTENT ---
echo.

if exist "%PROJECT_DIR%\Content" (
    echo  [OK] Content directory
) else (
    echo  [WARN] Content directory not found
)

echo.
echo  --- CONFIG ---
echo.

if exist "%PROJECT_DIR%\Config" (
    echo  [OK] Config directory
) else (
    echo  [WARN] Config directory not found
)

echo.
echo  --- SOURCE ---
echo.

if exist "%PROJECT_DIR%\Source" (
    echo  [OK] Source directory
) else (
    echo  [INFO] Source directory not found
)

echo.
echo  --- INTERMEDIATE ---
echo.

if exist "%PROJECT_DIR%\Intermediate" (
    echo  [INFO] Intermediate directory exists
) else (
    echo  [INFO] Intermediate directory does not exist
)

echo.
echo  --- SAVED ---
echo.

if exist "%PROJECT_DIR%\Saved" (
    echo  [INFO] Saved directory exists
) else (
    echo  [INFO] Saved directory does not exist
)

echo.
echo  ================================================================
echo.

pause
goto :MENU


:CLEAN_DDC
cls
call :HEADER

echo.
echo  ================================================================
echo                   CLEAN DERIVED DATA CACHE
echo  ================================================================
echo.

echo  This removes project-local DerivedDataCache folders.
echo.
echo  Unreal Engine will automatically rebuild the cache when needed.
echo.
echo  The following locations may be removed:
echo.
echo    - %PROJECT_DIR%\DerivedDataCache
echo    - %PROJECT_DIR%\Saved\DerivedDataCache
echo.

choice /c YN /n /m "  Continue? [Y/N]: "

if errorlevel 2 goto :MENU

echo.
echo  [*] Beginning DDC cleanup...
echo.

if exist "%PROJECT_DIR%\DerivedDataCache" (
    echo  [*] Removing:
    echo      %PROJECT_DIR%\DerivedDataCache
    rmdir /s /q "%PROJECT_DIR%\DerivedDataCache"
    echo  [OK] Removed.
    echo.
)

if exist "%PROJECT_DIR%\Saved\DerivedDataCache" (
    echo  [*] Removing:
    echo      %PROJECT_DIR%\Saved\DerivedDataCache
    rmdir /s /q "%PROJECT_DIR%\Saved\DerivedDataCache"
    echo  [OK] Removed.
    echo.
)

echo  ================================================================
echo  [OK] DDC cleanup complete.
echo  ================================================================
echo.

pause
goto :MENU


:CLEAN
cls
call :HEADER

echo.
echo  ================================================================
echo                  CLEAN PROJECT GENERATED DATA
echo  ================================================================
echo.

echo  WARNING:
echo.
echo  This will delete generated Unreal project data:
echo.
echo      - Intermediate
echo      - Saved
echo      - DerivedDataCache
echo.
echo  The following WILL NOT be touched:
echo.
echo      - Content
echo      - Config
echo      - Source
echo      - Plugins
echo      - .uproject
echo.
echo  ================================================================
echo.

choice /c YN /n /m "  REALLY CLEAN PROJECT? [Y/N]: "

if errorlevel 2 goto :MENU

echo.
echo  [*] Cleaning generated project data...
echo.

if exist "%PROJECT_DIR%\Intermediate" (
    echo  [*] Removing Intermediate...
    rmdir /s /q "%PROJECT_DIR%\Intermediate"
    echo  [OK] Intermediate removed.
    echo.
)

if exist "%PROJECT_DIR%\Saved" (
    echo  [*] Removing Saved...
    rmdir /s /q "%PROJECT_DIR%\Saved"
    echo  [OK] Saved removed.
    echo.
)

if exist "%PROJECT_DIR%\DerivedDataCache" (
    echo  [*] Removing DerivedDataCache...
    rmdir /s /q "%PROJECT_DIR%\DerivedDataCache"
    echo  [OK] DerivedDataCache removed.
    echo.
)

echo  ================================================================
echo  [OK] Project generated data cleaned.
echo  ================================================================
echo.
echo  [NOTE]
echo  The first UE 5.3 launch may take longer while Unreal
echo  regenerates project data and rebuilds caches.
echo.

pause
goto :MENU


:EOF
cls

echo.
echo  ================================================================
echo                  SNACK OPS SDK LAUNCHER CLOSED
echo  ================================================================
echo.
echo                  Unreal Engine Version: 5.3
echo.
echo  ================================================================
echo.

exit /b