# Opdracht 5 - Docker

> **Naam verslaggever:** Thomas Lambrecht

## Beschrijving

In deze opdracht willen we jullie uitgebreider kennis laten maken met [Docker](https://www.docker.com/) en [Docker Compose](https://docs.docker.com/compose/). Het doel van deze opdracht is om een dashboard te bouwen waarin je een overzicht krijgt van de containers die je draait, en om een webhosted password manager te bouwen. Beide applicaties zullen we draaien in Docker containers.

## Antwoorden op de vragen in de opdracht

### Vraag 1 - Wat is `${USER}`?

De `${}` is een commando. Met dit wil ik zeggen achtergrond liggend opent hij een ander terminal en executeert deze en geeft de uitkomst als uitvoer. Deze uitvoer wordt dan in de oorspronkelijke terminal geplaatst. De `USER` keywoord geeft terug welke user momenteel is ingelogd.

### Vraag 2 - Welk commando kan je gebruiken om jouw gebruikersnaam te bepalen?

Er bestaat een commando `whoami`.

### Vraag 3 - Welke commando's gebruik je hiervoor?

Aan de hand van de volgende commando's kunnen we vaultwarden installeren:
`docker pull vaultwarden/server:latest`
`docker run -d --name vaultwarden -v /vw-data/:/data/ --restart unless-stopped -p 80:80 vaultwarden/server:latest`

### Vraag 4 - Wat doet het `docker pull` commando?

`docker pull` commando haalt een image op van een bestaande register.

### Vraag 5 - Hoe kan je alle lokale images bekijken?

Via de commando `docker images`

### Vraag 6 - Hoe bekijk je alle lokaal draaiende containers?

De commando `docker ps` kan hiervoor gebruikt worden.

### Vraag 7 - Hoe bekijk je alle lokale containers (inclusief de gestopte containers)?

Voor alle containers op te zoeken gebruiken we de commando: `docker ps -a`.

### Vraag 8 - Waarom heeft Vaultwarden HTTPS nodig?

Voor een heel simpele reden: Beveiliging. Het gebruik van HTTPS is voor de encryptie.

### Vraag 9 - Welke commando's gebruik je om Potainer te installeren?

De volgende commando's kunnen gebruikt worden om Potainer te installeren:

- `docker volume create portainer_data`
- `docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest`

### Vraag 10 - Wat is het verschil tussen een docker volume en een VM-mount-volume?

Bind-mounts koppelen een bestand of map aan uw container vanaf uw hostcomputer, waarnaar u vervolgens kunt verwijzen via het absolute pad. Docker-volumes worden volledig door Docker zelf afgehandeld en zijn daarom onafhankelijk van zowel uw directorystructuur als het besturingssysteem van de hostmachine.

## Evaluatiecriteria

Kopieer de evaluatiecriteria uit de opdracht in deze sectie met behulp van een [task list](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax#task-lists). Vink de criteria aan die jullie denken behaald te hebben. Geef een korte toelichting bij elk vakje dat jullie **niet** aangevinkt hebben.

De lijst hieronder is een voorbeeld. Vervang deze met de werkelijke evaluatiecriteria.

- [ ] De `docker-compose.yml` bestanden zijn te vinden op de GitHub repository van de groep.
- [ ] Je kan alle instructies van Docker en Docker compose uitvoeren zonder `sudo` te gebruiken.
- [ ] Je hebt Docker geïnstalleerd en kan dit aantonen met `docker --version`.
- [ ] Je hebt Docker Compose geïnstalleerd en kan dit aantonen met `docker compose version`.
- [ ] Je kan de command line instructies om een Vaultwarden container op te zetten toelichten.
- [ ] Je kan de command line instructies om een Portainer container op te zetten toelichten.
- [ ] Je kan een Vaultwarden container opzetten via Docker Compose op de command line. Je kan surfen via HTTPS naar en inloggen op deze container op het fysieke systeem (bv. via <https://192.168.56.20>).
  - [ ] Je hebt deze ook gekoppeld aan een web browser client op het fysieke systeem.
- [ ] Je kan een Portainer container opzetten via Docker Compose op de command line. Je kan surfen naar en inloggen op deze container op het fysieke systeem (bv. via <http://192.168.56.20>). Portainer en Vaultwarden worden op het Portainer dashboard weergegeven met als status "Running".
- [ ] Je hebt een verslag gemaakt op basis van het template.
- [ ] De cheat sheet werd aangevuld met nuttige commando's die je wenst te onthouden.

## Problemen en oplossingen

Beschrijf hieronder eventuele problemen die jullie zijn tegengekomen tijdens het uitvoeren van de opdracht, met een korte beschrijving van wat er mis ging en hoe jullie het hebben opgelost (als het jullie gelukt is om het op te lossen). Als het niet gelukt is om het op te lossen, beschrijf dan hoe ver jullie zijn gekomen en wat jullie tegenhield om verder te gaan. Voeg eventuele foutmeldingen, screenshots, enz. toe.

Als jullie geen problemen zijn tegengekomen, schrijf dan "geen problemen ondervonden".

### Probleem 1 - Korte beschrijving van het probleem

Beschrijf hier het probleem uitgebreid met screenshots, code snippets, enz. en de oplossing die jullie al dan niet hebben gevonden.

## Voorbereiding demo

Powerpoint kan je [hier](presentatie/presentatie.md) vinden.

## Reflecties

### Mauro

Deze opdracht was wel leuk. Omdat we op de vorige opdrachten al CasaOS hadden geinstalleerd had ik al wat ervaring met Docker. Het maken, beheren, installeren en verwijderen van docker is altijd goed en en snel gegaan, maar het installeren van het SSL-certificaat is mij niet gelukt. Ik heb de opdracht dan verder gemaakt totaan docker-compose. En ik heb deze docker-compose.yml file dan gebruikt om een server op te starten in de Azure cloud omgeving. Op deze heb ik dan voor Vaultwarden ook een SSL-certificaat kunnen aanmaken.

### Maxence

Ik vond deze opdracht leuk. Zelf heb ik al een beetje ervaring met docker (o.a. een media-server opzetten (Jellyfin)). Ik ondervond niet zo heel veel problemen. Het installeren en opzetten van de docker containers was niet zo moeilijk. Het enigste probleem dat ik echt ondervond was het installeren van het SSL-certificaat. Mauro heeft hiervoor een oplossing gevonde. We hebben namelijk via Azure Vaultwarden geinstalleerd en daarop kan je wel een SSL-certificaat installeren.

### Thomas

Voor mij was deze opdracht echter moeilijk. Ik heb lang zitten sukkelen met de docker-compose. Maar naast het moeilijkheid in het begin, vond ik het wel een interessante opdracht. Persoonlijk vond ik dit moeilijker dan de Azure cloud omgeving.

### Robin

De opdracht over docker was niet zo interessant en liep ook niet al te vlot. Ik had namelijk enkele problemen met te connecten via de webbrowser omdat ik het SSL certificate niet in orde kreeg. Uiteindelijk heb ik dit wel kunnen oplossen. Tijdens de opdracht waren er ook nog enkele kleine struikelblokken die opgelost werden.

### Xander

deze opdracht was geen zo'n groot probleem hier en daar had ik wel problemen met verbinen met de services maar uiteindelijk is deze opdractht gelukt ik had niet zo'n grote problemen met docker te werken omdat we reeds al met docker hebben gewerkt in operating systems.

## Bronnen

- [Docker overview](https://docs.docker.com/get-started/overview/)
- [Docker Compose overview](https://docs.docker.com/compose/)
- [What is Docker in 5 minutes](https://www.youtube.com/watch?v=_dfLOzuIg2o)
- [Learn Docker in 7 Easy Steps](https://www.youtube.com/watch?v=gAkwW2tuIqE)
- [website van Docker](https://docs.docker.com/engine/install/#server)
