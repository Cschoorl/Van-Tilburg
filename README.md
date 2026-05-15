# Van Tilburg — AI-training (slide deck)

**Presentatie (GitHub Pages):** [cschoorl.github.io/Van-Tilburg/index.html](https://cschoorl.github.io/Van-Tilburg/index.html) · [zelfde site, zonder `/index.html`](https://cschoorl.github.io/Van-Tilburg/)

Zie je wél deze README als “website” in plaats van de volscherm-slides? Dat is bijna altijd **cache** of **verkeerde Pages-instelling**. Spring naar **[Probleem: alleen README op github.io](#probleem-alleen-readme-op-githubio)** hieronder.

---

Publieke **HTML-presentatie** voor het voorstel **AI-training: Custom GPT’s bouwen** voor **Nica van Tilburg** (kleding, Brabant).  
Het deck is opgezet in dezelfde **editoriale stijl** als het Josh V-voorstel: typografie (Cormorant Garamond + Inter), gecentreerde slides en vaste navigatie onderaan.

## Wat staat erin?

Acht slides: titel, waarom deze training, opzet (twee sessies), training 1, training 2, verwacht resultaat, investering, afsluiting met call-to-action. Inhoud en bedragen volgen het offertekader (32 deelnemers, prijzen excl./incl. btw).

## Belangrijk: welke URL?

| URL | Wat je ziet |
| --- | ----------- |
| [github.com/Cschoorl/Van-Tilburg](https://github.com/Cschoorl/Van-Tilburg) | De **repository** (code, README) — geen volscherm-presentatie. |
| **GitHub Pages** (na inschakelen hieronder) | De **slide deck** op `https://cschoorl.github.io/Van-Tilburg/` |

Open daarom de **Pages-URL**, of open `index.html` lokaal.

## Bestanden

| Bestand | Rol |
| ------- | --- |
| `index.html` | **Hoofdversie** van het deck (nodig voor GitHub Pages: standaardbestand in de root). |
| `van-tilburg.html` | Korte doorverwijzing naar `index.html` (oude naam / bookmarks). |
| `docs/index.html` | Spiegel van het deck voor Pages-bron **`main` + `/docs`**. Bijwerken: `./scripts/sync-pages-files.sh` na wijzigingen in `index.html`. |
| `docs/.nojekyll` | Zet Jekyll uit **als** Pages op **map `/docs`** staat — zonder dit bestand kan de site als “README-site” renderen. |
| `.nojekyll` | Voorkomt dat GitHub Pages Jekyll op de site loslaat (pure HTML/CSS/JS). |

Geen build-stap: alles zit in de HTML.

## Lokaal openen

```bash
cd Van-Tilburg   # of: clone + cd naar deze map
open index.html
```

Of dubbelklik `index.html` in Finder.

## Presenteren

- Onderaan: **Vorige** / **Volgende** en teller **01 / 08**; stippen om naar een slide te springen.
- **Toetsenbord:** pijl links/rechts, spatie, Page Up/Down; `Home` / `End`; cijfers **`1`–`8`** voor een specifieke slide.
- **Touch:** swipe links of rechts.

## PDF

In de browser: **Print → Opslaan als PDF**. Er is print-CSS toegevoegd zodat slides als aparte pagina’s kunnen worden geëxporteerd (controleer vooraf even het resultaat in print-voorbeeld).

## GitHub Pages inschakelen (éénmalig)

Daarna staat het deck op **`https://cschoorl.github.io/Van-Tilburg/`** (hoofdletters `Van-Tilburg` in het pad naar de repo; de site-URL volgt je GitHub-gebruikersnaam en repornaam).

### Optie A — GitHub Actions (aanbevolen; zit al in de repo)

1. Ga naar **Settings → Pages** van deze repository.
2. Bij **Build and deployment → Source** kies **GitHub Actions**.
3. Push naar `main` (of draai workflow handmatig onder **Actions**) — na de eerste succesvolle run verschijnt de site.

### Optie B — Publiceren vanaf branch

1. **Settings → Pages → Build and deployment → Source:** **Deploy from a branch**.
2. **Branch:** `main`, **map:** `/ (root)` → **niet** `/docs` tenzij je bestanden daar neerzet.
3. Onder **Theme** / **Choose a theme**: kies **geen** (een oude thema-keuze kan ervoor zorgen dat vooral markdown/README zichtbaar wordt i.p.v. pure HTML).
4. Wacht een minuut; daarna werkt dezelfde Pages-URL.

## Probleem: alleen README op github.io?

Dan staat óf nog een **oude versie** in je browser/CDN, óf GitHub publiceert **niet vanaf de root van `main`**.

1. Open **hard** opnieuw: macOS **Cmd+Shift+R**, of gebruik een **privévenster**. Probeer ook de **expliciete URL** met bestandsnaam:  
   `https://cschoorl.github.io/Van-Tilburg/index.html`
2. Controleer **Settings → Pages**: gebruik **één** van deze bronnen (niet door elkaar):
   - **`main` + `/ (root)`** — dan telt `index.html` in de **repo-root** (aanbevolen), of
   - **`main` + `/docs`** — dan telt `docs/index.html` (de map `docs/` is nu een **spiegel** van het deck én bevat **`docs/.nojekyll`** zodat Jekyll géén README als homepage kiest).
   - **GitHub Actions** — zet Source op **GitHub Actions**; de workflow in `.github/workflows/pages.yml` publiceert `index.html` + `.nojekyll`.
3. Staat er een **Jekyll-thema** gekozen onder Pages? Haal die weg — dit project is **statische HTML**.

## Repository

- Remote: `https://github.com/Cschoorl/Van-Tilburg.git`

---

*Voorstel gericht op Nica van Tilburg — pas inhoud en bedragen aan in **`index.html`** en voer daarna **`./scripts/sync-pages-files.sh`** uit zodat `docs/` gelijk blijft (als je `/docs` als Pages-bron gebruikt).*
