# Lekce 6 - radio

V této lekci se seznámíme s bezdrátovou komunikací mezi MicroBity.

## Zadání A

Posílejte pomocí rádia příkazy, které půjčený MicroBit poslouchá a posouvá podle toho rozsvícenou LED na displeji.

Na posílání souřadnic použijte `radio send value` funkci, se jmény hodnot `"x"` a `"y"`, každá v rozmezí od 0 do 4 včetně.

### Ukázka

{{ microbit_snippet("project_6A") }}

## Zadání B

Poslouchejte příkazy na rádiu, které posílá půjčený MicroBit a posouvejte podle toho rozsvícenou LED na displeji.

Na přijetí hodnot použijte blok `on radio received (name) (value)`, budou vám přicházet číselné hodnoty s názvy `"x"` a `"y"`, každá v rozmezí od 0 do 4 včetně.

### Ukázka

{{ microbit_snippet("project_6B") }}

## Zadání C

Ve dvojicích si vyzkoušejte jeden do MicroBitu nahrát Úkol A a druhý Úkol B a ovládejte si MicroBity mezi sebou.

## Zadání výstupního úkolu V1

Posílejte pomocí rádia načtená data ze senzoru a na druhém MicroBitu je nějak zobrazte na displeji (můžete vzít úkol z lekce 3 a data ze senzoru dodávat z druhého MicroBitu).

## Zadání výstupního úkolu V2

U vchodu běží MicroBit připojený k projektoru a zobrazuje plátno 100x100 pixelů, které můžete pomocí příkazů z rádia po jednotlivých pixelech překreslovat.
Posílejte zprávy pomocí bloku `radio send string` ve skupině 127 v následujícím formátu:

`<command> [<arg1> <arg2> ...]`

Nezapomeňte si zapnout posíláni sériového čísla v pokročilých bločcích rádia.

Na překreslování posílejte příkaz: `paint <x> <y> <color>`.

Barvy vybírejte z následující tabulky a označujte je napsaným názvem:
![Seznam barev](assets/colors.png)

## Bonus

### Ukázka implementace přijímače mikrobitu
```js
radio.onReceivedString(function (receivedString) {
    serial.writeLine("" + radio.receivedPacket(RadioPacketProperty.SerialNumber) + " " + receivedString)
})
radio.setGroup(127)
serial.redirectToUSB()
serial.setWriteLinePadding(0)
basic.forever(function () {
    basic.showArrow(ArrowNames.North)
    basic.clearScreen()
})
```

### Příklad komunikace

```
paint 0 3 RED
paint 80 24 GREEN
```

## Hra 2048

U vchodu běží druhý MicroBit, který ovládá hru <i>2048</i> za pomoci hlasování. Hlasovat může každý MicroBit pomocí rádia jednou za 10s.
Posílejte zprávy pomocí bloku `radio send string` ve skupině 128 v následujícím formátu:

`<command>`

Nezapomeňte si zapnout posíláni sériového čísla v pokročilých bločcích rádia.

Pro hlasování posílejte jeden z následujících příkazů:

 - `up` - přejdi do směru nahoru
 - `down` - přejdi do směru dolů
 - `left` - přejdi do směru doleva
 - `right` - přejdi do směru doprava
 - `reset` - reset hry
