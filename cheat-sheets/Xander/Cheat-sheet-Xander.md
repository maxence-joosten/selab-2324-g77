>Student: Xander Beuselinck 
## cheat-sheet virtualbox/mysql

| taak                                |                                                               Commando |
| ----------------------------------- | ---------------------------------------------------------------------: |
| bijwerken software                  |                                 <br>```apt update``` ```apt upgrade``` |
| super user privilege                |                                          <br>```  sudo [commando]  ``` |
| gast os finetunen voor vbox upgrade | <br>```sudo apt install build-essential dkms linux-headers-generic ``` |
| uitvoeren van guest-editions iso    |                                         <br>```sudo rcvboxadd setup``` |
| privileges geven mysql              |    ```grant all privileges on *.* to 'admin'@'%' with grant option;``` |
| mysql openen                        |                                                ```my sql -u root -p``` |


## cheat-sheet Chocolatery

| taak                     |                     Commando |
| ------------------------ | ---------------------------: |
| installeren              |      <br>```choco install``` |
| toont packages           | <br>```   choco list     ``` |
| informatie over package  |        <br>```choco info ``` |
| verwijderen van software | <br>```choco    uninstall``` |
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
