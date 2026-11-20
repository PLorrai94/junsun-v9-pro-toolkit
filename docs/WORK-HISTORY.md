# Registro del lavoro — conservazione delle decisioni

Scopo: mantenere traccia anche dei tentativi non adottati, senza confondere **ricerca**, **proposta** e **test reale**.

## Materiali prodotti nella conversazione
- **Kit iniziale (Windows):** prima roadmap, AGENTS.md, CLAUDE.md, BASELINE.md, README.md e `Collect-JunsunReadOnly.ps1`. Fornito come `Junsun_V9_Pro_Optimization_Starter.zip`.
- **Kit repo-first v2:** seconda roadmap/README, AGENTS.md, CLAUDE.md, BASELINE.md, REPOSITORIES.md; la strategia preferita è usare tool per autoradio già esistenti invece di creare un altro debloater. Fornito come `Junsun_V9_Pro_Repo_First_v2.zip`.
- **GitHub (PR #1):** documenti iniziali adattati e preparati per revisione: README, regole agenti, roadmap, scheda hardware, setup Windows, elenco upstream, baseline e .gitignore.
- **Ricerche successive:** firmware G2984 da Altair571, versione terza parte V7472, discussioni firmware/ADB, CarLetter e risoluzione Android Auto wireless.

I due kit ZIP sono stati realizzati in chat e possono essere conservati dall'utente. Il loro contenuto utile è consolidato nei documenti attuali; lo **script PowerShell** è mantenuto in `scripts/windows/` in una versione più prudente che richiede esplicitamente il seriale ADB. Le versioni iniziali restano storiche e **non** sono automaticamente raccomandate per l'esecuzione.

## Scelte esplicite che restano valide
1. **Repo-first:** CleanYourHeadUnit e strumenti dedicati autoradio come base; CleanYourTV solo ispirazione.
2. **Windows / Codex o Claude Code:** agenti possono analizzare i report, ma nessun cambiamento senza permesso e rollback.
3. **Junsun e Pixel 7:** evitare ADB su dispositivo sbagliato; selezione seriale obbligatoria.
4. **Privacy:** repo pubblico, nessun dato grezzo o Device ID CarLetter.
5. **CarLetter:** preservare la copia registrata; il wireless è tornato a funzionare correggendo la modalità aereo.
6. **Firmware:** solo ricerca e analisi offline; nessun candidato dichiarato compatibile.
7. **Prestazioni/audio:** ancora da misurare, nessuna ottimizzazione applicata.
8. **Non si perde il lavoro scartato:** quando una proposta viene superata, annotare qui causa e sostituzione anziché cancellarne il razionale.

## Distinzione stato/prova
| Attività | Stato |
| --- | --- |
| Creato repository GitHub | Completato |
| Pianificazione e ricerca | Documentazione, in corso |
| Connesso ADB al Junsun | **Non ancora eseguito** |
| Lettura dati reali, audit telemetria, benchmark | **Non ancora eseguiti** |
| Debloat / audio tuning / firmware flash | **Non effettuati** |
