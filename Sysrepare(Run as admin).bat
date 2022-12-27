
sfc /scannow 
dism /online /cleanup-image /restorehealth
sfc /scannow 
chkdsk 
cleanmgr

del /f /s /q %temp%\*
rd /s /q %temp%



winget upgrade

