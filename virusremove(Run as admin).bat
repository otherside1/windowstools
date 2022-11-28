winget install Malwarebytes 
sfc /scannow 
dism /online /cleanup-image /restorehealth
sfc /scannow 
chkdsk 