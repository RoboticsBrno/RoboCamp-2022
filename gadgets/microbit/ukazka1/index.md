# Ukázka 1 - potenciometr z Electronu

V této ukázce si k MicroBitu připojíme potenciometr z Electronu a budemo pomocí něj ovládat servo a kroužek chytrých LEDek.

Potřebujeme:

* LED kroužek (stačí i pásek) připojíme na pin P0
* Servo připojíme na pin P1
* Potenciometr připojíme na pin P2

Připojíme LED pásek na pin P0, servo na pin P1 a potenciometr na pin P2.

Pin P2 používáme jako analogový vstup a měříme pomocí něj napětí. Otočením připojeného potenciometru se mění napětí na jeho výstupu, které měříme na pinu. Díky tomu můžeme načíst pozici potenciometru a dále ji zobrazit na LED kroužku a servu.

Hotové řešení je nachystané na stolu s Electronem

{{ microbit_snippet("ukazka_1") }}
