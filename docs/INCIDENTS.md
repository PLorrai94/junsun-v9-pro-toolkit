# Problemi riscontrati e risoluzioni

## INC-001: Android Auto wireless non si collegava (RISOLTO)

**Sintomi iniziali**
- Google Pixel 7 associato via Bluetooth al Junsun V9 Pro
- Musica e chiamate Bluetooth normali
- CarLetter riconosceva Bluetooth ma non avviava Android Auto wireless
- Android Auto collegato tramite USB funzionava

**Causa effettivamente individuata dall'utente**
Modalità aereo **attiva sullo stereo**. L'interfaccia Junsun non la segnalava chiaramente; il problema è stato notato entrando nelle impostazioni Android originali. Dopo la disattivazione, il wireless è tornato operativo.

**Lezioni**
- Testare `settings get global airplane_mode_on` in ogni nuova diagnosi wireless.
- Non attribuire un guasto a Waze o all'aggiornamento CarLetter senza evidenza.
- Non reinstallare app, resettare il firmware o aggiornare MCU come prima misura.
- Conservare questo scenario come test di regressione in `BASELINE.md`.

**Stato:** risolto senza flash né sostituzione CarLetter.

## INC-002: Stabilità sporadica Bluetooth (NON ANCORA DIAGNOSTICATA)

Era stata riferita occasionalmente una sensazione di blocco Bluetooth. Non abbiamo log di errori, frequenza, timestamp o una riproduzione controllata. Non trattare questo rapporto come prova di un guasto del firmware.

**Prossimi dati necessari:** versione stack BT, eventi logcat locali opportunamente sanificati, condizioni di riproduzione e presenza di interferenze / modalità aereo. Prima verificare che il problema persista.
