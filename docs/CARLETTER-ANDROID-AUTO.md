# CarLetter e Android Auto: dati e stato accertato

## CarLetter installata (dalla fotografia del dispositivo)
- Nome: **CarLetter — Phone Link**
- Software: `8.1.6.20240920` (data apparente 20 settembre 2024)
- Channel: `XZ03-450`, stato **Registered**
- SDK: `V3.6.2.0601`
- Autoradio: Junsun V9 Pro, X-258 Overseas / G2984
- Telefono: Google Pixel 7

**Non pubblicare in questo repository il Device ID mostrato dalla schermata CarLetter.** La fotografia originale non va copiata su GitHub pubblico.

## Incidente risolto
All'inizio: Bluetooth HFP/A2DP funzionante (musica e chiamate), Android Auto wireless non partiva mentre la modalità USB era funzionante. L'utente ha poi individuato **modalità aereo attivata sul Junsun**, non visibile chiaramente nelle impostazioni personalizzate. Dopo averla disattivata, il collegamento wireless è tornato a funzionare.

**Conclusione supportata:** quella specifica anomalia era compatibile con la modalità aereo; non abbiamo evidenze che fosse dovuta a Waze, a CarLetter obsoleta o al firmware.

## Come funziona wireless
Il Bluetooth contribuisce ad associazione/avvio; Android Auto wireless richiede anche collegamento Wi-Fi. Il Bluetooth normale può funzionare quando Android Auto wireless non si avvia.

## Diagnostica da mantenere
- Prima di reinstallare o cancellare app: stato modalità aereo (`adb shell settings get global airplane_mode_on`) e Wi-Fi.
- Verifica BT e Wi-Fi separatamente, poi USB come test di controllo.
- Salvare la versione e lo stato di registrazione CarLetter; **non cancellare i dati e non disinstallare** senza disponibilità dell'installer ufficiale e conferma del ripristino licenza.

## Alternative considerate, non approvate
- [Headunit Reloaded](https://play.google.com/store/apps/details?id=gb.xxy.hr), ricevitore alternativo Android Auto; funzionalità/compatibilità con questo Bluetooth non verificate.
- [Open Headunit](https://github.com/andreknieriem/open-headunit), progetto open source da valutare, non testato su questa autoradio.
- ZLink / TLink sono altre famiglie di app per autoradio, **non necessariamente sostituti intercambiabili** di CarLetter.

Il manuale ufficiale CarLetter è consultabile su https://course.carletter.cn/?cate=e . Non è stato trovato un APK ufficiale confermato per il canale XZ03-450; nessun aggiornamento dell'app è stato effettuato.
