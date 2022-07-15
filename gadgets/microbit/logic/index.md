# Propojení s Logicem

Vytvořili jsme ukázkovou knihovnu na ovládání Logicu přes sériovou linku. Můžeme tedy poměrně jednoduše připojit k sériové lince MicroBitu.

## Připojení
K Logicu si budeme muset připájet řádek pinů, na který vyvedeme sériovou linku a přes které se připojíme k MicroBitu. K připojení musíme používat špuntíky na MicroJuice, protože trojičky pinů na zadní straně slouží na 5V výstup a mají ochranné obvody, které by nám rušily komunikaci.

![Zapojení](assets/wiring.jpg)

## Specifikace komunikačního rozhraní
- `set <x> <y> <red> <green> <blue>`
  - nastaví LED na souřadnicích `x`, `y` na barvu `red`, `green`, `blue`
- `show`
  - zobrazí nastavení LED na displej
- `clear`
  - zhasne všechny LED
- `set_status <index> <red> <green> <blue>`
  - nastaví LED ze stavového řádku s indexem `index` na barvu `red`, `green`, `blue`
- `show_status`
  - zobrazí nastavení LED ze stavového řádku na displej
- `clear_status`
  - zhasne všechny LED ze stavového řádku
- `set_buzzer <state>`
  - nastaví stav bzučáku na `state` (0 nebo 1)

## Zadání A
Při zatřesení MicroBitem krátce pípneme bzučákem na Logicu.

# Zadání B
Vytvoříme si funkce na ovládání logicu - set, show, clear, set_status, show_status, clear_status, set_buzzer.

## Zadání C
Vytvoříme si "eventy" pro stisky tlačítek na Logicu.

## Zadání D
Pomocí tlačítek na Logicu budeme pohybovat svítící LEDkou na displeji MicroBitu.

# Zadání E
Na displej Logicu vykreslete čtverec, který se stiskem tlačítek na Logicu pohybuje, mění velikost a barvu.
