# Verslag: Opdracht 1 - Package manager & markdown

> Naam verslaggever: MAURO MARATTA

## Beschrijving
We gaan in deze opdracht leren hoe we een package manager moeten installeren en gebruiken. Dit doen we zodat al onze software meer gecentraliseerd is en verwachten zo gemakklijker de software te beheren op verschillende computers. Dit zou ons dan ook veel tijd moeten besparen als we andere computers gebruiken om het project verder af te werken.

## Antwoorden op de vragen in de opdracht
### Vraag 1.1 - De PowerShell-prompt toont de map waar we ons nu bevinden. Wat is de naam van deze directory?
System32
### Vraag 1.2 - In welke map heb je het script bewaard?
Ik heb het in mijn `C:\Users\MaMarat\OneDrive - Hogeschool Gent\` opgeslaan.
### Vraag 1.3 - In welke map is het script bewaard in de screenshot in Figuur 10?
`D:\Users\BertVV\Documents\HoGent\SELab\Installatie.ps1`
### Vraag 1.4 - Gebruik het commando **cd** (change directory) om naar de map te gaan waar je je script hebt bewaard.
```bash
C:\windows\system32> cd "C:\Users\MaMarat\OneDrive - Hogeschool Gent"
C:\Users\MaMarat\OneDrive - Hogeschool Gent> 
```
### Vraag 1.5 - Tik `.\Installatie.ps1` en druk ENTER om het script uit te voeren.
```bash
C:\Users\MaMarat\OneDrive - Hogeschool Gent> .\Installatie.ps1
Hello world

C:\Users\MaMarat\OneDrive - Hogeschool Gent> 
```
### Vraag 1.6 - (optioneel) Verander de kleuren van de uitvoer, bv. groene tekst op zwarte achtergrond. Tip: Gebruik de commandolijst rechts om de juiste syntax te bepalen.
```PowerShell
write-host -BackgroundColor green -ForegroundColor Black "Hello world"
```

### Vraag 2.1 - Bijkomende opdracht 

| **Taak**                                                                | **Commando**                   |
| ----------------------------------------------------------------------- | ------------------------------ |
| Een lijst tonen van de software die nu geïnstalleerd is via Chocolatey  | choco list                     |
| Alle packages die nu geïnstalleerd zijn bijwerken tot de laatste versie | choco upgrade all<br>          |
| Via de console een package opzoeken                                     | choco search zoekterm          |
| Een geïnstalleerde applicatie verwijderen                               | choco uninstall <package_naam> |

## Evaluatiecriteria
Toon na afwerken het resultaat aan je begeleider. Elk teamlid moet in staat zijn om het resultaat te demonstreren bij de oplevering van deze opdracht! Criteria voor beoordeling:

- [x] Je hebt een package manager voor jouw besturingssysteem geïnstalleerd.
- [x] Je hebt een script (PowerShell of Bash, afhankelijk van je besturingssysteem) geschreven en gebruikt om de opgesomde applicaties te installeren.
- [x] Je toont inzicht in de werking van een package manager en kan deze vlot kan gebruiken om basistaken uit te voeren.
- [x] Je hebt een verslag gemaakt op basis van het template.
- [x] De cheat sheet werd aangevuld met nuttige commando's die je wenst te onthouden voor later.

## Problemen en oplossingen
Ik heb geen grote problemen ondervonden tijdens het maken van deze opdracht.
Ik heb wel enkele keren informatie opgezocht op `Github: opdrachten: 1-...` om de tip van kleur aanpassen eens te lezen.
## Voorbereiding demo
1. Ik ga via het commando `C:\windows\system32> cd "C:\Users\MaMarat\OneDrive - Hogeschool Gent"` naar de juiste folder gaan en het script uitvoeren met `.\Installatie.ps1 `.
2. Via de console ga ik een lijst tonen met alle geinstalleerde software met het commando `choco list` en dan enkele packages info geven met `choco info`. Ook zal ik alle packages bijwerken tot de laatste versie met `choco upgrade -y all` en onnodige packages verwijderen met `choco uninstall`.
3. Een nieuwe markdownfile maken.

## Reflecties
Het maken van een scriptje was iets nieuws voor mij. Ik wist bevoorbeeld niet dat powershell ISE bestond en zou dit gewoon gemaakt hebben met visual studio code en google als mijn vriend voor alle info te verkrijgen.

Omdat dit de eerste opdracht was zijn er toch wel enkele zaken niet zo goed gegaan. Zo was het niet direct duidelijk hoe we de opdracht eerst moesten aanpakken en hoe we het beste samenwerkte. Dit is nu wel iets beter onder de knie, dus ik vermoed geen verdere problemen.

## Bronnen
- Hogent-SELab. (n.d.). _GitHub - HOGENT-SELab/selab-labs_. GitHub. https://github.com/HOGENT-SELab/selab-labs
- _Packages_. (n.d.). Chocolatey Software. https://community.chocolatey.org/packages

