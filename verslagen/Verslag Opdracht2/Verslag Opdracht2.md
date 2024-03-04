# Verslag: Opdracht 2 - Een databankserver opzetten in een virtuele machine

> Naam verslaggever: MAURO MARATTA

## Beschrijving

We gaan voor deze opdracht een virtuele machine opzetten in VirutalBox om er een databankserver op te installeren. We gaan deze installeren door hulp van OsBoxes of met de Iso file. We kunnen deze databank (en geleerde info) daarna gebruiken voor het SE-Lab project en toekomstige projecten

## Antwoorden op de vragen in de opdracht

1. #### Controleer welke netwerkpoorten in gebruik zijn en stel vast dat MySQL enkel luistert op de "loopback interface": `sudo ss -tlnp` Waaraan zie je dit?

   De "loopback interface" is een speciale netwerkinterface die altijd naar de lokale server verwijst. Het IP-adres van de loopback interface is altijd 127.0.0.1.

2. #### Zorg ervoor dat MySQL luistert naar alle netwerkinterfaces door het bestand /etc/mysql/mysql.conf.d/mysqld.cnf aan te passen. Zoek in dit bestand naar de regel die het bind-address instelt op 127.0.0.1 en verander dit naar 0.0.0.0. Waarom `0.0.0.0` en niet het ip adres `192.168.56.20`?

   Door bind-address in te stellen op 0.0.0.0, zorg je ervoor dat MySQL op alle IP-adressen van de server bereikbaar is. Dit is handig als je merdere netwerkinterfaces hebt. Als de server meer dan één netwerkinterface heeft zorgt 0.0.0.0 ervoor dat MySQL op alle interfaces bereikbaar is.

3. #### Controleer met `ss -tlnp` of de wijziging effect had. Waaraan zie je dit? Wat is het verschil met de vorige uitvoer van dit commando?

De lokale adressen zijn veranderd.

## Evaluatiecriteria

- [x] De VM start op en je kan inloggen:
  - [x] De VM heeft een host-only adapter en een NAT adapter met de correcte instellingen.
  - [x] Je kan pingen vanop je fysieke systeem naar de host-only adapter van de VM.
  - [x] Je kan aantonen dat MySQL actief is op de VM en luistert op alle interfaces.
- [x] Je kan MySQL Workbench gebruiken om een connectie aan te maken met de databankserver:
  - [x] Je hebt een **werkende** connectie voor de admin-gebruiker
  - [x] Je hebt een **werkende** connectie voor de applicatie-gebruiker
- [x] Je hebt een verslag gemaakt op basis van het template.
- [x] De cheat sheet werd aangevuld met nuttige commando's die je wenst te onthouden voor later.

## Problemen en oplossingen

### `1` NAT adapter

Er waren problemen met het maken van de 2de NAT adapter en om deze te koppelen met de correcte VM. Deze is nog snel opgelost kunnen graken door een beetje te zoeken in de settings. `NAT1 is NAT#2 geworden`

### `2` FileZilla verbinden

We wisten niet direct dat we standaardpoort nr _22_ was. Deze hebben we geprobeerd nadat we over het veld hoveren.

## Voorbereiding demo

We gaan aantonen dat we een virtuele computer hebben gemaakt. Om te bewijzen dat we de netwerk configuratie correct hebben gemaakt gaan we deze virtualBox eens een `ping` geven in PowerShell. Voor de extra opdracht gaan we ook aantonen dat we SSH kunnen gebruiken, dit venster gaan we dan ook voor de rest van de demo gebruiken.

Ook tonen we aan dat we MySQL server hebben geinsteleerd op deze VM. Dit gaan we doen aan de hand van het commando `systemctl status mysql`

_Vermeld ondertussen ook even dat er andere instellingen aangepast zijn, maar meer info daarover later._

Daarna openen we **MySql Workbench** en tonen we aan dat we verbinding hebben met de server. Vergeet niet dat er ook een nieuwe SQL gebruiker aangemaakt is en log dan ook eens in met deze gebruiker.

Al laatste gaan we de uitbreidingen overlopen.

## Reflecties

> Mauro

Deze opdracht was net als de vorige opdracht ook wel leuk, het enige wat ik anders heb gedaan dan de opdracht zelf is een .iso-file van ubuntu.com halen en niet van OS-boxes.
Persoonlijk vind ik dat het instaleren van een iso niet moeilijk is. Het wordt (voor Ubuntu) elke versie gemakkelijker en gemakkelijker en je hebt meer beginnerscontrole over wat je doet.

Het instaleren van de MySql server was wel iets moeilijker, hierbij had ik enkele problemen en moest ik enkele zaken herhalen en opzoeken. Zeker niet het moeilijkste, maar zonder een beetje tijd en moeite had het niet gelukt geweest.

Ook de extra opdrachtjes waren aangenaam, deze waren niet zo heel moeilijk, maar namen wel een beetje tijd in beslag. Zelf vond ik dat het installeren van FileZilla een verplichte opdracht had kunnen zijn, net als een SSH verbinding, omdat je deze altijd kan gebruiken. (zowel op toekomstig werk als op een eigen server)

> Maxence

Ik vond het een super leerzame, en toch ook wel toffe opdracht. Het was soms wel wat sukkelen om de server aan de praat te krijgen (bvb. de NAT adapter bij het aanmaken #1 werd en #2 de oude was, wat niet heel logisch is). Het spelen met ssh om dan uiteindelijk FileZilla aan de praat te krijgen was ook heel tof. Je kan gewoon via je terminal buiten de virtuele machine de VM rebooten en afsluiten! Of zelfs apps installeren! Zeer tof, en handig voor later.

> Thomas

Voor mij liep deze opdracht vrij vlotjes. We hadden in de les Operating Systems al eens een Virtual Box moeten opzetten. Deze was dan ook een Ubuntu operating system. De databank zelf was ook wel interessant. Voor mij was het interessantste nu eenmaal de uitbreiding. Hoe je van je host systeem een connectie legt met een server, in dit geval de MySql-server op de virual box. In het algemeen was deze opdracht interessant en leerrijk.

> Robin

De opdracht zelf was op zich niet al te moeilijk, toch heb ik enkele uren vastgezeten met het aanmaken van de netwerkadapters. Door een serie aan domme fouten kreeg i dus de ethernet interface van enp0s8 maar niet te zien. Uiteindelijk heb ik heel het stappenplan opnieuw gevolgd (incl. een volledige reinstall van ubuntu) en werkte alles. Volgende keer ga ik toch aandachtiger zijn tijdens het overlopen van de opdracht.

> Xander

## Bronnen

- _Github Opdracht_ - https://github.com/HOGENT-SELab/selab-2324-g77/blob/main/opdrachten/2-databankserver.md
- _FileZilla_ - https://filezilla-project.org/
- _Ask Ubuntu_ - https://askubuntu.com/questions/247625/what-is-the-loopback-device-and-how-do-i-use-it
