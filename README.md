# MKI

## Systém na úlohy a řešení

Každý ročník MKI má vlastní složku (aktuální: *MKI1*). V této složce najdete složky jednotlivých sérií (*batch1*, *batch2*, ...). V každé ze složek série jsou další 4 složky: *main*, *mainsol*, *problems* a *solutions*. Složky *main* a *mainsol* slouží jen pro vygenerování celkového zadání resp. řešení série a není potřeba  v nich nic upravovat. Ve složce *problems* resp. *solutions* se nacházejí podsložky *problemN-X* resp. *solutionN-X*. V těchto složkách najdete kromě jiných (nerelevantních) souborů i *.tex* dokument dané úlohy/vzoráku, který můžete upravovat (před upravením si přečtěte návod [níže](gitgithub-návod)).

### Legenda úloh

Obecný formát - N-X\
N - číslo série\
X - typ úlohy\
\
A - astronomická\
\
K - kvantová\
\
U1 - úloha 1\
\
U2 - úloha 2\
\
U3 - úloha 3\
\
B - bonusová

## Git/GitHub návod

Před provedením jakékoliv úpravy se ujistěte, že se nácházíte ve větvi *main* a spusťte `git pull origin`, tím si "stáhnete" aktuální verzi MKI repozitáře z GitHubu. Pak si založte novou větev na úpravy příkazem `git branch název-větve`. Prosím pojmenovávejte větve ve formátu `DDMMX`, kde `DD` je číslo dne v měsíci, `MM` je číslo měsíce a `X` je počáteční písmeno vašeho křestního jména (M, V, J). Nová větev založená 21. 1. Michalem by se jmenovala `2101M`. Přesuňtě se do větve příkazem `git checkout název-větve`. V této nově založené větvi proveďte veškeré úpravy. Při prvním uploadování změn na GitHub použijte `git push --set-upstream origin název-větve`, pak už můžete používat klasicské `git push`. Až budete spokojeni se všemi změnami otevřete si MKI repozitář na GitHubu, otevřete si 3 záložku z leva *Pull requests* a klikněte na tlačítko *New pull request*. Zvolte větev `main` jako *base branch* a `název-větve` jako *compare branch*. Teď si můžete prohlédnout všechny rozdíly obou větví. Dále klikněte na tlačítko *Create pull request* a zadejte název pull requestu a komentář. Pokud budou mezi větvemi nějaké konfilikty klikněte na tlačítko *Resolve conflicts*, to vám otevře soubor, ve kterém se nachází nějaký konflikt. Z tohoto souboru smažte všechno co nechcete aby bylo ve výsledné větvi, potvrďte tlačítkem *Mark as resolved* a klikněte na tlačítko *Commit merge*. Pokud mezi větvemi (už) nejsou žádné konflikty můžete kliknout na tlačítko *Merge pull request* zadat zprávu a případně komentář a potvrdil pull request tlačítkem *Confirm merge*. Po spojení větví klikněte na tlačítko *Delete branch*.

## Propagace

Dále je v repozitáři složka *Propagace*, samozřejmě určená na všechny propagační materiály. Aktuálně je tam několik stylů loga MKI ve složce *logo* a *.txt* dokument na seznamovací dopis/email.
