# Verslag: Opdracht 4 - Azure Wordpress

> Naam verslaggever: Robin

## Beschrijving

In deze opdracht zal je proeven van de mogelijkheden binnen de Microsoft Azure cloudomgeving. Je zal hiervoor een account maken op Azure, een applicatie- en databankserver opzetten en de WordPress webapplicatie installeren en configureren. Uiteraard zorg je ervoor dat de verbindingen tussen de systemen en met de webapplicatie veilig verlopen.

## Antwoorden op de vragen in de opdracht

### In deze stap maak je een bestand in de map /etc/apache2/sites-available. In de configuratiemap van Apache is er nog een map /etc/apache2/sites-enabled Wat is verschil tussen beide?

Sites enabled zijn de websites die gelaunched worden bij het opstarten van de machine. Sites available zijn de sites die aan staan EN bereikbaar zijn.

## Evaluatiecriteria

- [x] Je kan de aangemaakte machines tonen in de Azure omgeving.
- [x] Het lukt om een SSH-verbinding op te zetten met de applicatieserver.
- [x] Het lukt om aan te melden op MySQL op de databankserver vanaf de applicatieserver.
- [x] Je kan met HTTPS surfen naar jouw WordPress blog.
- [x] Je kan kan aanmelden en het WordPress dashboard tonen.
- [x] Je kan een nieuw bericht posten op jouw WordPress blog.
- [x] Je hebt een verslag gemaakt op basis van het template.
- [x] De cheat sheet werd aangevuld met nuttige commando's die je wenst te onthouden voor later.

## Problemen en oplossingen

### Probleem 1 - De database aanmaken via microsoft azure

Tijdens het aanmaken van de database kregen we een unknown error. Microsoft was dus niet in staat onze database aan te maken. Het probleem werd opgelost door een andere regio te gebruiken dan "West Europe". In mijn geval was dit de regio van centraal Duitsland.

## Voorbereiding demo

Powerpoint te vinden [hier](presentatie/presentatie.md)

## Reflecties

### Mauro

Dit was een lastigere opdracht, vooral omdat we met Microsoft Asure moesten werken. (wat voor heel wat moeilijkheden zorgde)
Het is mij echter wel gelukt om een wordpress site online te zetten, net als een self-hosted instance van Casaos.

Persoonlijk vind ik de stappen die we gekregen hadden niet al te duidelijk, maar met een beetje zoekwerk is het uiteindelijk wel gelukt.
Het onduidelijke was dat er plots gezegt werd dat we de stappen op een site moesten volgen, maar de Github-info liep gewoon door en zorgde zo voor een probeempje.

Ook was het gebruiken van Microsoft Azure niet bepaald gemakkelijk. De site laad traag in, geeft voorrang aan animaties en pop-ups die de werkflow heel de tijd verstoren. Ook is de lay-out van een zelfde pagina verschillende bij verschillende instances. (bv. de statknop die bovenaan links staat, maar voor een andere service aan de rechterkant op dezelfde hoogte.)

### Maxence

Ik vond deze opdracht absoluut niet leuk. Eerst wou Azure niet herkennen dat ik een krediet had, waardoor hij mij telkens naar de 'aanvraag'-pagina stuurde. Uiteindelijk een dag later werkte het eindelijk wel. Het ambetantste van al vond ik dat het hele process gewoon zo traag was. De servers zijn gewoonweg te traag.

### Thomas

Persoonlijk vond ik dit geen toffe opdracht. De microsoft Azure Cloud-computing-service is niet zo gebruiksvriendelijk. Ook met de stappen die we gekregen hebben was het navigeren / instellen een hele beproeving. Toch was het wel intressant hoe we op een andere manier een SQL data base kunnen hosten.

### Robin

Deze opdracht verliep niet zo vlot. De database kon niet worden aangemaakt waardoor ik het hele proces opnieuw moest doen maar met een andere regio. Dit is een probleem dat al gekend was en nog steeds niet opgelost is. Voor de rest van de opdracht was het verloop wel duidelijk op de installatie van wordpress na. Deze installatie was verliep heel vreemd omdat we zowel de tutorial van wordpress zelf moesten volgen, maar tegelijk ook het stappenplan van github. Zelf begrijp ik ook niet waarom de HOGENT niet zijn eigen servers opzet i.p.v. servers te huren bij microsoft aan een hoge prijs.

### Xander Beusellinck

Deze opdracht lukte niet om te voltooien het studenten packet wilde niet vrijkomen voor mij dus wegens deze technische storing was het maken van deze opdracht niet mogelijk voor mij.
wat heb ik gedaan om dit probleem op te lossen? ik heb via verschillende browsers geprobeerd om azure studenten liscencie te verkrijgen maar dit lukte niet, ik heb dan via academic software ook nog maals geprobeerd om dit te ontgrendelen maar dit lukte ook niet. ik heb vervolgens een mail gestuurd naar de vak verantwoordelijke de heer Aelbrecht. Dit resulteerde in een snelle respons waarin bleek dat ik niet de enige ben waarbij dit probleem voorkomt en de enige oplossing was elke dag opnieuw proberen. Het is blijbaar een probleem bij Microsoft Education gedeelte van Azure. Hopelijk lukt het me nog om deze opdracht in te halen als dit probleem opgelost is.

## Bronnen

- _Wordpress installeren_ - https://ubuntu.com/tutorials/install-and-configure-wordpress#1-overview
- _Opdracht github_ - https://github.com/HOGENT-SELab/selab-2324-g77/blob/main/opdrachten/4-azure-wordpress.md
- _Azure dashboard_ - https://portal.azure.com/
- _Azure instellen_ - https://azure.microsoft.com/nl-nl/
