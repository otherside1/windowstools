@echo off
cls

echo ==============================
echo System Repair and App Update, 
echo ==============================
echo.

echo Before running this script, please make sure that you have saved any open documents and closed any programs that you are currently using.
echo.
echo The script will first check your file system for errors and repair any issues it finds. This process may take some time, depending on the size and condition of your system.
echo.
echo Next, the script will check for and install any available updates for the apps on your system. This may also take some time, depending on the number and size of the updates available.
echo.
echo.
echo Finally, the script will remove any temporary and junk files from your system. This will free up space on your hard drive and improve the overall performance of your system.
echo.
echo Are you ready to run this script?
echo.
echo [Y] Yes
echo [N] No
echo.
choice /C YN /M "Please select an option:"
if errorlevel 2 goto end
echo Starting system repairs and app updates
echo.
sfc /scannow 
dism /online /cleanup-image /restorehealth
sfc /scannow 
chkdsk 
cleanmgr

del /f /s /q %temp%\*
rd /s /q %temp%


echo updating all apps
winget upgrade
echo you should upgrade the apps above 
pause 
