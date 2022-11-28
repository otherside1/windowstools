winget install waterfox
winget install  Notepad++.Notepad++
winget install Google.Chrome
winget install EpicGames.EpicGamesLauncher
winget install Discord.Discord.Canary
cd "C:\Program Files (x86)\Microsoft\Edge\Application\88.0.705.63\Installer"
setup.exe –uninstall –system-level –verbose-logging –force-uninstall
winget upgrade --all
