@echo off
setlocal

set "TARGET=%~1"

if "%TARGET%"=="" (
    set /p "TARGET=Paste a folder path here, or drag a folder onto this window and press Enter: "
)

set "CHECK=%TARGET%X"
if "%CHECK:~-2,1%"=="\" set "TARGET=%TARGET:~0,-1%"

if "%TARGET%"=="" (
    echo No folder given. Exiting.
    pause
    exit /b 1
)

if not exist "%TARGET%\" (
    echo Folder not found: %TARGET%
    pause
    exit /b 1
)

echo Unblocking PDFs in:
echo   %TARGET%
echo.

powershell -NoProfile -ExecutionPolicy Bypass -Command "Get-ChildItem -LiteralPath '%TARGET%' -Filter *.pdf -Recurse | Unblock-File"

echo.
echo Done. PDFs should now preview in File Explorer.
pause
