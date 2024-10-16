@echo off
setlocal enabledelayedexpansion

:: Check if root_dir parameter is passed, if not prompt the user for it
if "%~1"=="" (
    set /p root_dir=Please enter the root directory (e.g., E:\www\demo): 
) else (
    set root_dir=%~1
)

:: Check if the directory exists
if not exist "%root_dir%" (
    echo The directory "%root_dir%" does not exist.
    pause
    exit /b 1
)

:: Change to the root directory
cd /d %root_dir%

:: Loop through each subdirectory in the root directory
for /d %%D in (*) do (
    echo Updating Composer in directory %%D
    cd /d %root_dir%\%%D
    composer update
    echo.
)

echo All projects have been updated.
pause
