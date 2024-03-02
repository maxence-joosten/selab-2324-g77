## Chocolatey

| Taak                                                                    | Commando               |
| ----------------------------------------------------------------------- | ---------------------- |
| Een lijst tonen van de software die nu geïnstalleerd is via Chocolatey  | choco list             |
| Alle packages die nu geïnstalleerd zijn bijwerken tot de laatste versie | choco upgrade all      |
| Via de console een package opzoeken                                     | choco search "name"    |
| Een geïnstalleerde applicatie verwijderen                               | choco uninstall "name" |
| Een  applicatie installeren                                             | choco install "name"   |

## Scripts

| Taak                              | Commando                                          |
| --------------------------------- | ------------------------------------------------- |
| Bypass script blokkering          | Set-ExecutionPolicy Bypass -Scope Process         |
| Tekst                             | write-host "message"                              |
| Kleur veranderen (inline)         | -ForegroundColor "color" -BackgroundColor "color" |
| Kleur veranderen (ISE powershell) | $psISE.Options."option" = "color"                 |

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
