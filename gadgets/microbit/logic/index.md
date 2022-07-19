# Propojení s Logicem

Vytvořili jsme ukázkový program na ovládání Logicu přes sériovou linku. Můžeme jej tedy poměrně jednoduše připojit k sériové lince MicroBitu.

## Program pro Logic
Do Logicu je potřeba prvně nahrát program, který můžete stáhnout z [GitHubu](https://github.com/RoboticsBrno/logic-serial).

## Připojení
K Logicu si budeme muset připájet řádek pinů, na který vyvedeme sériovou linku a přes které se připojíme k MicroBitu. K připojení musíme používat špuntíky na MicroJuice, protože trojičky pinů na zadní straně slouží na 5V výstup a mají ochranné obvody, které by nám rušily komunikaci.

![Zapojení](assets/wiring.jpg)

## Specifikace komunikačního rozhraní
Veškerá komunikace je textová. Program v Logicu očekává příkazy oddělené novým řádkem a posílá události oddělené novým řádkem. Argumenty jsou odděleny mezerami.
### Příkazy
- `set <x> <y> <red> <green> <blue>`
    - nastaví LED na souřadnicích `x`, `y` na barvu `Rgb(red, green, blue)`
- `show`
    - zobrazí nastavení LED na displej
- `clear`
    - zhasne všechny LED
- `set_status <index> <red> <green> <blue>`
    - nastaví LED ze stavového řádku s indexem `index` na barvu `Rgb(red, green, blue)`
- `show_status`
    - zobrazí nastavení LED ze stavového řádku na displej
- `clear_status`
    - zhasne všechny LED ze stavového řádku
- `set_buzzer <state>`
    - nastaví stav bzučáku na `state` (0 nebo 1)

### Události
- `pressed <id>`
    - tlačítko s id `id` bylo stisknuto
- `released <id>`
    - tlačítko s id `id` bylo uvolněno

Tlačítka jsou číslována popořadě shora-dolů, zleva-doprava.

Tedy: levé horní (0), pravé horní (1), levé spodní (2), pravé spodní (3), šipka nahoru (4), šipka doleva (5), střed (6), šipka doprava (7), šipka dolů (8).


## Zadání A
Při zatřesení MicroBitem krátce pípneme bzučákem na Logicu.

## Zadání B
Vytvoříme si funkce na ovládání logicu - `set`, `show`, `clear`, `set_status`, `show_status`, `clear_status`, `set_buzzer`.

## Zadání C
Vytvoříme si "eventy" pro stisky tlačítek na Logicu.

## Zadání D
Pomocí tlačítek na Logicu budeme pohybovat svítící LEDkou na displeji MicroBitu.

{{ microbit_snippet("logic_demo") }}
