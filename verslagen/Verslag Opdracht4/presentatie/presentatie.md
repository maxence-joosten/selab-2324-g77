---
marp: true
paginate: true
---

<style>
    p, ul, li {font-size: 20px;}
    a{color:grey; text-decoration:underline;}
    a:hover{color:#eee;}
    section{justify-content:flex-start;}blockquote{
      color: #5865f2;
      border-left: 0.25em solid #5865f2;
   }
</style>

# Opdracht 4 - Azure Wordpress

**Hoofdstukken**:

1. Microsoft Azure
2. MySQL Databankserver
3. Ubuntu Applicatieserver
4. Servers configureren
   1. Overzicht
   2. DNS configureren
   3. Toegeang tot MySQL
5. Wordpress
6. Beveiliging HTTPS
7. Uitschakelen
8. Problemen met Azure
9. Uitbreiding

> Mauro, Maxence, Robin, Thomas , Xander

![bg right:33% brightness:0.75](image.png)

---

<!-- header: 1. Microsoft Azure -->

# Microsoft Azure

- Account aanmaken: `https://azureforeducation.microsoft.com/devtools`
- Dit account is gelinkt met HoGent Email

![contain](Afbeelding1.png)

---

<!-- header: 2. MySQL Databankserver -->

# MySQL databankserver maken

- Via `Een resource maken` en vervolgens bij `Databases` te clicken
- Verkrijgen we `Azure Database for MySQL`
  ![alt text](Afbeelding2.png)

- Vervolgens `Maken` te clicken

---

# MySQL databank configureren

- Abonnement: `Azure voor studenten`
- Maak een nieuwe Resourcegroep aan met de naam `SELabs-Wordpress`
- Servernaam: zelf te kiezen (hou dit bij in de overzichtstabel)
- Locatie: `West Europe`
- Versie: laatste versie (8.0)
- Workloadtype: `Voor ontwikkelings- of hobbyprojecten`

![bg right contain](Afbeelding3.png)

---

# MySQL opslag configureren

- Berekeningslaag: `Met burstmogelijkheden (1-20 vCores): meest geschikt voor workloads waarvoor niet continu de volledige CPU hoeft te worden gebruikt`
- Grootte berekening: `Standaard_B1s (1 vCore, 1 GiB RAM, 400 maximale iops)`
- IOPS: `Vooraf ingerichte IOPS`
- Verder de standaard instellingen laten staan.
- Klik op `Opslaan`

![bg right contain](Afbeelding4.png)

---

# MySQL Verificatie en Netwerk configureren

- Gebruikersnaam en wachtwoord
- Huidige ip toelaten door firewall
  ![alt text](Afbeelding5.png)
  ![alt text](Afbeelding6.png)

---

# MySQL is gemaakt

- Klik vervolgens op `Maken`

![alt text](Afbeelding7.png)

---

<!-- header: 3. Ubuntu Applicatieserver -->

# Ubuntu Applicatieserver

- Weer via `Een resource maken`

![alt text](Afbeelding8.png)

- Dezelfde stappen gelden als MySQL database

---

<!-- header: 4. Server configureren: Overzicht -->

# Overzicht van servereigenschappen

- Navigeer in Rescources naar opgemaakte Databank
- Overzicht van instellingen (aanpassingen mogelijk)

![alt text](Afbeelding9.png)

---

<!-- header: 4. Server configureren: DNS configureren -->

# DNS configureren

- DNS instellen in applicatie server

![alt text](Afbeelding10.png)

- Ter controle: `ssh <gebruikersnaam>@<dns-naam>`

![](Afbeelding11.png)

---

<!-- header: 4. Server configureren: Toegang to MySQL -->

# Applicatie server toegang geven aan MySQL

- Maak een ssh verbinding: `ssh <gebruikersnaam>@<dns-naam>`
- Update de package repositories: `sudo apt update`
- Upgrade de nodige packages: `sudo apt upgrade`
- Installeer de MySQL client: `sudo apt install mysql-client`
- In het databankoverzicht onder `Netwerken` voegen we een publike-ip toe
- Noemen we Applicatieserver en het ip is te vinden in het applicatie overzicht in Azure

![](Afbeelding12.png)

- Maak een connectie met de databank: `mysql -h <dns-naam> -u <gebruiker> -p`

![](Afbeelding13.png)

---

<!-- header: 5. Wordpress -->

# Wordpress

- In de Applicatieserver download je WordPress: `https://ubuntu.com/tutorials/install-and-configure-wordpress#1-overview`

  1.  Instaleer overige depndencies (packages)
      - mysql server is al geinstaleerd
  2.  Install WordPress
  3.  Configureer apache voor WordPress
      - hostname moest niet aangevuld worden
  4.  Configureer de MySQL database
      - Data base bestaat al
      - Alleen nodige data base setup
  5.  Configureer WordPress met de database
  6.  Configureer WordPress

  ![bg vertical right contain](Afbeelding14.png)
  ![bg contain](Afbeelding15.png)
  ![bg contain](Afbeelding16.png)

---

<!-- header: 6. Beveiliging HTTPS -->

# Beveiliging HTTPS

- HTTPS verkrijgen via `https://certbot.eff.org/instructions?ws=apache&os=ubuntufocal`
  1.  SSH verbinding met uw server
      - Hebben we al erder gedaan
  2.  Install snapd
      - Is al geinstallerd
  3.  Install Certbot
      - `sudo snap install --classic certbot`
  4.  Maak een link
      - `sudo ln -s /snap/bin/certbot /usr/bin/certbot`
  5.  Koppel apache met Certbot
      - `sudo certbot --apache`
  6.  Test voor automatische hernieuwing
      - `sudo certbot renew --dry-run`

![](Afbeelding17.png)

---

<!-- header: 7. Uitschakelen -->

# Machines uitschakelen

- De `Stoppen` knop is terug tevinden in je machines overzicht

![](Afbeelding18.png)

---

<!-- header: 8. Problemen met Azure -->

# Problemen met Azure student account

- De melding

(![contain h:300px](image-8.png))

---

# Wat heb ik gedaan

- Mail verstuurd naar vak verantwoordelijke

![contain h:400px](image-9.png)

---

# Het antwoord

- Antwoord op mijn mail

![alt text](image-10.png)

---

<!-- header: 9. Uitbreiding -->

# Uitbreiding `#1`

> SSH key
> `Mauro`

![h:200px](image-3.png)
![right bg contain](image-4.png)

---

# Uitbreiding `#2`

> Ander thema in WordPress
> `Mauro`

![bg contain right:60% vertical](image-1.png)
![bg](image-6.png)

<!-- ![bg](image-5.png) -->

---

# Uitbreiding `#4`

> Andere beveiliging
> `Mauro`

![contain vertical bg right:60%](image-2.png)
![bg h:200px](image-3.png)
![bg](image-7.png)

# Uitbreiding `#6`

> VM in Azure
> `Mauro`
