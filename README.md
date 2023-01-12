# MKI

## Úvod

V tomto repozitáři budou uloženy všechny dokumenty týkající se MKI.\
Až budu mít čas zprovozním na to nějaký systém a pak sem napíšu návod.\
Prozatím udělejte následující věci:

+ stáhněte si [Git](https://git-scm.com/download/win) ([Návod](https://www.atlassian.com/git/tutorials/install-git))
+ [naučte](https://youtu.be/RGOj5yH7evk) se základy s Gitem
+ vygenerujte si SSH key ([Návod](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account))
+ zprovozněte si [Git](https://code.visualstudio.com/docs/sourcecontrol/overview) a [GitHub](https://code.visualstudio.com/docs/sourcecontrol/github) ve VSCode
+ zprovozněte si [LaTeX](https://youtu.be/4lyHIQl4VM8) ve VSCode
+ založte si složku na MKI, otevřete jí ve VSCode a stáhněte si tento repozitář pomocí git clone a SSH

Doporučuji udělat taky:

+ stáhněte si [GitHub Desktop](https://desktop.github.com/)
  + opět si stáhněte MKI repozitář (rovnou z GitHub desktop) a otevřete si ho ve VSCode ze složky GitHub (nemusíte dělat poslední krok předchozího seznamu)
+ zprovozněte si extension [Git Graph](https://marketplace.visualstudio.com/items?itemName=mhutchie.git-graph) (pěkná vizualizace větví a úprav)

Na experimentování s Gitem a GitHubem a testování jejich funkcí můžete použít větev test.\
Pokud byste měli jakékoliv problémy napište do #technické-záležitosti na MKI discordu.\

## Systém na úlohy

Rozhodl jsem se absolutně okopírovat Výfuk co se týče názvů složek a z části i systému na úlohy. S ohledem na to, že chceme mít zadání v jednom dokumentu (batchn.tex), ale je mnohem praktičtější a bezpečnější mít jednotlivé úlohy v různých .tex dokumentech jsem se rozhodl pro použití package [standalone](https://www.overleaf.com/learn/latex/Multi-file_LaTeX_projects#The_standalone_package), který umí poskládat dohromady několik .tex dokumentů [demonstrace](https://www.overleaf.com/project/new/template/19636?id=66440758&templateName=Standalone+package+example&latexEngine=pdflatex&texImage=&mainFile=). S ohledem na to, že teď úplně nemám čas to zprovozňovat tak jsem zatím přidal do složek jen jednotlivé prázdné dokumenty. Doukud se nedohodneme na designu dokumentu (viz. discord) a nezprovozním package standalone tak prosím neupravujte tyto dokumenty.

### Návod

Otevřete si složku aktuálního ročníku (MKI1), dále složku aktuální série (batch1) a upravte .tex dokument korespondující úlohy.

### Legenda

serie-uloha\
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
