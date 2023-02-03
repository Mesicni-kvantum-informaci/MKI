# General - návod

Tento návod slouží spíše jen pro informování a pravděpodobně nebudete nic z tohoto návodu potřebovat aktivně dělat, protože všechny příkazy by měly být automaticky vygenerované v příslušných souborech.

## Koncová stránka

Pokud chcete do dokumentu vložit koncovou stránku (qr kódy a podpisy) použijte `\import{*cesta do této složky*}{end.tex}`.\

## Úvodní stránka - elektronická verze

Pokud chcete do ***batchnel*** vložit úvodní stránku použijte příkaz `\firstpageel{*relativní cesta k logu (pravděpodobně bude "../../../../propagace/logo/mkilogo.png")*}`

## Úvodní stránka - tištěná verze

Pokud chcete do ***batchnprint*** vložit úvodní stránku použijte příkaz `\firstpageprint{*relativní cesta k logu (pravděpodobně bude "../../../../propagace/logo/mkilogo.png")*}{*relativní cesta ke qr kódu elektronické verze zadání (pravděpodobně bude "../../../../propagace/qrcodes/MKIX/batchnel")*}`

## Úvodní stránka řešení - elektronická verze

Pokud chcete do ***batchnsolel*** vložit úvodní stránku použijte příkaz `\solfirstpageel{*relativní cesta k logu (pravděpodobně bude "../../../../propagace/logo/mkilogo.png")*}`

## Úvodní stránka řešení - tištěná verze

Pokud chcete do ***batchnsolprint*** vložit úvodní stránku použijte příkaz `\solfirstpageprint{*relativní cesta k logu (pravděpodobně bude "../../../../propagace/logo/mkilogo.png")*}{*relativní cesta ke qr kódu elektronické verze řešení (pravděpodobně bude "../../../../propagace/qrcodes/MKIX/batchnsolel")*}`
