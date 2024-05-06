# Verslag: Het opzetten, configureren en testen van een eenvoudig netwerk in Packet Tracer

> Naam verslaggever: Mauro Maratta

## Beschrijving

In deze opdracht zal je een compleet IPv4- en IPv6-netwerk opzetten met PC's, switches en een router in Cisco [Packet Tracer](https://www.netacad.com/courses/packet-tracer).

De instructies in deze opdracht zijn wat bondiger. Je zal beroep moeten doen op de kennis en ervaring die je hebt opgedaan in het OLOD Computer Networks I.

## Antwoorden op de vragen in de opdracht

### Vraag 1 - Vul onderstaande tabel aan. (IPv4)

| **Toestel** | **Interface** | **Subnetnr.** | **IPv4-adres** | **Subnetmask** | **IPv4-adres default gateway** |
| ----------- | ------------- | ------------- | -------------- | -------------- | ------------------------------ |
| PC1         | NIC           | 0             | 152.240.0.2    | 255.255.240.0  | 152.240.15.254                 |
| PC2         | NIC           | 0             | 152.240.0.3    | 255.255.240.0  | 152.240.15.254                 |
| PC3         | NIC           | 1             | 152.240.16.2   | 255.255.240.0  | 152.240.31.254                 |
| PC4         | NIC           | 1             | 152.240.16.3   | 255.255.240.0  | 152.240.31.254                 |
| SW1         | VLAN 1        | 0             | 152.240.0.1    | 255.255.240.0  | 152.240.15.254                 |
| SW2         | VLAN 1        | 1             | 152.240.16.1   | 255.255.240.0  | 152.240.31.254                 |
| R1          | G0/0/0        | 0             | 152.240.15.254 | 255.255.240.0  | n.v.t.                         |
| R1          | G0/0/1        | 1             | 152.240.31.254 | 255.255.240.0  | n.v.t.                         |

### Vraag 2 - Wat is het verschil tussen een LLA en een GUA? Wat is hun functie?

Een LLA (Link-local Address) is **een unieke lokale link (niet internet)** die **niet routeerbaar is** en **automatisch toegewezen** word bij lokale communicatie zoals bv in een thuisnetwerk. Een GUA (Global Unicast Address) is een **uniek** en **routeerbaar** adderes toegewezen door je netwerkbeheerder voor communicatie over het internet.

> TLDR:
>
> - LLA: lokale link communicatie
> - GUA: internet communicatie

### Vraag 3 - Wat is het verschil tussen een LLA en een GUA? Wat is hun functie?

| **Toestel** | **Interface** | **Subnetnr.** | **IPv6-adres** | **Subnetmask** | **IPv6-adres default gateway** |
| ----------- | ------------- | ------------- | -------------- | -------------- | ------------------------------ |
| PC1         | NIC           | 0             |                | /64            | FE80::1                        |
| PC2         | NIC           | 0             |                | /64            | FE80::1                        |
| PC3         | NIC           | 1             |                | /64            | FE80::1                        |
| PC4         | NIC           | 1             |                | /64            | FE80::1                        |
| SW1         | VLAN 1        | 0             |                | /64            | FE80::1                        |
| SW2         | VLAN 1        | 1             |                | /64            | FE80::1                        |
| R1          | G0/0/0        | 0             | FE80::1        | /64            | n.v.t.                         |
| R1          | G0/0/1        | 1             | FE80::1        | /64            | n.v.t.                         |

### Vraag 4 - Hoe toon je de huidige configuratie?

1. `enable`
2. `show startup-config`

### Vraag 5 - Hoe toon je de IOS-versie?

- `show version`

### Vraag 6 - Hoe toon je een overzicht van de interfaces (IPv4 en IPv6)?

1. `show ip interface`
2. `show ipv6 interface`

### Vraag 7 - Waarom heeft Vlan1 2 IPv6-adressen?

Je hebt een link-local adress en een internet communicatie adress (LLA en GUA)

### Vraag 8 - Duid in de volgende tabel aan met `ja` of `nee` of je kan pingen tussen de toestellen:

IPv4:

| **Van/naar** | **PC1** | **PC2** | **SW1** | **R1 (G0/0/0)** | **R2 (G0/0/1)** | **SW2** | **PC3** | **PC4** |
| ------------ | ------- | ------- | ------- | --------------- | --------------- | ------- | ------- | ------- |
| PC1          | n.v.t.  |         |         |                 |                 |         |         |         |
| PC2          |         | n.v.t.  |         |                 |                 |         |         |         |
| SW1          |         |         | n.v.t.  |                 |                 |         |         |         |
| SW2          |         |         |         |                 |                 | n.v.t.  |         |         |
| PC3          |         |         |         |                 |                 |         | n.v.t.  |         |
| PC4          |         |         |         |                 |                 |         |         | n.v.t.  |

IPv6:

| **Van/naar** | **PC1** | **PC2** | **SW1** | **R1 (G0/0/0)** | **R2 (G0/0/1)** | **SW2** | **PC3** | **PC4** |
| ------------ | ------- | ------- | ------- | --------------- | --------------- | ------- | ------- | ------- |
| PC1          | n.v.t.  |         |         |                 |                 |         |         |         |
| PC2          |         | n.v.t.  |         |                 |                 |         |         |         |
| SW1          |         |         | n.v.t.  |                 |                 |         |         |         |
| SW2          |         |         |         |                 |                 | n.v.t.  |         |         |
| PC3          |         |         |         |                 |                 |         | n.v.t.  |         |
| PC4          |         |         |         |                 |                 |         |         | n.v.t.  |

### Vraag 9 - Waarom geeft de eerste ping soms een `Request timed out.` foutmelding terwijl de volgende drie wel lukken?

- Het adderes van het gepingde apparaat staat nog niet in de routingtabel.

### Vraag 10 - Duidt in de volgende tabel aan met `ja` of `nee` of je kan pingen tussen de toestellen:

IPv4:

| **Van/naar** | **PC1** | **PC2** | **SW1** | **R1 (G0/0/0)** | **R2 (G0/0/1)** | **SW2** | **PC3** | **PC4** |
| ------------ | ------- | ------- | ------- | --------------- | --------------- | ------- | ------- | ------- |
| PC1          | n.v.t.  |         |         |                 |                 |         |         |         |
| PC2          |         | n.v.t.  |         |                 |                 |         |         |         |
| SW1          |         |         | n.v.t.  |                 |                 |         |         |         |
| R1           |         |         |         | n.v.t.          | n.v.t.          |         |         |         |
| SW2          |         |         |         |                 |                 | n.v.t.  |         |         |
| PC3          |         |         |         |                 |                 |         | n.v.t.  |         |
| PC4          |         |         |         |                 |                 |         |         | n.v.t.  |

IPv6:

| **Van/naar** | **PC1** | **PC2** | **SW1** | **R1 (G0/0/0)** | **R2 (G0/0/1)** | **SW2** | **PC3** | **PC4** |
| ------------ | ------- | ------- | ------- | --------------- | --------------- | ------- | ------- | ------- |
| PC1          | n.v.t.  |         |         |                 |                 |         |         |         |
| PC2          |         | n.v.t.  |         |                 |                 |         |         |         |
| SW1          |         |         | n.v.t.  |                 |                 |         |         |         |
| R1           |         |         |         | n.v.t.          | n.v.t.          |         |         |         |
| SW2          |         |         |         |                 |                 | n.v.t.  |         |         |
| PC3          |         |         |         |                 |                 |         | n.v.t.  |         |
| PC4          |         |         |         |                 |                 |         |         | n.v.t.  |

### Vraag 11 - Hoe toon je de routeringstabel?

- `show ip route`

### Vraag 12 - Hoeveel routes zijn aangeduid met `C`? Wat betekent dit?

- `NaN` - `Connected route`

### Vraag 13 - Hoeveel routes zijn aangeduid met `L`? Wat betekent dit?

- `NaN` - `Local route`

### Vraag 14 - Hoe kan je de IP-adressen van de interfaces zien (IPv4 en IPv6) en welke interfaces up of down zijn?

- `show ip interface brief`

### Vraag 15 - Hoe kan je de MAC-adressen terugvinden van de interfaces?

- ook met `show ip interface brief`

### Vraag 16 - Een default gateway hoeft niet geconfigureerd te worden op een router. Waarom niet?

- Als je op een lokaal netwerk wilt werken is een default gateway niet verplicht.

### Vraag 17 - Wanneer zou je in de plaats hiervan wel een **default route** configureren?

- Je configureerd een default route als je WEL verbinding wilt maken met het internet.

### Vraag 18 - Waarom schakelen we telnet uit?

- Het is een onveilige en oude manier om verbinding te maken, er is geen incriptie.

### Vraaf 19 - Werkt SSH ook met IPv6?

- Ja

### Vraag 20 - Wat is de "SSH timeout" en "maximum authentication retries"?

- **SSH timeout:** Dit is de tijd die de SSH-server wacht op een reactie van de SSH-client tijdens het verbindingsproces.
- **Maximum authentication retries:** Dit is het aantal keren dat een gebruiker mag proberen in te loggen op de SSH-server voordat de verbinding wordt verbroken.

### Vraag 21 - Hoe stel ik deze in op 60 seconden en 3 retries?

- `enable`
- `configure terminal`
- `ip ssh timeout 60`
- `ip ssh authentication-retries 3`
- `write terminal`
- `end`


### Vraag 22 - Welke subnetting (IPv4 of IPv6) was voor jou het makkelijkst uit te voeren? Waarom?

- IPv4, deze waren we al het meest gewoon vanuit onze lessen.

### Vraag 23 - Wat was voor jou de moeilijkste stap van de gehele opdracht?

- IPv6 berekenen


## Evaluatiecriteria

- [x] Je hebt een correct adresseringsschema voor IPv4 uitgewerkt en kan dit toelichten.
- [ ] Je hebt een correct adresseringsschema voor IPv6 uitgewerkt en kan dit toelichten.
- [x] PC1 kan pingen naar SW1, R1, SW2 en PC4 over IPv4.
- [ ] PC1 kan pingen naar PC4 over IPv6.
- [ ] De begeleider selecteert willekeurig een van volgende toestellen: SW1, R1, SW2. Je kan op dit toestel het volgende demonstreren:
  - [x] Je kan inloggen via de consolekabel.
  - [x] Er is een wachtwoord ingesteld voor console en privileged EXEC mode.
  - [x] Er is een MOTD ingesteld.
  - [x] Wachtwoorden staan geëncrypteerd in de running config.
  - [x] Er zijn geen ongewenste DNS lookups.
  - [x] De startup config is weggeschreven.
  - [x] Je kan via IPv4 pingen naar zowel SW1, R1, SW2.
- [ ] Je kan vanuit PC1 een SSH-verbinding openen naar SW1 en R1 via IPv4.
- [ ] Je hebt een verslag gemaakt op basis van het template.
- [ ] De cheat sheet werd aangevuld met nuttige commando's die je wenst te onthouden voor later.

## Problemen en oplossingen

### Probleem 1 - Fout in het adresseringsschema van IPv4 

De tabel had de eerste keer een kleine fout waardoor het niet lukte om apparaten te pingen in Cisco Packet tracer. Een oplossing was snel gevonden.

## Voorbereiding demo

Powerpoint kan je [hier](presentatie/presentatie.md) vinden.
## Reflecties

### Maxence

Ik vond dit over het algemeen een toffe opdracht. Subnetten vind ik eigenlijk nog redelijk tof. Het is ook een zeer belangrijke en leerzame opdracht, iets wat we later zeker en vast nodig gaan hebben. Ik vond dit een mooie afsluiter van dit project.

### Xander

Mijn ervaring met deze laatste opdracht viel in het begin wat tegen omdat paket tracer mijn gewenste commando's niet wou uitvoeren maar door "do" ervoor te zetten kan paket tracer niet lastig doen in de console. voor het subnetten vond ik deze opdracht zeer goed een uitdaging zeker wel omdat je word gepushed om een niet standaar verdeleling te gebruiken dus ook niet de meest optimale in deze situatie.

## Bronnen

- [Youtube.com/@NetworkChuck](https://www.youtube.com/@NetworkChuck)
- Chamilo: Computer Networks leerpad
- [github.com/HOGENT-SELab/selab-2324-g77](https://github.com/HOGENT-SELab/selab-2324-g77)
- https://www.youtube.com/watch?v=ecCuyq-Wprc


