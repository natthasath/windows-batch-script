@echo off

setlocal

set "PORT=80"

REM Find the PID of the process using the specified port
for /f "tokens=5" %%a in ('netstat -aon ^| findstr /R "\<%PORT%\>"') do (
    set "PID=%%a"
)

if not defined PID (
    echo No process found using port %PORT%.
    exit /b 1
)

REM Terminate the process
taskkill /F /PID %PID%

if %errorlevel% equ 0 (
    echo Process with PID %PID% using port %PORT% terminated successfully.
) else (
    echo Failed to terminate process with PID %PID%.
    exit /b 1
)

endlocal
