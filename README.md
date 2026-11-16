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
