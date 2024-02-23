
# Verslag: SUBJECT

  

> Naam verslaggever: Xander Beuselinck

  

## Beschrijving

  

De opdracht hield in dat we instalatie van software automatiseren aan de hand van een script en een package-manager.

  

## Antwoorden op de vragen in de opdracht

  

Voeg hieronder de antwoorden op de vragen in de opdracht toe. Gebruik voor elke vraag een aparte sectie.

  

### Vraag 1 - De PowerShell-prompt toont de map waar we ons nu bevinden. Wat is de naam van deze directory?

  

we bevinden ons in `PS C:\WINDOWS\system32 ` dit is de Windows-SSD directory.

  

### Vraag 2 - In welke map heb je het script bewaard?

  

Het Instalatie.ps1 script werd bewaard in de map SELab. de map bevindt zich in huidig pad: `"C:\Users\Xander\OneDrive - Hogeschool Gent\Documents\SELab\Installatie.ps1" `.

  

### Vraag 3 - In welke map is het script bewaard in de screenshot in Figuur 10?

  

Het instalatie.ps1 script werd opgeslaan in SELab map die zich bevindt in het pad: `D:\Users\BertVV\Documents\HoGent\SELab\Installatie.ps1 `

  

### Vraag 4 - Gebruik het commando cd (change directory) om naar de map te gaan waar je je script hebt bewaard.

  

``cd "C:\Users\Xander\OneDrive - Hogeschool Gent\Documents\SELab"`

  

### Vraag 5 - Tik .\Installatie.ps1 en druk ENTER om het script uit te voeren.

  

`.\Installatie.ps1`

  

### Vraag 6 - Verander de kleuren van de uitvoer, bv. groene tekst op zwarte achtergrond. Tip: Gebruik de commandolijst rechts om de juiste syntax te bepalen.

  

`Set-ConsoleForeground -ForeColor green`

  

## Evaluatiecriteria

  

## Problemen en oplossingen

  

Ik had problemen met het aanpassen van de console kleuren, maar dit was snel opgelost met een goede google search , het vinden van sommige commando's om het script bepaalde zaken uit te doen voeren was ook wel een drempel Microsoft heeft zijn eigen syntax en in het begin van opdracht 1 was enkel syntax van linux systemen mij bekend.

  

### Probleem 1 - Korte beschrijving van het probleem

  

Probleem 1 was het aanpassen van kleur ik kwam vaak deze error tegen toen ik dit probeerde.

  

```

 color : The term 'color' is not recognized as the name of a cmdlet, function, script file, or operable program. Check

the spelling of the name, or if a path was included, verify that the path is correct and try again.

At line:1 char:1

+ color a0

+ ~~~~~

    + CategoryInfo          : ObjectNotFound: (color:String) [], CommandNotFoundException

    + FullyQualifiedErrorId : CommandNotFoundException

  

```

  

## Voorbereiding demo

  

Via cmd naar de map navigeren waar Instalatie.ps1 bewaard is.

`cd "C:\Users\Xander\OneDrive - Hogeschool Gent\Documents\SELab `

Vervoglens script uitvoeren.

`.\Installatie.ps1 `

Via de console een lijst tonen met alle geinstaleerde software.

`choco list`

Alle packages bijwerken tot laatste versie.

`choco upgrade -y all`

Via console een package opzoeken.

`choco info `

Als laatste een paket verwijderen.

`choco uninstall `

  

## Reflecties

  

Wat was moeilijk? Wat was eenvoudig? Wat hebben jullie geleerd van de opdracht? Wat zouden jullie anders doen als jullie het opnieuw moesten doen?

Ik vond opdracht 1 niet zo moeilijk werken met chocolatery is redelijk straight forward. Het werken met de ISE van Microsoft was wel minder makkelijk dan deel 1 van de opdracht maar nu heb ik een script die schoolvakken,ontspanning of eender wat kan opstarten zonder enige nood aan klikken op een desktop shortcut en ik zie dat als vooruitgang.

  

Door het maken van deze opdracht ben ik ook voor het eerst in contact gekomen met Markdown, ik vind Markdown persoonlijker makkelijker dan MS Word. En met een cheat sheat van github vind je zeer snel een oplossing voor probleemen van opmaak.

  

Ik zou het samenwerken wat anders aanpakken nu hebben we allemaal de opdracht individueel gemaakt en verstaan we nu wel allemaal wat we gedaan hebben maar dit neemt extra tijd in beslag die we konden besteden aan andere dingen.

  

## Bronnen

  

-   https://community.chocolatey.org/packages/

-   https://learn.microsoft.com/en-us/power-apps/maker/canvas-apps/controls/control-form-detail

-   https://gist.github.com/yunga/99d04694e2466e017c5502d7c828d4f4

-   https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet

  

## cheat sheat

  

| syntax          |           wat doet het? |

| --------------- | ----------------------: |

| choco install   |                 install |

| choco list      |          toont packages |

| choco info      | informatie over package |

| choco uninstall |               uninstall |