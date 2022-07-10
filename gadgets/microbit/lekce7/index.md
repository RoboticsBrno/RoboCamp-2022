# Lekce 7 - hra

Cílem je vytvořit hru "vyhýbání se překážkám", kdy hráč dole se snaží nenarazit do zábran. Ovládání pomocí tlačítek A a B, viz simulátor:

{{ microbit_snippet("project_7") }}

## Sprites
Při vytváření hry budeme používat "herní engine" zabudovaný do micro:bitu, je v zelených blocích v pokročilé sekci.
Tento engine podporuje tzv. _sprites_ - herní prvky, které
jsou velké jeden pixel (jedna LED na displeji), a mají vlastnosti:

* Pozice (x a y)
* Směr (orientace, není vidět na displeji, ale funkce `pusuň sprite` posouvá tímto směrem)
* Jas
* Blikání

Všechny tyto vlastnosti jsou ve _sprite_ takzvaně zapouzdřené, a "cestují" vždy spolu. Sprite je nový datový typ, lze je tedy uložit do proměnných (a seznamů) a **všechny tyto vlastnosti jsou v dané proměnné uložené dohromady**.

Sprites se vykresulí na displej automaticky, není třeba volat žádné `leds.plot` ani nic podobného, stačí spritu nastavit pozici, a on se na ní bude vykreslovat.
<br>Naopak, **dokud běží hra, nelze na displej kreslit jinak než pomocí spritu** - pokud toto potřebujete, je třeba engine zastavit pomocí `game.pause` bloku.

## Hráč
Hráč bude jeden ze spritů. Bude neustále na Y pozici 4 (úplně dole), a poblikávat. Ve výchozím stavu bude uprostřed, tedy na X pozici 2.
Bude také blikat, aby byl odlišený od překážek.

```js
let hrac: game.LedSprite = null
hrac = game.createSprite(2, 4)
hrac.set(LedSpriteProperty.Blink, 300)
```

**Pohyb hráče** je s game engine snadný, stačí přidat dva handlery pro události tlačítek:


```js
let hrac: game.LedSprite = null

input.onButtonPressed(Button.A, function () {
    hrac.change(LedSpriteProperty.X, -1)
})
input.onButtonPressed(Button.B, function () {
    hrac.change(LedSpriteProperty.X, 1)
})
```

## Překážky
Překázky budou vodorovné čáry s dírami, každá tvořena několika sprity (pamatujte, sprite je vždy jen jeden pixel).

### Přidávání překážek
Vytvoříme si funkci, která přidává novou překážku:

* Překážka bude vždy úplně nahoře, `y = 0`
* Překážka bude široká na celý displej, ale bude někde náhodně mít díru o velikosti 2.
* Sprity překážky naházíme do pole (seznamu), abychom je mohli později posouvat.

Na začátku programu jednu překážku přidáme.

```js

let holeX = 0
let hrac: game.LedSprite = null
let prekazky: game.LedSprite[] = []
prekazky = []
hrac = game.createSprite(2, 4)
hrac.set(LedSpriteProperty.Blink, 300)
pridejPrekazku()

function pridejPrekazku () {
    holeX = randint(0, 3)
    for (let index = 0; index <= 4; index++) {
        if (index < holeX || index > holeX + 1) {
            prekazky.push(game.createSprite(index, 0))
        }
    }
}
```

### Pohyb překážek
Překážky se musí pohybovat směrem dolů, všem spritům v seznamu `prekazky` tedy musíme přičítat k `y` souřadnici jedničku, periodicky.
Současně, pokud se překážka dotkne hráče, hra skoční.

```js
let hrac: game.LedSprite = null
let prekazky: game.LedSprite[] = []

function presunPrekazky () {
    for (let pr of prekazky) {
        pr.change(LedSpriteProperty.Y, 1)
        if (pr.isTouching(hrac)) {
            game.gameOver()
            break;
        }
    }
}

basic.forever(function () {
    basic.pause(1000)
    presunPrekazky()
})
```

### Mizení překážek

Další krok je mizení překážek, které dosáhnou spodku displeje. To přidáme do `presunPrekazky` na začátek.
Je třeba jednak odstranit sprite ze seznamu `prekazky`, ale také smazat samotný sprite z herního engine.

```js
let hrac: game.LedSprite = null
let prekazky: game.LedSprite[] = []

function presunPrekazky () {
    while (prekazky.length > 0 && prekazky[0].get(LedSpriteProperty.Y) == 4) {
        prekazky.shift().delete()
    }
    for (let pr of prekazky) {
        pr.change(LedSpriteProperty.Y, 1)
        if (pr.isTouching(hrac)) {
            game.gameOver()
            break;
        }
    }
}
```

### Generování nových překážek, skóre
Aby hra byla hrou, musíme přidávat nové překážky. To uděláme rozšířením `forever` bloku, který už máme a který periodicky volá funkci `presunPrekazky`.

Přibude do něj podmínka, která ověří, že poslední překážka je alespoň 3 od vršku displeje, a pokud ano, tak vytvoří novou překážku.

Na konec také přidáme zvyšování nahraného skóre - zvýšení skóre v tomto bloku odpovídá počítání řádků, které hráč přežil. Skóre je vidět po konci hry, až hráč do něčeho narazí.

```js
let prekazky: game.LedSprite[] = []
function presunPrekazky () {
    // ...
}
function pridejPrekazku () {
    // ...
}

basic.forever(function () {
    basic.pause(1000)
    presunPrekazky()
    if (prekazky.length == 0 || prekazky[prekazky.length - 1].get(LedSpriteProperty.Y) >= 3) {
        pridejPrekazku()
    }
    game.setScore(game.score() + 1)
})
```

### Zrychlování hry
Posledním vylepšením je postupné zrychlování, aby hra byla težší. Toho docílíme tak, že sekunduvou prodlevu nahradíme hodnotou z proměnné, kterou navíc budeme periodicky změnšovat na 98% původní hodnoty.

```js

let prodlevaTicku = 1000

basic.forever(function () {
    basic.pause(2000)
    prodlevaTicku = prodlevaTicku * 0.98
})
```

<span> </span>

```js
let prekazky: game.LedSprite[] = []
function presunPrekazky () {
    // ...
}
function pridejPrekazku () {
    // ...
}

basic.forever(function () {
    basic.pause(prodlevaTicku)
    presunPrekazky()
    if (prekazky.length == 0 || prekazky[prekazky.length - 1].get(LedSpriteProperty.Y) >= 3) {
        pridejPrekazku()
    }
    game.setScore(game.score() + 1)
})
```

## Celé řešení

{{ microbit_snippet("project_7") }}
