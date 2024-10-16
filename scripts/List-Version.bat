@echo off
setlocal enabledelayedexpansion

REM Check if input path is provided
if "%~1"=="" (
    echo Usage: %0 path_to_projects
    exit /b 1
)

set "INPUT_PATH=%~1"

REM Check if input path exists
if not exist "%INPUT_PATH%" (
    echo The specified path does not exist: %INPUT_PATH%
    exit /b 1
)

REM Initialize markdown table
set "markdown=| Folder | Laravel Version |\n|--------|----------------|\n"

REM Loop through each subfolder in the input path
for /d %%D in ("%INPUT_PATH%\*") do (
    pushd "%%D" >nul 2>&1
    if !errorlevel! equ 0 (
        if exist "artisan" (
            for /f "tokens=*" %%V in ('php artisan --version 2^>nul') do (
                set "version=%%V"
                REM Append the result to the markdown table
                set "markdown=!markdown!| %%~nxD | !version:~10! |\n"
            )
        ) else (
            REM Folder doesn't have Laravel project
            set "markdown=!markdown!| %%~nxD | Not a Laravel project |\n"
        )
        popd >nul
    )
)

REM Display the markdown table
echo %markdown%

endlocal
