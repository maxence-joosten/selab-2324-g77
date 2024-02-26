# Instalation Chocolatey
Write-Host -ForegroundColor Magenta "-- Installing Chocolatey (inf not installed) -----------------------------------" 
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# School Programs
Write-Host -ForegroundColor Magenta "-- Now working on: school-based programs ---------------------------------------"
choco install -y adobereader
choco install -y vlc
choco install -y github-desktop
choco install -y onlyoffice
choco install -y microsoft-teams
choco install -y eclipse
choco install -y vscode
choco install -y visualparadigm-ce
choco install -y virtualbox

## System Engineering Lab
Write-Host -ForegroundColor Magenta "-- Now working on: school-based programs + SE-Lab software ---------------------" 
choco install -y filezilla
choco install -y mysql.workbench

## Web dev
Write-Host -ForegroundColor Magenta "-- Now working on: school-based programs + WebDev software ---------------------" 
choco install -y googlechrome
choco install -y firefox
choco install -y microsoft-edge
choco install -y opera

#my Programs
Write-Host -ForegroundColor Magenta "-- Private programs ------------------------------------------------------------" 

## games
Write-Host -ForegroundColor Magenta "-- Private programs: Media, chat and music -------------------------------------" 
choco install -y steam
choco install -y spotify
choco install -y discord
choco install -y stremio

# updaten programms
Write-Host -ForegroundColor Magenta "-- Updating all the packages to the latest software ----------------------------" 
choco upgrade all -y

Write-Host -ForegroundColor Magenta "-- Packages List ---------------------------------------------------------------" 
choco list
