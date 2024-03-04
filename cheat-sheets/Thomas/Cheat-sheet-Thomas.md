## Chocolatey

| Taak                                                                    | Commando               |
| ----------------------------------------------------------------------- | ---------------------- |
| Een lijst tonen van de software die nu geïnstalleerd is via Chocolatey  | choco list             |
| Alle packages die nu geïnstalleerd zijn bijwerken tot de laatste versie | choco upgrade all      |
| Via de console een package opzoeken                                     | choco search "name"    |
| Een geïnstalleerde applicatie verwijderen                               | choco uninstall "name" |
| Een  applicatie installeren                                             | choco install "name"   |



## Scripts / PowerShell

| Taak                              | Commando                                          |
| --------------------------------- | ------------------------------------------------- |
| Bypass script blokkering          | Set-ExecutionPolicy Bypass -Scope Process         |
| Tekst                             | write-host "message"                              |
| Kleur veranderen (inline)         | -ForegroundColor "color" -BackgroundColor "color" |
| Kleur veranderen (ISE powershell) | $psISE.Options."option" = "color"                 |
| Ping                              | ping "ip"                                         |

| Options                        |
| ------------------------------ |
| ConsolePaneBackgroundColor     |
| ConsolePaneTextBackgroundColor |
| ConsolePaneForegroundColor     |
| ScriptPaneBackgroundColor      |
| ScriptPaneForegroundColor      |

## Markdown

| Taak                        | Commando          |
| --------------------------- | ----------------- |
| Header (van orde 1 t.e.m 6) | #                 |
| Italics                     | * of _            |
| Bold                        | ** of __          |
| Doorstreept                 | ~~                |
| List                        | 1. of * of - of + |
| Links                       | [name]"link"      |
| Foto                        | ![name]"src"      |
| Code blok                   | ```language ```   |
| Tabel                       | zie               |
| Blok citaat                 | > "message"       |
## Linux

| Taak                         | Commando                      |
| ---------------------------- | ----------------------------- |
| Reboot                       | sudo reboot                   |
| power off                    | sudo poweroff                 |
| install                      | sudo apt install "name"       |
| update                       | sudo apt update               |
| netwerk poorten configuratie | sudo ss -tlnp                 |
| status via system            | systemctl status "name"       |
| enter sql data base          | sudo mysql                    |
| restarten van service        | sudo systemctl restart "name" |

## MySql

| Taak                       | Commando                                                                          |
| -------------------------- | --------------------------------------------------------------------------------- |
| use                        | use mysql;                                                                        |
| veranderen                 | alter                                                                             |
| uitbreiding veranderen     | alter user 'root'@'localhost' identified with mysql_native_password by 'letmein'; |
| user toevoegen             | create user                                                                       |
| uitbreiding user toevoegen | create user 'admin'@'%' identified by 'letmein';                                  |
| geef rechten               | grant all privileges on *.* to 'admin'@'%' with grant option;                     |
| voor door privileges       | flush privileges;                                                                 |
| ga uit mysql               | exit;                                                                             |
