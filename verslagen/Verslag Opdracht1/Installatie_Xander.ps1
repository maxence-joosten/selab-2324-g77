#Instalation Chocolatey
Write-Host "=== Start Script Choco ==="-ForegroundColor DarkRed
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

#School Programs
Write-Host "=== School Programs ==="-ForegroundColor DarkRed
choco install -y adobereader
choco install -y vlc
choco install -y github-desktop
choco install -y onlyoffice
choco install -y microsoft-teams

##Cybersecurity related 
Write-Host "=== cybersecurity ==="-ForegroundColor DarkRed
choco install -y nmap
choco install -y wireshark
choco install -y protonvpn

##IDE && Code Editors
Write-Host "=== IDE && Code Editors ==="-ForegroundColor DarkRed
choco install -y eclipse
choco install -y vscode
choco install -y visualparadigm-ce

##System Engineering Lab programs

Write-Host "=== Software System Engineering Lab ==="-ForegroundColor DarkRed
choco install -y virtualbox
choco install -y filezilla
choco install -y mysql.workbench

##web dev related item's

Write-Host "=== Browsers Web Dev ==="-ForegroundColor DarkRed
choco install -y googlechrome
choco install -y firefox
choco install -y microsoft-edge
choco install -y opera

#my Programs
Write-Host "=== instalation algemene application's ==="-ForegroundColor DarkRed

##games
Write-Host "=== Game's && Relax ==="-ForegroundColor DarkRed
choco install -y steam
choco install -y spotify
choco install -y discord
choco install -y stremio

#updaten programms
Write-Host "=== Upadaten ==="-ForegroundColor DarkRed
choco upgrade all -y

Write-Host "=== Lijst met geinstaleerde paketten ===" -foregroundColor DarkRed
choco list
