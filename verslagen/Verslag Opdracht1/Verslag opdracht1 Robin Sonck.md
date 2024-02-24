# Verslag: SUBJECT

> Naam verslaggever: Robin Sonck

## Beschrijving

Leren werken met chocolatey (een package manager) en windows powershell. Ook een introductie aan markdown.

## Antwoorden op de vragen in de opdracht

### Vraag 1 - De PowerShell-prompt toont de map waar we ons nu bevinden. Wat is de naam van deze directory?

system32

### Vraag 2 - In welke map heb je het script bewaard?

C:\Users\Robinnn\Desktop

### Vraag 3 - In welke map is het script bewaard in de screenshot in Figuur 10?

D:\Users\BertVV\Documents\HoGent\SELab

### Bijkomende opdrachten

### Vraag 1 - Een lijst tonen van de software die nu geïnstalleerd is via Chocolatey

choco list

### Vraag 2 - Alle packages die nu geïnstalleerd zijn bijwerken tot de laatste versie	

choco upgrade all -y

### Vraag 3 - Via de console een package opzoeken	

choco find (name)

### Vraag 4 - Een geïnstalleerde applicatie verwijderen	

choco uninstall (name)

## Evaluatiecriteria

- [X] Je hebt een package manager voor jouw besturingssysteem geïnstalleerd.
- [X]  Je hebt een script (PowerShell of Bash, afhankelijk van je besturingssysteem) geschreven en gebruikt om de opgesomde applicaties te installeren.
- [X]  Je toont inzicht in de werking van een package manager en kan deze vlot kan gebruiken om basistaken uit te voeren.
- [X]  Je hebt een verslag gemaakt op basis van het template.
- [X]  De cheat sheet werd aangevuld met nuttige commando's die je wenst te onthouden voor later.

## Problemen en oplossingen

Ik heb in het verleden al eens chocolatey gebruikt (weet zelf niet meer waarom) en moest dus eerst de oude files verwijderen voor ik chocolatey kon installeren.

## Voorbereiding demo

installatie script uitvoeren:
C:\Users\Robinnn\Desktop\installatie.ps1

## Reflecties

Wat was moeilijk? Wat was eenvoudig? Wat hebben jullie geleerd van de opdracht? Wat zouden jullie anders doen als jullie het opnieuw moesten doen?

Ik heb de opdracht wat onderschat. Volgende keer ga ik eerst de hele opdracht doornemen voor ik deze maak, op deze manier weet ik duidelijker wat er verwacht wordt.

## Bronnen

https://adamrushuk.github.io/cheatsheets/chocolatey/
https://docs.chocolatey.org/en-us/choco/commands/list
https://chocolatey.org/install