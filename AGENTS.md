# Codex — regole operative Junsun

## Missione
Audit tecnico **da zero** di una autoradio Android Junsun V9 Pro: inventario, bloatware, telemetria, performance, app / firmware / MCU e audio. Riutilizzare prima gli strumenti per autoradio citati in [UPSTREAM](docs/UPSTREAM.md); non costruire un secondo debloater.

## Unità target
Informazioni preliminari: Junsun V9 Pro 4+64 GB, Qualcomm MSM8953, X-258 Overseas, G2984, display 1280×720, MCU G10625. Nessuna identificazione ADB effettuata. Non trattare i nomi commerciali come prova di compatibilità firmware.

## Vincoli esecutivi
- Prima di operare: verificare l'output di `adb devices -l`, identificare **univocamente** l'autoradio, ottenere autorizzazione debug dal dispositivo; usare **sempre** `adb -s <seriale>`. Auto parcheggiata, alimentazione stabile.
- **Fase 0-1: solo lettura.** Ammessi `getprop`, `pm list packages`, `dumpsys`, `df` e comandi informativi espressamente autorizzati. Non eseguire script terzi senza revisione del codice/versione.
- **Vietato senza approvazione puntuale:** `pm disable-user`, `pm uninstall`, `pm clear`, `settings put`, `adb install/push`, `adb tcpip`, `setprop`, `reboot`, `su/root`, flashing, reset, modifica DSP, MCU, partizioni o CANBUS.
- Non escludere automaticamente componenti solo perché sconosciuti o preinstallati; conservare tutto ciò che serve alle funzioni automobilistiche.
- Debloat futuro: una modifica alla volta, pacchetto e dipendenze identificati, backup realistico, ripristino verificato e test funzionali dopo ogni cambio.
- Report grezzi locali. Prima di proporre o leggere file pubblicati, rimuovere seriali, MAC, SSID, numeri, account, token, GPS, chiamate, dettagli personali. Non inviare log ad API esterne.
- **Separare** fatto verificato, ipotesi, segnalazione di terzi e fonte. Misurare prima/dopo; più RAM libera non implica automaticamente più velocità.
- Firmare/aggiornare APK solo dopo verifica pacchetto, firma, sorgente e compatibilità. Un nome firmware simile non giustifica flash.

## Output fase 1
Inventario hardware/software, versione Android/API reali, pacchetti e processi, baseline con metriche, lista `KEEP / REVIEW / UNKNOWN` con evidenza, criticità e proposte **non ancora applicate**. Vedi [ROADMAP](docs/ROADMAP.md).
