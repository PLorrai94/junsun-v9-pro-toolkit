# Junsun V9 Pro Toolkit

Toolkit e documentazione per **analizzare e migliorare con cautela** una autoradio Junsun V9 Pro tramite ADB, usando **prima strumenti GitHub già dedicati alle autoradio Android**.

> **Stato: v0.1 – Discovery / Audit.** Nessuna procedura di modifica automatica. Le istruzioni iniziali sono in sola lettura; zero flash firmware.

## Dispositivo di riferimento

Junsun V9 Pro 4+64 GB su Fiat Bravo II (198), Qualcomm MSM8953, display 1280x720, X-258 Overseas, build `3474.20240925.104112.G2984`, MCU `V0.22.9 G10625`. CarLetter `8.1.6.20240920`, canale `XZ03-450`, registrata. Il sistema dichiara Android 13 ma il livello API reale va verificato.

Android Auto **USB e wireless funzionano**: un precedente guasto wireless era provocato dalla modalità aereo attiva, non da un problema dimostrato dell'app.

## Strategia: repo-first

1. [CleanYourHeadUnit](https://github.com/maxhayim/CleanYourHeadUnit) — strumento principale `cyhu` per ADB, inventario, classificazione, privacy e diagnostica; controllare il sorgente prima dell'esecuzione.
2. [headunit-debloat-skill](https://github.com/hamza39460/headunit-debloat-skill) — metodologia conservativa e regole di review.
3. [android-head-unit-exploration](https://github.com/andresurena/android-head-unit-exploration) — riferimento per la metodologia tecnica sul SoC MSM8953; firmware ZLink diverso dal nostro CarLetter.
4. Strumenti Android generici soltanto se manca una funzione specifica per autoradio. CleanYourTV rimane solo una fonte di ispirazione.

Non copiamo codice di terzi in questa repository finché non ne avremo verificato licenza e versione.

## Documentazione

- [Roadmap per fasi](docs/ROADMAP.md)
- [Progetti upstream e modalità di riuso](docs/UPSTREAM.md)
- [Scheda del dispositivo](docs/DEVICE.md)
- [Installazione e prime verifiche Windows/ADB](docs/SETUP-WINDOWS.md)
- [Baseline prima/dopo](docs/BASELINE.md)
- [Regole Codex](AGENTS.md) e [Claude Code](CLAUDE.md)

## Come iniziare

Su Windows, scaricare [Android SDK Platform Tools](https://developer.android.com/tools/releases/platform-tools). A dispositivo parcheggiato, verificare se ADB è disponibile e autorizzato, poi:

```powershell
.\adb.exe devices -l
```

**Non condividere il seriale identificativo** mostrato da ADB. Leggere [SETUP-WINDOWS.md](docs/SETUP-WINDOWS.md) prima di ogni ulteriore comando.

## Sicurezza e privacy

Il repository è pubblico: non caricare log ADB grezzi, screenshot con informazioni personali, indirizzi MAC, SSID, numeri, contatti o dati di posizione. I report rimangono localmente sul PC; `.gitignore` esclude le cartelle dati previste.

Nessuna modifica di app di sistema, CarLetter, MCU, CANBUS, retrocamera, DSP, radio, gestione dell'accensione o firmware senza revisione e approvazione esplicita. Il software di altri veicoli non è automaticamente compatibile.

## Materiale consolidato (20 novembre 2026)

- [Firmware individuati: V7472, V8987, V8921 e candidati esclusi](docs/FIRMWARE-CANDIDATES.md) — **nessuno autorizzato per il flash**.
- [CarLetter / Android Auto](docs/CARLETTER-ANDROID-AUTO.md) e [incidente modalità aereo](docs/INCIDENTS.md).
- [Ricerca su GitHub, XDA e forum](docs/RESEARCH-NOTES.md).
- [Richiesta firmware / assistenza](docs/SUPPORT-REQUESTS.md).
- [Cronologia del lavoro e dei due kit precedenti](docs/WORK-HISTORY.md): nessuna decisione è stata cancellata.
- [Script ADB PowerShell in sola lettura](scripts/windows/Collect-JunsunReadOnly.ps1), adattato dal primo kit. **Non testato su questo esemplare**; richiede selezione e conferma esplicita del dispositivo.

- [Piano specifico privacy/telemetria e prestazioni](docs/PRIVACY-PERFORMANCE-PLAN.md).
- [Piano analisi e miglioramento audio/DSP](docs/AUDIO-PLAN.md).
- [Checklist concreta per la prossima sessione](docs/NEXT-STEPS.md).

**Avanzamento reale:** abbiamo soltanto documenti e uno script preparato; nessuna connessione ADB verificata, nessun dump, nessun firmware installato, nessun debloat o tuning audio eseguito.
