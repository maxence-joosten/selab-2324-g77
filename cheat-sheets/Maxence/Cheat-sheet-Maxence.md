# Cheat sheets

> Student: Maxence

## Opdracht 5: Docker

| Task                          | Commando                                                                                                                                                                              |
| ----------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Installatie vaultwarden       | <ul><li>`docker pull vaultwarden/server:latest`</li><li>`docker run -d --name vaultwarden -v /vw-data/:/data/ --restart unless-stopped -p 80:80 vaultwarden/server:latest`</li></ul>` |
| Maak Portainer volume aan     | `docker volume create portainer_data`                                                                                                                                                 |
| Starten van container         | `docker run -d`                                                                                                                                                                       |
| Docker compose versie checken | `docker compose version`                                                                                                                                                              |
| Container disablen            | `docker disable <naam van container>`                                                                                                                                                 |
| Container verwijderen         | `docker rm <naam van container>`                                                                                                                                                      |

## Opdracht 4: WordPress opzetten in de Microsoft Azure cloudomgeving

| Task                        | Commando                                        |
| --------------------------- | ----------------------------------------------- |
| SSH Verbinding              | `ssh [gebruikersnaam]@[dns-naam]`               |
| Update package repositories | `sudo apt update`                               |
| Update package repositories | `sudo apt upgrade`                              |
| Installatie MySQL client    | `sudo apt install mysql-client`                 |
| Connectie met de databank   | `mysql -h [dns-naam] -u [gebruiker] -p`         |
| Certbot                     | `sudo snap install --classic certbot`           |
| Maak link                   | `sudo ln -s /snap/bin/certbot /usr/bin/certbot` |
| Apache linken met Certbot   | `sudo certbsudo certbot renew --dry-run`        |

## Opdracht 3: Een webserver opzetten in een virtuele omgeving

| Task                                         | Commando                                                                                                       |
| -------------------------------------------- | -------------------------------------------------------------------------------------------------------------- |
| Apache installeren                           | `sudo apt install apache2`                                                                                     |
| Status checken                               | `systemctl status [service]`                                                                                   |
| Gebruiker toevoegen aan groep                | `sudo usermod -aG www-data gebruiker`                                                                          |
| Document Root eigendom van groep maken       | ` sudo chgrp -R www-data /var/www/html/`                                                                       |
| Schrijfrechten geven aan de groep `www-data` | `sudo chmod -R g+w /pad/naar/document/root`                                                                    |
| Beveiligen met SSL                           | <ul><li>`sudo a2enmod ssl`</li><li>`sudo a2enmod defaut-ssl`</li><li>`sudo systemctl reload apache2`</li></ul> |
| Beveiligen met firewall                      | <ul><li>`sudo ufw enable`</li><li>`sudo ufw allow [apache, 80, ...]`</li></ul>                                 |
| fail2ban beveiliging                         | <ul><li>`sudo apt install fail2ban`</li><li>`sudo systemctl enable fail2ban`</li></ul>                         |

## Opdracht 2: Een databankserver opzetten in een virtuele machine

### Basics bij set-up

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

### MySQL Install Cheat-sheet

| Task                                                                | Commando                           |
| ------------------------------------------------------------------- | ---------------------------------- |
| Installeren van MySQL                                               | `sudo apt install -y mysql-server` |
| Restarten van de MySQL service                                      | `sudo systemctl restart mysql`     |
| Controlleren van status (van de mysql server)                       | `systemctl status mysql`           |
| Checken welke poorten gebruikt worden (lokaal)                      | `sudo ss -tlnp`                    |
| Config file editen om de waarde van **blind-address** aan te passen | `sudo nano mysqld.cnf`             |

### Debuggen en troubleshooting

| Task                                                                                                                                               | Commando                                                                                                                                |
| -------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------- |
| <ul><li>Tonen op welke TCP poorten en IP-adressen geluisterd worden</li><li>Tonen welke bestanden het process open heeft (bv. error log)</li></ul> | `sudo lsof -p [PID]` (Het PID vind je in `systemctl status mysql`)                                                                      |
| Systeemlogs bekijken                                                                                                                               | `journalctl`                                                                                                                            |
| Controlleren van status (van de mysql server)                                                                                                      | `systemctl status mysql`                                                                                                                |
| Controleren of poort 3306 beschrikbaar is                                                                                                          | <ul><li>`nc localhost 3306`</li><li>`telnet localhost 3306`</li><li>`wget localhost:3306`</li><li>`telnet 192.168.56.20 3306`</li></ul> |

### Configuratie van de databank

| Task                                          | Commando                                                                            |
| --------------------------------------------- | ----------------------------------------------------------------------------------- |
| Openen van MySQL console                      | `sudo mysql`                                                                        |
| Rootgebruiker een wachtwoord toekennen        | `alter user 'root'@'localhost' identified with mysql_native_password by 'letmein';` |
| Admingebruiker aanmaken                       | `create user 'admin'@'%' identified by 'letmein';`                                  |
| Alle privileges geven aan deze Admingebruiker | `grant all privileges on *.* to 'admin'@'%' with grant option;`                     |
| Uit de MySQL console gaan                     | `exit;`                                                                             |

### Uitbreiding

| Task                              | Commando                                                |
| --------------------------------- | ------------------------------------------------------- |
| ssh installeren                   | `sudo apt install openssh-server`                       |
| Restarten van de ssh service      | `sudo service ssh restart`                              |
| Controlleren van status (van ssh) | `sudo service ssh status`                               |
| Wachtwoord aanpassen              | System tray > Settings > Users > Password               |
| Automatische log-in activeren     | System tray > Settings > Users > Automatic Login        |
| Schakel de screen lock uit        | System tray > Settings > Power > Screen Blank > `Never` |

## Opdracht 1: Package Manager & Markdown

### Chocolatey Cheat-sheet

| Task                                                                    | Commando                                     |
| :---------------------------------------------------------------------- | :------------------------------------------- |
| Een lijst tonen van de software die nu geïnstalleerd is via Chocolatey  | `choco list`                                 |
| Alle packages die nu geïnstalleerd zijn bijwerken tot de laatste versie | `choco upgrade all`                          |
| Via de console een package opzoeken                                     | `choco search [insert package naam hier]`    |
| Een geïnstalleerde applicatie verwijderen                               | `choco uninstall [insert package naam hier]` |
| Scripts enabelen                                                        | `Set-ExecutionPolicy Bypass -Scope Process`  |

### Markdown Cheat-sheet

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
