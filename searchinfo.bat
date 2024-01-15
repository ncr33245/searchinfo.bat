@echo off
:menu
cls
echo Information Choice Batch Script
echo -----------------------------

echo 1. System Information
echo 2. Disk Space
echo 3. Network Information
echo 4. Exit

set /p "choice=Enter your choice (1-4): "

if "%choice%"=="1" (
    call :SystemInformation
) else if "%choice%"=="2" (
    call :DiskSpace
) else if "%choice%"=="3" (
    call :NetworkInformation
) else if "%choice%"=="4" (
    echo Exiting...
    exit /b 0
) else (
    echo Invalid choice. Please enter a number between 1 and 4.
    timeout /nobreak /t 2 >nul
    goto menu
)

:menu
goto :eof

:SystemInformation
cls
echo System Information
echo ------------------

:: Your system information commands here
systeminfo | find "OS Name"
systeminfo | find "OS Version"
wmic cpu get caption
wmic memorychip get capacity
wmic diskdrive get caption, size
ipconfig | find "IPv4 Address"
wmic product get name

pause
goto :menu

:DiskSpace
cls
echo Disk Space Information
echo ----------------------

:: Your disk space information commands here
wmic logicaldisk get caption, size, freespace

pause
goto :menu

:NetworkInformation
cls
echo Network Information
echo -------------------

:: Your network information commands here
ipconfig /all

pause
goto :menu
