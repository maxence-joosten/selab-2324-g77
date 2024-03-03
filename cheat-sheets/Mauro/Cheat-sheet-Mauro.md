# Cheat sheets en checklists

> Student: Mauro Maratta

## Basiscommando's

| Taak                                                   | Commando                         |
| :----------------------------------------------------- | :------------------------------- |
| Bekijk IP-adressen van alle netwerkadapters            | `ip a`                           |
| Bekijk de status van een service                       | `systemctl status SERVICE`       |
| Start een service                                      | `sudo systemctl start SERVICE`   |
| Stop een service                                       | `sudo systemctl stop SERVICE`    |
| Herstart een service                                   | `sudo systemctl restart SERVICE` |
| Update de package repositories (Ubuntu & Debian based) | `sudo apt update`                |
| Installeer een package (Ubuntu & Debian based)         | `sudo apt install PACKAGE`       |

## Git workflow

Simpele git workflow voor projecten met een enkele branch en zonder contributors.

| Task                                                               | Command                   |
| :----------------------------------------------------------------- | :------------------------ |
| Status van het huidige project                                     | `git status`              |
| Selecteer te committen bestanden                                   | `git add FILE...`         |
| Commit alle wijzigingen naar de lokale repository                  | `git commit -m 'MESSAGE'` |
| Push lokale wijzigingen naar de remote repository                  | `git push`                |
| Haal alle wijzigingen van de remote repository binnen in de lokale | `git pull`                |

## Checklist netwerkconfiguratie

1. Is het IP-adres correct? `ip a`
2. Is de router/default gateway correct? `ip r -n`
3. Is een DNS-server ingesteld? `cat /etc/resolv.conf`

## Chocolaty commando's

| **Taak**                                                                | **Commando**                   |
| ----------------------------------------------------------------------- | ------------------------------ |
| Een lijst tonen van de software die nu geïnstalleerd is via Chocolatey  | choco list                     |
| Alle packages die nu geïnstalleerd zijn bijwerken tot de laatste versie | choco upgrade all<br>          |
| Via de console een package opzoeken                                     | choco search zoekterm          |
| Een geïnstalleerde applicatie verwijderen                               | choco uninstall <package_naam> |

## PowerShell

| Taak                         | Commando                                  |
| ---------------------------- | ----------------------------------------- |
| Geef het script meer rechten | Set-ExecutionPolicy Bypass -Scope Process |
