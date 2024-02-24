#Instalatie Chocolatey
Write-Host "

            __  __ __   ___     __   ___   _       ____  ______    ___  __ __ 
           /  ]|  |  | /   \   /  ] /   \ | |     /    ||      |  /  _]|  |  |
          /  / |  |  ||     | /  / |     || |    |  o  ||      | /  [_ |  |  |
         /  /  |  _  ||  O  |/  /  |  O  || |___ |     ||_|  |_||    _]|  ~  |
        /   \_ |  |  ||     /   \_ |     ||     ||  _  |  |  |  |   [_ |___, |
        \     ||  |  ||     \     ||     ||     ||  |  |  |  |  |     ||     |
         \____||__|__| \___/ \____| \___/ |_____||__|__|  |__|  |_____||____/ 
                                                                              
 
                                                                  
         ____  ____   _____ ______   ____  _      _               
        |    ||    \ / ___/|      | /    || |    | |              
         |  | |  _  (   \_ |      ||  o  || |    | |              
         |  | |  |  |\__  ||_|  |_||     || |___ | |___           
         |  | |  |  |/  \ |  |  |  |  _  ||     ||     |          
         |  | |  |  |\    |  |  |  |  |  ||     ||     |          
        |____||__|__| \___|  |__|  |__|__||_____||_____|          
                                                                  
"-ForegroundColor DarkGreen
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
Write-Host " ✅ | Choco Enabled" -ForegroundColor White

#Installatie programma's
## Essentials 
Write-Host "『Essential Apps』" -ForegroundColor Green
choco install -y opera-gx
Write-Host " ✅ | Installed Opera GX" -ForegroundColor White
choco install -y discord
Write-Host " ✅ | Installed Discord" -ForegroundColor White
choco install -y winrar
Write-Host " ✅ | Installed winrar" -ForegroundColor White
choco install -y notepadplusplus
Write-Host " ✅ | Installed Notepad++" -ForegroundColor White
choco install -y vlc
Write-Host " ✅ | Installed VLC Media Player" -ForegroundColor White
choco install -y spotify
Write-Host " ✅ | Installed Spotify" -ForegroundColor White
choco install -y audacity
Write-Host " ✅ | Installed Audacity" -ForegroundColor White
choco install -y libreoffice
Write-Host " ✅ | Installed LibreOffice" -ForegroundColor White

## IT Related
Write-Host "『IT Apps』"-ForegroundColor Green
choco install -y git
Write-Host " ✅ | Installed Git" -ForegroundColor White
choco install -y vscode
Write-Host " ✅ | Installed Visual Studio Code" -ForegroundColor White
choco install -y obsidian
Write-Host " ✅ | Installed Obsidian" -ForegroundColor White
choco install -y eclipse
Write-Host " ✅ | Installed Eclipse" -ForegroundColor White
choco install -y visualparadigm
Write-Host " ✅ | Installed Visual Paradigm" -ForegroundColor White
choco install -y wireshark
Write-Host " ✅ | Installed WireShark" -ForegroundColor White
choco install -y virtualbox
Write-Host " ✅ | Installed VirtualBox" -ForegroundColor White
choco install -y gitkraken
Write-Host " ✅ | Installed GitKraken" -ForegroundColor White
choco install -y mysql.workbench
Write-Host " ✅ | Installed MySQL Workbench" -ForegroundColor White
choco install -y filezilla
Write-Host " ✅ | Installed: FileZilla" -ForegroundColor White

#Programma's Updaten
Write-Host "『Upadates』"-ForegroundColor Green
choco upgrade all -y

Write-Host "『List of all programms』" -foregroundColor DarkRed
choco list
