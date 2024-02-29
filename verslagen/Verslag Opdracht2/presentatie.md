---
marp: true
class: invert
footer: Opdracht 2 - Een databankserver opzetten in een virtuele machine
---

<style>
    p, ul, li {font-size: 20px;}
    a{color:grey; text-decoration:underline;}
    a:hover{color:#eee;}
    section{justify-content:flex-start;}
</style>

# Opdracht 2 - Een databankserver opzetten in een virtuele machine

**Hoofdstukken**:

1. VirtualBox configureren
2. Virtuele machine aanmaken
   1. Configuratie databankserver
   2. Debugging en troubleshooting
3. Configuratie databankserver
   1. Configuratie van de databank
   2. MySQL Workbench
4. Afsluiten

> Maxence, Mauro, Robin, Thomas , Xander

---

# VirtualBox configureren

> Op Windows

1. `File` > `Tools` > `Network Manager`
   Een nieuwe VirtualBox Host-Only Ethernet Adapter aanmaken met deze waarden:

   ```css
   IPv4-adres: 192.168.56.1
   Netwerkmasker: 255.255.255.0
   DHCP-server: aan
   DHCP-server adres: 192.168.56.100
   Laagste adres: 192.168.56.101
   Hoogste adres: 192.168.56.254
   ```

2. `VM-machine Settings` > `netwerk` > `Adapter 2`
   We zetten deze `aan` en veranderen volgende info:
   ```
   Attached to: Host-only Adapter
   Naam: Virtualbox Host-Only Ethernet Adapter
   ```

<!-- ---

# Virtuele machine aanmaken `osboxes.org` -->

<!-- GEEN IDEE HOE DIT MOET, IK HEB DIT NIET GEMAAKT OP DEZE MANIER -->

---

# Virtuele machine aanmaken `ubuntu.com .iso`

1. Dowloading `Ubuntu 22.04.iso` van **Ubuntu.org/download/desktop**
2. Maak een nieuwe Virtual Box aan met min. `2GB RAM`, voldoende opslag en alle andere mogelijke instellingen.
3. De stappen van de installatie volgen
   Done

Daarna hebben we enkele netwerkinstellingen in Ubuntu zelf aangepast in **settings**. Daar zijn er 2 interfaces beschikbaar.

- interface `enp0s8`.
  - Kies het tabblad **IPv4** en geef volgende instellingen in:
    ```css
    IPv4 Method: manual
    Address: 192.168.56.20
    Netmask: 255.255.255.0
    Gateway: LEEG
    ```

---

# Configuratie databankserver

We installeren MySQL in de terminal en controleren of de service draait

```
sudo apt update
sudo apt install -y mysql-server

systemctl status mysql
```

Controleer welke netwerkpoorten in gebruik zijn en stel vast dat MySQL enkel luistert op de "loopback interface":

```bash
sudo ss -tlnp
```
