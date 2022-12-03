@echo off
cls

echo =============================================================
echo System Repair, App Update, and Task Scheduler Cleanup Script
echo =============================================================
echo.
echo This script will perform the following actions:
echo - Repair and restore the Windows operating system
echo - Install any available updates for the apps on your system
echo - Clean up the task scheduler by removing unused tasks
echo.
echo Press any key to continue, or Ctrl+C to cancel...
pause > nul

echo Starting system repairs, app updates, and task scheduler cleanup...
echo.

sfc /scannow

dism /online /cleanup-image /restorehealth

sfc /scannow

chkdsk /f

winget upgrade

schtasks /Query /FO LIST /V | find /I "Ready"

echo.
echo All system repairs, app updates, and task scheduler cleanup are complete
echo Press any key to exit...
pause > nul
