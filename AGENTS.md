# Istruzioni per Codex: Junsun V9 Pro Toolkit

## Missione
Usare prima repository dedicati alle autoradio Android. Non creare un nuovo debloater: estendere eventualmente un progetto esistente solo in presenza di una lacuna documentata.

## Dispositivo
Junsun V9 Pro 4 GB/64 GB; Fiat Bravo II (198); Qualcomm MSM8953; display 1280x720; firmware dichiarato `3474.20240925.104112.G2984`, X-258 Overseas; MCU `V0.22.9 G10625`. CarLetter `8.1.6.20240920`, canale `XZ03-450` registrato. Android 13 è dichiarato: verificare API reale con ADB. Non inferire compatibilità firmware dai soli codici G2984 o MSM8953.

## Procedura obbligatoria
1. Prima di qualsiasi comando su dispositivo, verificare che ADB sia autorizzato e che il seriale selezionato appartenga al Junsun, non al Pixel 7.
2. **Fase v0.1: SOLO LETTURA.** Consentiti comandi `getprop`, `pm list packages`, `dumpsys`, `df`, `settings get` selezionati. Scrivere i report solo localmente e sanificarli prima di condividerli.
3. Non eseguire, senza approvazione puntuale: `pm disable-user`, `pm uninstall`, `pm clear`, `settings put`, `setprop`, `adb tcpip`, `adb install`, `adb push`, `reboot`, `root`, `fastboot`, flash o modifica di MCU/DSP.
4. Considerare **protetti** Android core, launcher, CANBUS, MCU, comandi al volante, Bluetooth, Wi-Fi, radio, retrocamera, alimentazione/standby, DSP, amplificatore, chiamate, CarLetter e servizi sconosciuti. Sconosciuto ≠ bloatware.
5. L'app CarLetter funziona ora in USB e wireless: il problema wireless precedente dipendeva dalla modalità aereo. Preservare licenza e funzionalità.
6. Non usare pacchetti, patch o comandi di altri modelli come istruzioni di flash. Eseguire audit del codice e fissare un commit upstream prima di provare qualunque tool.
7. Separare **fatti osservati**, **ipotesi** e **valutazioni**. Nessun beneficio prestazionale dedotto dalla sola RAM libera.
8. Modifiche future solo una alla volta, con motivazione, metriche, approvazione, test a veicolo fermo e rollback verificabile.
9. Non pubblicare su GitHub log grezzi, seriali, indirizzi MAC, SSID, account, numeri, posizione, credenziali o token. Nessun upload automatico.

## Repository prioritari
- https://github.com/maxhayim/CleanYourHeadUnit — motore ADB (`cyhu`), classificazione, inventario, privacy e backup.
- https://github.com/hamza39460/headunit-debloat-skill — processo conservativo e review.
- https://github.com/andresurena/android-head-unit-exploration — metodo di indagine per MSM8953, non patch ZLink.
- Android generico soltanto se manca una funzione; CleanYourTV è esclusivamente ispirazione.

## Output atteso
Report di sola lettura, baseline, elenco pacchetti KEEP/UNKNOWN/REVIEW con prove e confidenza, proposte reversibili. Mai applicare le proposte automaticamente.
