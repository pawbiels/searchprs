# Rules Search v2 eval<!-- omit in toc -->
_19.10.2026 pb_

<!-->
pandoc -o readme.docx -f markdown -t docx readme.md
<-->

- [ISSUES](#issues)
  - [Pending](#pending)
    - [Created on 19.10.2026](#created-on-19102026)
    - [Created on 12.10.2026](#created-on-12102026)
  - [Solved](#solved)
    - [Moved on 19.10.2026](#moved-on-19102026)
  - [Outdated](#outdated)
    - [Moved on 19.10.2026](#moved-on-19102026-1)
- [Wyszukiwanie](#wyszukiwanie)
  - [#15 Operator NOT](#15-operator-not)
  - [Wiele wyników w jednym pliku](#wiele-wyników-w-jednym-pliku)
  - [Line break](#line-break)
  - [Restrykcyjne wyszukiwanie](#restrykcyjne-wyszukiwanie)
  - [Operatory logiczne](#operatory-logiczne)
- [Funkcjonalność / UI](#funkcjonalność--ui)
  - [#16 Lista stron](#16-lista-stron)
  - [Details](#details)
  - [Metadane](#metadane)
  - [Fatal error](#fatal-error)
  - [Document expired](#document-expired)
  - [Zwijalna lista kategorii](#zwijalna-lista-kategorii)
  - [Numeracja stron z wynikami](#numeracja-stron-z-wynikami)

## ISSUES

### Pending

#### Created on 19.10.2026

- ISSUE#17 lista wyników podświetla operatory logiczne AND/OR/NOT również w częściach słów, do wygaszenia
- ISSUE#16 [screen](#16-lista-stron) gdy stron jest więcej niż 10, nie da się łatwo przejść do pierwszej lub ostatniej
- ISSUE#14 frazy w cudzysłowie są czasami wyszukiwane nawet jeśli słowa nie postępują po sobie, przykład ["machinery piping"](https://dr.prs.pl/dev/rules-dms/?db=PRS-Rules&query=%22machinery%20piping%22&rowspage=20&maxresultsfile=10&page=4) znajduje: 'refrigeration systems; auxiliary **machinery**; boilers and other pressure vessels; **piping** and'
- ISSUE#11 wyszukanie / pole tekstowe nie jest zachowane po kliknięciu `Browse Documents` lub `Help` i powrocie do `Search` (strona odświeża się)
- ISSUE#10 związane z ISSUE#07, [strony z wynikami](#numeracja-stron-z-wynikami) powinny zliczać DOKUMENTY (po 20), a nie wyniki jak obecnie (za dużo stron), powinna być lista rozwijana jak w panelu po lewej stronie

#### Created on 12.10.2026

- ISSUE#07 [snippets](#wiele-wyników-w-jednym-pliku) powinny być listą rozwijalną, tak jak zawartości kategorii; obecnie wyniki z jednego pliku potrafią zająć kilka stron [przykład](https://dr.prs.pl/dev/rules-dms/?db=PRS-Rules&query=pomiar*%20grubo*&rowspage=20&maxresultsfile=10&page=1) `pomiar* grubo*`
- ISSUE#06 [linebreak](#line-break) słowa rozbite myślnikiem na dwa wiersze nie są wyszukiwane, przykład `przewidywanym zakończeniem` [nowa-wyszukiwarka](https://dr.prs.pl/dev/rules-dms/?db=PRS-Rules&query=przewidywanym+zako%C5%84czeniem&cb_PL=on&cb_EN=on&rowspage=20), [stara-wyszukiwarka](https://dr.prs.pl/rulessearch/index.php?grp=PUB-P&lang=EN&keyword=przewidywanym%20zako%C5%84czeniem) stara znajduje PUB39/P a nowa nie
- ISSUE#05 [restrykcyjność](#restrykcyjne-wyszukiwanie) nie wyświetla wyników gdy nie znajdzie każdego wyszukanego słowa, przykład `wtyczka gniazdo pływak` [link](https://dr.prs.pl/dev/rules-dms/?db=PRS-Rules&query=wtyczka+gniazdo+p%C5%82ywak&cb_PL=on&cb_EN=on&rowspage=20) brak wyników, [stara wyszukiwarka](https://dr.prs.pl/rulessearch/index.php?lang=PL&keyword=wtyczka%20gniazdo%20p%C5%82ywak) daje wyniki par słów

### Solved

#### Moved on 19.10.2026

- ISSUE#15 from 19.10.2026 operator logiczny NOT nie działa, traktuje `not` jako słowo do wyszukania, przykład ["watertight NOT door"](https://dr.prs.pl/dev/rules-dms/?db=PRS-Rules&grp=&query=watertight+NOT+door&rowspage=20), [screen](#15-operator-not)
  - rozwiązane przez nawiasy patrz ISSUE#04
- ISSUE#13 from 19.10.2026 powiązany z ISSUE#12, ale dotyczy OR (identyczne zachowanie)
  - rozwiązane przez nawiasy patrz ISSUE#04
- ISSUE#12 from 19.10.2026 Operator logiczny AND nie działa, przykład: [watertight AND door](https://dr.prs.pl/dev/rules-dms/?db=PRS-Rules&grp=&query=watertight+AND+door&rowspage=20) oraz [watertight door](https://dr.prs.pl/dev/rules-dms/?db=PRS-Rules&grp=&query=watertight+door&rowspage=20) dają identyczne 126 wyników, przy czym pierwsze wyszukanie podświetla również słowo 'and'
  - rozwiązane przez nawiasy patrz ISSUE#04
- ISSUE#09 from 19.10.2026 [Grupy w lewym panelu](#zwijalna-lista-kategorii) do filtracji powinny być zwijalne (domyślnie zwinięte); dobrze jest to rozwiązane w zakładce `Browse Documents`
  - kategorie w lewym panelu są teraz zwijalne
- ISSUE#04 from 12.10.2026 [operatory](#operatory-logiczne) AND/OR nie działają, funkcjonują jako zwykłe wyszukiwanie i znajdują słowa and/or lub fragmenty słów [przykład](https://dr.prs.pl/dev/rules-dms/?db=PRS-Rules&query=wtyczka+OR+gniazdo+OR+p%C5%82ywak&cb_PL=on&cb_EN=on&rowspage=20) `wtyczka OR gniazdo OR pływak`
  - rozwiązane przez nawiasy np. `keyword1 ( OR keyword2 )` zaprezentowane w `Help`

### Outdated

#### Moved on 19.10.2026

- ISSUE#08 from 12.10.2026 po kliknięciu w [Details](#details) nie da się wrócić do trybu `redakcja=0` z poziomu GUI, [przykład](https://dr.prs.pl/dev/rules-dms/index.php?redakcja=1&db=PRS-Rules)
- ISSUE#03 from 12.10.2026 [metadane](#metadane) wprowadzone ręcznie ulegają usunięciu przy nadpisaniu pliku pdf; powinny być dziedziczone
- ISSUE#02 from 12.10.2026 [wstecz](#fatal-error) często wywala fatal error, zwłaszcza w trybie admina
- ISSUE#01 from 12.10.2026 [document expired](#document-expired) błąd wyświetlany przy przerwaniu jakiejś procedury bez jej finalizacji

## Wyszukiwanie

### #15 Operator NOT
[home](#)

Nie zmienia się liczba wyszukanych rekordów, słowo NOT podkreślone jako wyszukanie

![Operator NOT](./img/i15.png)

### Wiele wyników w jednym pliku
[home](#)

W sytuacji gdy znalezionych jest wiele rekordów w jednym pliku, wyszukiwarka wyświetla je wszystkie. Czasami trzeba przejść na kolejną stronę, żeby się przez nie przebić. W starej wyszukiwarce rekordy były agregowane (jeśli dostatecznie blisko siebie) i sortowane globalnie, a nie w obrębie jednego pliku; dzięki temu można było przejrzeć najwazniejsze wyniki z różnych plików dość szybko.

Dobrze rozwiązane to jest w wyszukiwarce *recoll*. Wyszukania z każdego pliku są agregowane w jeden rekord i wyświetlone jeden po drugim jako blok tekstu. Na każdy plik przypada tylko jeden blok. Po kliknięciu w niego przechodzi się do podstrony zawierającej szczegóły wyszukania w danym pliku --- *snippets* (fragmenty) oraz odpowiadające im strony w pliku PDF.

Nowa wyszukiwarka:

![Nowa wyszukiwarka](./img/pomiar-grubo-1.png)

Stara wyszukiwarka:

![Stara wyszukiwarka](./img/pomiar-grubo-2.png)

### Line break
[home](#)

Klasyczny problem, który rozwiązaliśmy w starej wersji przeglądarki, a w nowej jeszcze nie. Przykładowo fraza `przewidywanym zakończeniem` jest rozbita w pliku PUB 39/P myślnikiem:

![Line break](./img/zakonczeniem-przewidywanym-3.png)

Stara wyszukiwarka poprawnie odnajduje ten wynik (jako jeden z sześciu):

![Stara wyszukiwarka](./img/zakonczeniem-przewidywanym-2.png)

W nowej widoczne są tylko cztery wyszukania, gdzie fraza nie jest rozbita:

![Nowa wyszukiwarka](./img/zakonczeniem-przewidywanym-1.png)

### Restrykcyjne wyszukiwanie
[home](#)

Domyślne wyszukiwanie jest zbyt restrykcyjne, a operatory AND/OR nie działają. Przykładowo, słowa `wtyczka gniazdo pływak` nie są w ogóle odszukane, gdyż w żadnym dokumencie nie występują obok siebie:

![Nowa wyszukiwarka](./img/wtyczka-gniazdo-plywak-1.png)

W starej wyszukiwarce odnajdywane są istniejące pary z tych trzech słów:

![Stara wyszukiwarka](./img/wtyczka-gniazdo-plywak-2.png)

### Operatory logiczne
[home](#)

Operatory logiczne zdają się nie działać; OR wyszukiwane jest jako słowo lub fragment słowa.

![Operatory](./img/wtyczka-gniazdo-plywak-3.png)

Przykład z Helpa sugeruje użycie cudzysłowia w tym przypadku, ale to również nie działa:

![Cudzysłów](./img/wtyczka-gniazdo-plywak-4.png)

## Funkcjonalność / UI

### #16 Lista stron

Uzupełnić FIRST ... 4 5 6 7 8 9 x ... LAST

![ISSUE#16](./img/i16.png)

### Details
[home](#)

Włączenie trybu Details uniemożliwia jego późniejsze wyłączenie z poziomu GUI; nawet po wciśnięciu Collapse all pozostają url i filemask. Trzeba ręcznie usunąć tryb redakcja=1 z adresu url (niedostępne z poziomu dokuwiki przez iframe).

![Details](./img/details.png)

### Metadane
[home](#)

Wgranie nowego pliku PDF, nawet identycznego jak poprzedni, powoduje nadpisanie (wyzerowanie) jego ręcznie wprowadzonych metadanych. Powinny być one "dziedziczone" jako wstępne wartości do dalszych modyfikacji.

### Fatal error
[home](#)

Czasami przy klikaniu WSTECZ (np. jeśli wybraliśmy upload_url, a potem jednak rezygnujemy) pojawia się komunikat:
```
Fatal error: Uncaught ValueError: Path cannot be empty in E:\dr_prs_pl_htdocs\search\.www\explorer.php:1732 Stack trace: #0 E:\dr_prs_pl_htdocs\search\.www\explorer.php(1732): fopen('', 'rb') #1 E:\dr_prs_pl_htdocs\search\.www\explorer.php(2104): FileManager->uploadFromUrl('', '') #2 E:\dr_prs_pl_htdocs\search\.www\explorer.php(3331): FileManager->run_fm(Object(Location)) #3 E:\dr_prs_pl_htdocs\search\dms.php(2): include_once('E:\\dr_prs_pl_ht...') #4 {main} thrown in E:\dr_prs_pl_htdocs\search\.www\explorer.php on line 1732
```

Adres URL to wtedy:
```
https://dr.prs.pl/search/dms.php?dir=
```

### Document expired
[home](#)

Często po kliknięciu wstecz w przeglądarce pojawia się błąd:

```
Document Expired

The requested document is not available in Firefox’s cache.
```

Towarzyszy mu zwykle adres:
```
https://dr.prs.pl/search/dms.php
```

Kilkukrotne wciśnięcie wstecz pozwala wrócić do poprzedniego menu.

Ogólnie brakuje `Wstecz` jako takiego zawartego w UI strony.

### Zwijalna lista kategorii
[home](#)

Przy odnalezieniu wyniku w wielu kategoriach, panel do filtracji po lewej stronie staje się bardzo długi. Kategorie powinny być domyślnie zwinięte (ikonka z plusem po lewej stronie nazwy kategorii), ewentualnym kliknięciem podglądamy listę plików.

![Zwijalna lista kategorii](./img/zwijalne-grupy.png)

### Numeracja stron z wynikami
[home](#)

Przykład poniżej: wyniki odnalezione w ośmiu plikach, rozłożone na trzy strony. Dwadzieścia wyników na stronę. Powinna być jedna strona z wszystkimi wynikami, po osiem plików to mniej niż dwadzieścia. Pliki domyślnie zwinięte, jak kategorie, z plusikiem. Kliknięcie w nazwę pliku lub w plusik rozwija listę z wynikami w nim zawartymi (_snippets_), bez rozdzielania ich na kolejne strony wyników.

![Zwijalna lista kategorii](./img/numeracja-stron.png)