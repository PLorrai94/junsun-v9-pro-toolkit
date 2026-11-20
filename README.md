# Junsun V9 Pro Toolkit

**Progetto tecnico di analisi, debloat e aggiornamento di un'autoradio Android**, condotto da PC Windows con ADB e, dove utile, Codex / Claude Code.

> **Stato: fase 0 — nessun audit eseguito sul dispositivo.** L'obiettivo è misurare e capire il sistema prima di cambiarlo. Nessuna ROM, applicazione o servizio è stato modificato da questo progetto.

## Obiettivi

1. **Discovery** — inventario verificato di hardware, Android reale, build, MCU, partizioni, processi, servizi, permessi e applicazioni.
2. **Security & privacy audit** — valutazione del software preinstallato, privilegi, background activity e possibili connessioni di telemetria con evidenze.
3. **Debloat mirato** — classificazione pacchetti e rimozione/disabilitazione *solo dopo approvazione*, reversibilità e test delle funzioni automobilistiche.
4. **Performance** — misure ripetibili prima/dopo: avvio, RAM, CPU, storage, launcher e collegamento del telefono.
5. **Software updates** — verifica dei componenti installati, versioni ufficiali, firme APK, launcher, Android Auto e applicazioni audio.
6. **Firmware & MCU** — ricerca e valutazione di immagini e aggiornamenti compatibili; **nessun flash** senza identificazione esatta e strategia di recovery.
7. **Audio** — caratterizzazione del DSP/percorsi audio e regolazioni ripristinabili, solo quando conosciamo l'hardware.

## Approccio: prima i repository per autoradio

- [CleanYourHeadUnit](https://github.com/maxhayim/CleanYourHeadUnit): riferimento operativo ADB per inventario / audit, da revisionare prima dell'uso.
- [headunit-debloat-skill](https://github.com/hamza39460/headunit-debloat-skill): metodologia di revisione e debloat.
- [android-head-unit-exploration](https://github.com/andresurena/android-head-unit-exploration): metodologia di indagine su hardware simile.
- Strumenti Android generici **solo per lacune effettive**. Non copiamo patch di altri modelli.

## Stato della nostra unità

Target dichiarato: Junsun V9 Pro 4+64 GB su Fiat Bravo II, Qualcomm MSM8953, X-258 Overseas, display 1280×720, MCU G10625. **Tutto da confermare dove possibile con ADB e identificazione fisica.** I dati comunicati in precedenza sono indizi iniziali, non una baseline tecnica. Vedere [DEVICE](docs/DEVICE.md).

## Per iniziare su Windows

Leggi [SETUP-WINDOWS](docs/SETUP-WINDOWS.md). Installa le Platform Tools ufficiali, verifica il Junsun come dispositivo ADB autorizzato, raccogli una [baseline](docs/BASELINE.md) usando, se opportuno, lo [script di sola lettura](scripts/windows/Collect-JunsunReadOnly.ps1). Conserva i report **solo localmente**.

## Documentazione operativa

- [ROADMAP](docs/ROADMAP.md) — fasi, deliverable e condizioni di passaggio
- [DEVICE](docs/DEVICE.md) — informazioni da verificare
- [UPSTREAM](docs/UPSTREAM.md) — strumenti esistenti e strategia di riuso
- [SETUP-WINDOWS](docs/SETUP-WINDOWS.md) — primi passi ADB
- [BASELINE](docs/BASELINE.md) — metriche e test funzionali
- [PRIVACY & PERFORMANCE](docs/PRIVACY-PERFORMANCE-PLAN.md) — schema audit
- [DEBLOAT](docs/DEBLOAT.md) — classificazione e rollback
- [SOFTWARE UPDATES](docs/SOFTWARE-UPDATES.md) — verifica aggiornamenti app
- [FIRMWARE](docs/FIRMWARE-RESEARCH.md) — verifica ROM / MCU
- [AUDIO](docs/AUDIO-PLAN.md) — metodo di diagnosi DSP
- [NEXT STEPS](docs/NEXT-STEPS.md) — prossima sessione

## Regole

Il repository è **pubblico**. Non caricare log ADB grezzi, Device ID, seriali, MAC, SSID, account, credenziali o dati di posizione. Non disabilitare componenti CANBUS, comandi al volante, alimentazione/standby, radio, retrocamera, DSP, BT, Wi-Fi, telefonia o software sconosciuto senza verificarne la funzione.

**Non eseguire operazioni distruttive o flash su suggerimento automatico di un agente.** Ogni cambiamento richiede consenso, backup dove possibile e rollback testato.
