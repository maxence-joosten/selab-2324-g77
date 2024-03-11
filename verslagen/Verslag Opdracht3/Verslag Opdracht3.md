# Verslag: Opdracht 3 - Webserver

> Naam verslaggever: Xander

## Beschrijving

In de vorige opdracht heb je een databaseserver opgezet in een virtuele machine (VM). In deze opdracht gaan we verder met die VM en gaan we deze ook uitrusten met een webserver. Het einddoel is om in een webbrowser op het hostsysteem de website te tonen die draait op je VM.

## Antwoorden op de vragen in de opdracht

### `1` Als je op de VM een website wil publiceren, dan moet je de HTML- en andere bestanden in de zogenaamde **Document Root** zetten. Wat is het pad naar deze map?

```bash
/var/www/html
```

### `1.2`-  Zal de Apache service opstarten (= "enabled") bij booten van de VM? Hoe controleer je dit?

```
sudo systemctl enable apache2.service
```

```
sudo systemctl status apache2.service
```
### `2` Met welke twee commando's kan je controleren of de SSH server draait, en op welke poort?

```
systemctl status ssh
```

```
ss -lntu | grep ssh
```

### `3` Welke netwerkpoort wordt gebruikt voor HTTPS? Met welk commando kan je dit opzoeken?

```
nmap -sT -p 443 <website>
```

Vervang `<website>` door de URL van de website die u wilt controleren. De uitvoer van de `nmap`-scan toont u of poort 443 open is op de website.

```
curl -I https://<website>
```

Vervang `<website>` door de URL van de website die u wilt controleren. De uitvoer van de `curl`-tool toont u de headers van de HTTP-respons. De `Server`-header toont u de software die de website bedient, en de `Port`-header toont u de poort die wordt gebruikt voor de verbinding.

### `4.1` Bepaal welke netwerkpoorten gebruikt worden voor resp. SSH, HTTP, HTTPS en MySQL.

- **SSH:** Standaard poort **22**.
- **HTTP:** Standaard poort **80**.
- **HTTPS:** Standaard poort **443**.
- **MySQL:** Standaard poort **3306**.

### `4.2` Zoek op hoe je via het commando **ufw** de firewall kan activeren en activeer deze.

```
sudo ufw enable
```

### `4.3` Zorg ervoor dat het verkeer op de poorten uit stap 1 door de firewall toegelaten wordt.

```
sudo ufw allow ssh
sudo ufw allow http
sudo ufw allow https
sudo ufw allow mysql
```

### `4.4` Test of alle netwerkdiensten nog bereikbaar zijn vanop je fysieke systeem.

- **SSH:** `ssh gebruiker@server_adres`
- **HTTP:** Open een webbrowser en ga naar `http://server_adres`.
- **HTTPS:** Open een webbrowser en ga naar `https://server_adres`.
- **MySQL:** Maak verbinding met de MySQL-server met de MySQL Workbench.

### `5.1` configuratie van fail2ban

```
sudo nano /etc/fail2ban/jail.conf
```

## `5.2` - Zoek op wat je met de volgende parameters kan bereiken:

## **Fail2ban parameters:**

**1. findtime:**

De `findtime`-parameter bepaalt de periode (in seconden) waarin fail2ban mislukte inlogpogingen detecteert. Als er binnen deze periode `maxretry` mislukte inlogpogingen zijn, wordt het IP-adres van de bron geblokkeerd.

**2. maxretry:**

De `maxretry`-parameter bepaalt het maximale aantal mislukte inlogpogingen dat is toegestaan ​​binnen de `findtime`-periode voordat het IP-adres van de bron wordt geblokkeerd.

**3. bantime:**

De `bantime`-parameter bepaalt de duur (in seconden) van de blokkade voor een IP-adres. Na de `bantime`-periode is verstreken, wordt het IP-adres automatisch gedeblokkeerd.

## Evaluatiecriteria

- [x] Je kan de VM opstarten.
- [x] Je kan met FileZilla (of een gelijkaardige applicatie) bestanden naar de Document Root van de webserver kopiëren.
- [x] De website is te zien in een webbrowser op het fysieke systeem via URL <https://192.168.56.20>.
- [x] Je kan aantonen dat de firewall actief is en dat de juiste poorten toegelaten zijn in de firewall:
  - [x] Je kan aantonen dat je nog steeds kan verbinden via SSH of SFTP.
  - [x] Je kan aantonen dat de MySQL Workbench nog steeds kan verbinden met de VM.
  - [x] Je kan aantonen dat je website nog steeds bereikbaar is.
- [x] Je kan aantonen dat fail2ban actief is.
- [x] Je kan de inhoud van het **jail.local** bestand tonen en toelichten.
- [x] Je kan met de **fail2ban** command line client aantonen dat de **findtime**, **maxretry** en **bantime** juist zijn ingesteld. Je kan deze begrippen toelichten.
- [x] Je kan aantonen dat je via SSH kan inloggen op de VM vanop jouw fysiek toestel en dat fail2ban jouw IP-adres blokkeert als je te veel foutieve inlogpogingen doet.
- [x] Je kan aantonen dat een IP-adres op de whitelist niet wordt geblokkeerd.
- [x] Je hebt een verslag gemaakt op basis van het template.
- [x] De cheat sheet werd aangevuld met nuttige commando's die je wenst te onthouden voor later.

## Problemen en oplossingen

### Probleem 1 - Firewall inschakelen en SQL server doorlaten

> Probleem van Mauro.

Het lukte mij niet direct om te onderzoeken welke poorten er gebruikt werden voor SQL, Robin heeft deze dan gedeelt met de hele groep om het probleem op te lossen. Nadat ik wist wat de oplossing was heb ik het probleem nog eens opnieuw gedaan zodat ik zelf ook de correcte manier eens gevonden had.

## Voorbereiding demo

> PPT NOG TE MAKEN

## Reflecties

### Mauro

Deze opdracht was leuk. We hebben onze VM van vorige week kunnen inzetten als Webserver voor deze week. Hierbij heb ik bijna alles bijgeleerd van de server opzetten zelf, het opzetten van de firewall en het opzetten van fail2ban.

Deze opdracht was ook al meer zelf opzoeken, wat leuker is dan gewoon stappen volgen.

Voor de uitbreiding heb ik ook een viertal extra services op mijn server laten draaien. Deze waren gemakkelijk te instaleren nudat ik weet hoe het moet.

### Maxence

### Thomas

### Robin

### Xander Beusellinck

deze opdracht vond ik persoonlijk aangenamer dan de vorige omdat een server opzetten iets was dat ik altijd zou doen. Maar ik wist niet hoe maar dankzij deze opdracht kan dit nu wel. de opdracht was wel minder begleidend dan de vorige maar dit vind ik niet erg je leert meer uit opzoeken en proberen en bekijken van man-pages.

## Bronnen

https://askubuntu.com/
https://github.com/mej933/ShellScript
https://github.com/learnwithjason/learnwithjason.dev
