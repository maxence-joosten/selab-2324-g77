> Student: Mauro Maratta

# Opdracht 1
## Basiscommando's

| Command                          | Task                                        |
| :------------------------------- | :------------------------------------------ |
| `ip a`                           | Bekijk IP-adressen van alle netwerkadapters |
| `systemctl status SERVICE`       | Bekijk de status van een service            |
| `sudo systemctl start SERVICE`   | Start een service                           |
| `sudo systemctl stop SERVICE`    | Stop een service                            |
| `sudo systemctl restart SERVICE` | Herstart een service                        |

## Git workflow
Simpele git workflow voor projecten met een enkele branch en zonder contributors.

| Command                   | Task                                                               |
| :------------------------ | :----------------------------------------------------------------- |
| `git push`                | Push lokale wijzigingen naar de remote repository                  |
| `git pull`                | Haal alle wijzigingen van de remote repository binnen in de lokale |
| `git status`              | Status van het huidige project                                     |
| `git add FILE...`         | Selecteer te committen bestanden                                   |
| `git commit -m 'MESSAGE'` | Commit alle wijzigingen naar de lokale repository                  |
## Checklist netwerkconfiguratie

1. Is het IP-adres correct? `ip a`
2. Is de router/default gateway correct? `ip r -n`
3. Is een DNS-server ingesteld? `cat /etc/resolv.conf`

## Chocolaty commando's
Gemakkelijke commando's om om programma's te instaleren via Chocolaty

| **Commando**                   | **Task**                                                                |
| ------------------------------ | ----------------------------------------------------------------------- |
| choco list                     | Een lijst tonen van de software die nu geïnstalleerd is via Chocolatey  |
| choco upgrade all<br>          | Alle packages die nu geïnstalleerd zijn bijwerken tot de laatste versie |
| choco search zoekterm          | Via de console een package opzoeken                                     |
| choco uninstall <package_naam> | Een geïnstalleerde applicatie verwijderen                               |

## PowerShell
Enkele vlugge weetjes om een startende PowerShell script te maken 

| Keywords                                                             | Info                             |
| -------------------------------------------------------------------- | -------------------------------- |
| Set-ExecutionPolicy Bypass -Scope Process                            | Geef het script meer rechten     |
| Write-host                                                           | Geen een zin weer in de terminal |
| Write-host -background-color red -foreground-color green "text here" | // geef een beetje kleur weer    |

## Basics bij set-up
Enkele basis commando's en taken bij het opzetten van een (vm) server

| Task                                             | Commando                                                                                   |
| ------------------------------------------------ | ------------------------------------------------------------------------------------------ |
| Waar zie je het IP-adres van interface 2?        | System tray > Settings > Network > `enp0s3`                                                |
| Is er communicatie met de server?                | `ping 192.168.56.2`                                                                        |
| Vast IP-adres toekennen                          | instellingen van interface `enp0s3` > IPv4 > (hier vul je dan de settings in vanop de Git) |
| De instellingen van de netwerkkaart(en) bekijken | `ifconfig` of `ip a`                                                                       |
| Nieuwste info van alle pakketten ophalen         | `sudo apt update`                                                                          |
| Update alle pakketten                            | `sudo apt upgrade`                                                                         |
| VM uitzetten                                     | `sudo poweroff`                                                                            |
| VM restarten                                     | `sudo reboot`                                                                              |
## MySQL Install Cheat-sheet
Enkele basiscommando's bij het installeren van een MySQL server op een Ubuntu systeem

| Task                                                                | Commando                           |
| ------------------------------------------------------------------- | ---------------------------------- |
| Installeren van MySQL                                               | `sudo apt install -y mysql-server` |
| Restarten van de MySQL service                                      | `sudo systemctl restart mysql`     |
| Controlleren van status (van de mysql server)                       | `systemctl status mysql`           |
| Checken welke poorten gebruikt worden (lokaal)                      | `sudo ss -tlnp`                    |
| Config file editen om de waarde van **blind-address** aan te passen | `sudo nano mysqld.cnf`             |

## Debuggen en troubleshooting

| Task                                                                                                                                               | Commando                                                                                                                                |
| -------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------- |
| <ul><li>Tonen op welke TCP poorten en IP-adressen geluisterd worden</li><li>Tonen welke bestanden het process open heeft (bv. error log)</li></ul> | `sudo lsof -p [PID]` (Het PID vind je in `systemctl status mysql`)                                                                      |
| Systeemlogs bekijken                                                                                                                               | `journalctl`                                                                                                                            |
| Controlleren van status (van de mysql server)                                                                                                      | `systemctl status mysql`                                                                                                                |
| Controleren of poort 3306 beschrikbaar is                                                                                                          | <ul><li>`nc localhost 3306`</li><li>`telnet localhost 3306`</li><li>`wget localhost:3306`</li><li>`telnet 192.168.56.20 3306`</li></ul> |

## Configuratie van de databank


| Task                                          | Commando                                                                            |
| --------------------------------------------- | ----------------------------------------------------------------------------------- |
| Openen van MySQL console                      | `sudo mysql`                                                                        |
| Rootgebruiker een wachtwoord toekennen        | `alter user 'root'@'localhost' identified with mysql_native_password by 'letmein';` |
| Admingebruiker aanmaken                       | `create user 'admin'@'%' identified by 'letmein';`                                  |
| Alle privileges geven aan deze Admingebruiker | `grant all privileges on *.* to 'admin'@'%' with grant option;`                     |
| Uit de MySQL console gaan                     | `exit;`                                                                             |

## Uitbreiding

| Task                              | Commando                                                |
| --------------------------------- | ------------------------------------------------------- |
| ssh installeren                   | `sudo apt install openssh-server`                       |
| Restarten van de ssh service      | `sudo service ssh restart`                              |
| Controlleren van status (van ssh) | `sudo service ssh status`                               |
| Wachtwoord aanpassen              | System tray > Settings > Users > Password               |
| Automatische log-in activeren     | System tray > Settings > Users > Automatic Login        |
| Schakel de screen lock uit        | System tray > Settings > Power > Screen Blank > `Never` |

## Markdown Cheat-sheet

#### Tekst opmaken

| Task           | Commando       |
| -------------- | -------------- |
| Vetgedrukt     | `**tekst**`    |
| Cursief        | `*tekst*`      |
| Doorstrepen    | `~~tekst~~`    |
| Vet en cursief | `***tekst***`  |
| Onderstrepen   | `<u>tekst</u>` |

#### Code

| Task        | Commando                                |
| ----------- | --------------------------------------- |
| Inline code | `` `code` ``                            |
| Codeblok    | \```[programmeertaal]<br> code <br>\``` |

#### Lijsten

| Task                | Commando                         |
| ------------------- | -------------------------------- |
| Ongesorteerde lijst | `- item 1`<br>`- item 2`         |
| Genummerde lijst    | `1. item 1`<br>`2. item 2`       |
| Checklist           | `- [x] taak 1`<br>`- [ ] taak 2` |

#### Links en afbeeldingen

| Task              | Commando                    |
| ----------------- | --------------------------- |
| Link              | `[tekst](url)`              |
| Automatische link | `<https://www.example.com>` |
| Afbeelding        | `![alt-tekst](url)`         |

#### Tabellen

| Task            | Commando                                                                                                                           |
| --------------- | ---------------------------------------------------------------------------------------------------------------------------------- |
| Tabel maken     | \| Header 1 \| Header 2 \|<br>\| --------- \| --------- \|<br>\| Row 1 Col 1 \| Row 1 Col 2 \|<br>\| Row 2 Col 1 \| Row 2 Col 2 \| |
| Tabel uitlijnen | `:---` voor links, `---:` voor rechts, `:---:` voor gecentreerd                                                                    |


# Opdracht 2


| Commando                         | Task                                                                                                    |
| -------------------------------- | ------------------------------------------------------------------------------------------------------- |
| hostname -I                      | IP adress vinden in de terminal                                                                         |
| sudo apt update                  | Update de OS                                                                                            |
| sudo apt install -y mysql-server | Installeer mysql-server (of andere applicatie)<br>-y is om YES te andwoorden op de eerstvolgende promt. |
| systemctl status mysql           | controleer de status van een service op het systeem                                                     |
| systemctl restart mysql          | restart een service op je systeem                                                                       |
#### Configuratie van de databank
```console
sudo mysql
```

```sql
use mysql;
alter user 'root'@'localhost' identified with mysql_native_password by 'letmein';
```

```sql
create user 'admin'@'%' identified by 'letmein';
grant all privileges on *.* to 'admin'@'%' with grant option;
flush privileges;
exit;
```

```sql
sudo mysql_secure_installation
```

#### VM afsluiten in de CLI
```console
sudo poweroff
```

# Opdracht 3

#### Gebruiker aan een groep toevoegen.
Permissies aanpassen voor een gebruiker in de terminal.
```console
sudo usermod -aG www-data osboxes
```

#### Document Root aan een groep toevoegen
Permissies van de document root toevoegen aan een groep.
```console
sudo chgrp -R www-data /pad/naar/document/root
```

#### Open SSH
Installeer de Open SSH servers zodat je een SSH verbinding kan maken.
```console
sudo apt install openssh-server
```

Je kan verbinden met deze server via `ssh <gebruikersnaam>@<adress>` in de terminal.

#### Webserver beveiligen met SSL
Dit is voor een Apache2 server
```console
sudo a2enmod ssl
sudo a2ensite default-ssl
sudo systemctl reload apache2
```

#### Webserver beveiligen met een firewall
**UWF**

| Commands          | Tasks |
| ----------------- | ----- |
| sudo ufw allow __ |       |
| sudo ufw deny __  |       |
| sudo ufw enable   |       |
| sudo ufw disable  |       |
#### Webserver beveiligen met Fail2Ban


# Opdracht 4
# Opdracht 5
## Installeer Docker
\1. Verwijder alle oude docker files
```
   for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
```
\2. Zet docker repository op
```
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
```
\3. Installeer docker and mogelijke plugins
```
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```
\4. Test Docker
```
sudo docker run hello-world
```

#### Vaultwarden
Installeer een docker container voor Vaultwarden
```
docker pull vaultwarden/server:latest
docker run -d --name vaultwarden -v /vw-data/:/data/ --restart unless-stopped -p 80:80 vaultwarden/server:latest
```

#### Docker commands

| Task                          | Commando                                                                                                                                                                              |
| ----------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Installatie vaultwarden       | <ul><li>`docker pull vaultwarden/server:latest`</li><li>`docker run -d --name vaultwarden -v /vw-data/:/data/ --restart unless-stopped -p 80:80 vaultwarden/server:latest`</li></ul>` |
| Maak Portainer volume aan     | `docker volume create portainer_data`                                                                                                                                                 |
| Starten van container         | `docker run -d`                                                                                                                                                                       |
| Docker compose versie checken | `docker compose version`                                                                                                                                                              |
| Container disablen            | `docker disable <naam van container>`                                                                                                                                                 |
| Container verwijderen         | `docker rm <naam van container>`                                                                                                                                                      |
