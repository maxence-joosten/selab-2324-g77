# Verslag: Opdracht 1

> Naam verslaggever: Thomas Lambrecht  

## Beschrijving
In deze opdracht zijn we heel kort in aanmerking gekomen met scripts dit via PoweShell ISE. Het gebruiken van een package manager om download processen te vergemakkelijken was hier ook een onderdeel van. Tot slot het gebruiken van MarkDown, een gevoel crieëren voor de specifieke syntac.

## Vragen
### Vraag 1 Beantwoord nu onderstaande vragen:
1. De PowerShell-prompt toont de map waar we ons nu bevinden. Wat is de naam van deze directory?
    * system32

2. In welke map heb je het script bewaard?
    * downloads
    
1. In welke map is het script bewaard in de screenshot in Figuur 10?
    * SELab
### Vraag 2 Bijkomende opdrachten
1. Een lijst tonen van de software die nu geïnstalleerd is via Chocolatey
    * ```choco list```

2. Alle packages die nu geïnstalleerd zijn bijwerken tot de laatste versie
    * ```choco upgrade all```

3. Via de console een package opzoeken
    * ```choco search <name>```

4. Een geïnstalleerde applicatie verwijderen
    * ```choco uninstall <name>```
    
## Evaluatiecriteria
- [ ] Je hebt een package manager voor jouw besturingssysteem geïnstalleerd.
- [ ] Je hebt een script (PowerShell of Bash, afhankelijk van je besturingssysteem) geschreven en gebruikt om de opgesomde applicaties te installeren.
- [ ] Je toont inzicht in de werking van een package manager en kan deze vlot kan gebruiken om basistaken uit te voeren.
- [ ] Je hebt een verslag gemaakt op basis van het template.
- [ ] De cheat sheet werd aangevuld met nuttige commando's die je wenst te onthouden voor later.

## Problemen en oplossingen
Ik persoonlijk heb geen grote problemen tegengekomen. Het op zoeken van bepaalde commando's was wel hier van orde. Immers is Markdown, Scripts en Chocolatey is voor mij geen gekende taal.

### Bepaalde syntax/ commando's
De kleiner problemen heb ik kunnen oplossen door gebruik te maken van de code die we ter beschiking hebben gekregen en een algemeen cheat sheet te vinden online.

[Markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)
[Chocolatey](https://gist.github.com/yunga/99d04694e2466e017c5502d7c828d4f4)
[Powershell-Color](https://www.tutorialspoint.com/how-to-change-the-color-of-the-powershell-ise-editor-using-command?)

## Voorbereiding demo
### Je hebt een package manager voor jouw besturingssysteem geïnstalleerd.
Men kan via de gegeven commando Chocolatey installeren:
```PowerShell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

Mijn systeem kan geen scripts runnen, om dit te omzeilen moet ik eerst deze commando uitvoeren:
```PowerShell
Set-ExecutionPolicy Bypass -Scope Process
```

### Je hebt een script (PowerShell of Bash, afhankelijk van je besturingssysteem) geschreven en gebruikt om de opgesomde applicaties te installeren.
Het script kan immers getoond worden of gereconstrueerd worden.
Om dan de applicaties te installeren gebruikt men volgende commando:
```PowerShell
choco install -y <packagename>
```

Via de gekregen website is het opzoeken van de opgesomde applicaties gemakkelijk: [Packages](https://community.chocolatey.org/packages/)

### Je toont inzicht in de werking van een package manager en kan deze vlot kan gebruiken om basistaken uit te voeren.
Hier is het installeren, updaten, verwijderen, ... een basistaak. Deze zijn dan respectievelijk:

```PowerShell
choco install -y <packagename>
```

```PowerShell
choco upgrade <all | packagename>
```

```PowerShell
choco uninstall <all | packagename>
```

### Je hebt een verslag gemaakt op basis van het template.
Zoals u kunt waarnemen heb ik de template gebruikt die ter beschikken staat.
Dit is immers makkelijk toepasbaar.

### De cheat sheet werd aangevuld met nuttige commando's die je wenst te onthouden voor later.
Ja, deze werd zo zorgvuldig mogelijk ingevuld.

## Reflecties
Deze opdracht was tof en intrigerend. Het was aangenaam om eens in aanmerking te komen met scripts. Echter was dit het eerste opdracht, dus was er niet veel werk, maar dit mag wel eens.

## Bronnen
- [Markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)
- [Chocolatey](https://gist.github.com/yunga/99d04694e2466e017c5502d7c828d4f4)
- [Packages](https://community.chocolatey.org/packages/)
- [Powershell-Color](https://www.tutorialspoint.com/how-to-change-the-color-of-the-powershell-ise-editor-using-command?)