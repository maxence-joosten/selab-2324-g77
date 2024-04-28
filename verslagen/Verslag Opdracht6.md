

> Naam verslaggever: Xander

## Beschrijving

Voor deze opdracht werd er van ons verwacht dat we elk een eigen kapotte virtuele hard disk gaan troubleshooten wat kort wil zeggen dat we de kennis van vorige 5 opdrachten samenbundellen om fouten in het systeem op te lossen.

## Antwoorden op de vragen in de opdracht



### type 1 

Type 1 had problemen met de default gateway, services die niet actief waren , foutief ingestelde poorten, wordpress en  vaultwarden.


Probleem 1  was gebrek aan een default gateway die niet was ingesteld dit werd opgelost door volgend bash commando.

``` sudo route add default gw 10.0.2.2```

Probleem 2 had te maken met apache2 en OpenSSH die niet active and running was dit werd ontdekt door volgend commando.
``` sudo systemctl <service naam > status```

Om dit op te lossen werd volgend commando uitgevoerd.
``` sudo systemctl enable <service naam> ```

Probleem 3 er kon geen connectie gemaakt worden via ssh vanop host-os naar de vm. dit werd opgelost door volgende commando's.
``` sudo apt-get purge OpenSSH-client
	 sudo apt-get purge OpenSSH-server
	  sudo apt-get install OpenSSH-client
	   sudo apt-get install OpenSSH-server
	  sudo journalctl -t sshd 
```
![[sshViaFillezilla.png]]

Probleem 4 was een foutief ingestelde poort van vaultwarden in het docker-compose.yml file dit was ingesteld op 80:80 maar vaultwarden draait op poort 4123 : 80 
![[Pasted image 20240428194634.png]]
Na aanpassing ziet het er zo uit.
![[Pasted image 20240428195058.png]]
Probleem 5 planka 
![[plakaWerktNiet.png]]

```
## Evaluatiecriteria

Kopieer de evaluatiecriteria uit de opdracht in deze sectie met behulp van een [task list](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax#task-lists). Vink de criteria aan die jullie denken behaald te hebben. Geef een korte toelichting bij elk vakje dat jullie **niet** aangevinkt hebben.

De lijst hieronder is een voorbeeld. Vervang deze met de werkelijke evaluatiecriteria.

- [x] Het verslag is geschreven in Markdown
- [ ] De container draait
  - De container wou niet starten aangezien de Docker image niet gebouwd kon worden. Zie probleem 1 voor meer details.

## Problemen en oplossingen

Beschrijf hieronder eventuele problemen die jullie zijn tegengekomen tijdens het uitvoeren van de opdracht, met een korte beschrijving van wat er mis ging en hoe jullie het hebben opgelost (als het jullie gelukt is om het op te lossen). Als het niet gelukt is om het op te lossen, beschrijf dan hoe ver jullie zijn gekomen en wat jullie tegenhield om verder te gaan. Voeg eventuele foutmeldingen, screenshots, enz. toe.

Als jullie geen problemen zijn tegengekomen, schrijf dan "geen problemen ondervonden".

### Probleem 1 - Korte beschrijving van het probleem

Beschrijf hier het probleem uitgebreid met screenshots, code snippets, enz. en de oplossing die jullie al dan niet hebben gevonden.

## Voorbereiding demo

Beschrijf hier hoe je elk evaluatiecriterium zal demonstreren. Geef ook aan welke bestanden, commando's, enz. je zal gebruiken tijdens de demo.

## Reflecties

Wat was moeilijk? Wat was eenvoudig? Wat hebben jullie geleerd van de opdracht? Wat zouden jullie anders doen als jullie het opnieuw moesten doen?

Als jullie nog andere opmerkingen hebben over de opdracht hebben, voel je vrij om ze te delen.

## Bronnen

Maak een lijst van alle bronnen die jullie hebben gebruikt tijdens het uitvoeren van de opdracht: boeken, handleidingen, HOWTO's, blog posts, enz.
