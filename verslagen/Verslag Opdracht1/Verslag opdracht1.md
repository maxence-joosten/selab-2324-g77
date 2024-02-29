# Verslag: Opdracht 1 - Packaga Manager & Markdown

> **Naam verslaggever:** Maxence Joosten

## Beschrijving

In deze opdracht leer je een package manager te installeren en te gebruiken om software te installeren en te onderhouden. Je leert ook een script te schrijven om de installatie van software te automatiseren. Tot slot leer je Markdown te gebruiken om een verslag te maken.

Je installeert een package manager, schrijft een script om de in de opdracht vermelde applicaties te installeren, voert het script uit, en vult het script aan met extra applicaties. Je maakt een verslag in Markdown en vult een cheat sheet aan met nuttige commando's.

<strong>Verwachtingen:</strong>

- We zullen een package manager op ons gekozen besturingssysteem installeren.
- We zullen een script schrijven en gebruiken om de in de opdracht vermelde applicaties te installeren.
- Na deze opdracht zullen we de basisprincipes van Markdown beheersen, waardoor we later professionele documenten kunnen opstellen.

<strong>Deze opdracht leert je:</strong>

- Een package manager installeren en gebruiken.
- Software te installeren en te onderhouden met een package manager.
- Een script te schrijven om de installatie van software te automatiseren.
- Markdown te gebruiken om een verslag te maken.

## Windows PowerShell ISE

### Vraag 1 - De PowerShell-prompt toont de map waar we ons nu bevinden. Wat is de naam van deze directory?

`C:\WINDOWS\system32`

### Vraag 2 - In welke map heb je het script bewaard?

`C:\Users\maxen\OneDrive\Documents\School\Semester 2\System Engineering Lab\Opdracht 1`

### Vraag 3 - In welke map is het script bewaard in de screenshot in Figuur 10?

`D:\Users\BertVV\Documents\HoGent\SELab`

## Bijkomende opdrachten

### Een lijst tonen van de software die nu geïnstalleerd is via Chocolatey

```PowerShell
choco list
```

### Alle packages die nu geïnstalleerd zijn bijwerken tot de laatste versie

```PowerShell
choco upgrade all
```

### Via de console een package opzoeken

```PowerShell
choco search [insert package naam hier]
```

### Een geïnstalleerde applicatie verwijderen

```PowerShell
choco uninstall [insert package naam hier]
```

## Evaluatiecriteria

- [ ] Je hebt een package manager voor jouw besturingssysteem geïnstalleerd.
- [ ] Je hebt een script (PowerShell of Bash, afhankelijk van je besturingssysteem) geschreven en gebruikt om de opgesomde applicaties te installeren.
- [ ] Je toont inzicht in de werking van een package manager en kan deze vlot kan gebruiken om basistaken uit te voeren.
- [ ] Je hebt een verslag gemaakt op basis van het template.
- [ ] De cheat sheet werd aangevuld met nuttige commando's die je wenst te onthouden voor later.

## Problemen en oplossingen

### Probleem - Het color fiasco

We ondervonden problemen met het gebruik van het `color`-commando om onze tekst groen te kleuren. De juiste manier om dit aan te passen hebben we uiteindelijk toch gevonden.

#### Oplossing

```PowerShell
Write-Host "Hello World" -ForegroundColor Green -BackgroundColor Black
```

## Voorbereiding demo

Door de sheat-sheet te raadplegen, kunnen we makkelijker tonen wat we voor deze opdracht gedaan hebben.

Om aan te tonen dat we een package manager geïnstalleerd hebben, gaan we het commando `choco -?` uitvoeren. Zo kunnen we bewijzen dat we Chocolatey geïnstalleerd hebben (dit is voor Windows). Om te tonen dat we wat weten over hoe deze package manager werkt, kunnen we enkele soorten software installeren door bijvoorbeeld `choco install -y git` te executen.

Vervolgens kunnen we het script die we geschreven hebben tonen. Dit script installeerd enkele softwarepakketten met mooie visuals. Om naar het script te gaan gebruiken we `cd [path naar script]`, en om het vervolgens uit te voeren typen we de naam van het script.

## Reflecties

Wij vonden dit een heel leerzame opdracht. Het leren werken met Markdown was zeer interesant en zinvol, omdat dit als informatici een must is om te kunnen gebruiken. Het was ook zeer interessant om een script te maken.

In het vervolg zouden we de samenwerking wat anders aanpakken. We hebben nu de opdracht allemaal appart gemaakt, omdat we niet echt goed wisten hoe we deze opdracht zouden moeten aangepakt hebben. Dit samenwerken is zeker een werkpuntje voor in de toekomst

## Bronnen

- _Chocolatey Community_. https://community.chocolatey.org
- _Markdown Guide_. https://www.markdownguide.org/
- _Google Gemini_. https://gemini.google.com/app
