# Piano privacy, telemetria e prestazioni

## Obiettivo
Identificare applicazioni non necessarie e possibili invii di dati, **senza** trattare un'app sconosciuta come malevola e **senza** ridurre la funzionalità automobilistica.

### 1. Inventario controllato
- Sul Junsun via ADB autorizzato: pacchetti di sistema, pacchetti utente, installer, UID, stato enabled/disabled e componenti essenziali.
- Analizzare prima gli output del toolkit `CleanYourHeadUnit` dopo code review, non eseguire il debloat.
- Classificare ogni pacchetto come `KEEP`, `UNKNOWN`, `REVIEW`; `UNKNOWN` è protetto, non candidato da rimuovere.
- Registrare il motivo della classificazione e una fonte tecnica verificabile. Preservare MCU/CANBUS, radio, Bluetooth, Wi-Fi, audio, telecamera, alimentazione, launcher e CarLetter.

### 2. Telemetria: indicatore vs prova
- Permessi, manifest, nomi package e presenza di servizi cloud sono **indicatori**, non prova di tracking.
- Con `dumpsys netstats` possono emergere volumi di traffico per UID ma non necessariamente server di destinazione o contenuto.
- Per individuare connessioni effettive serviranno condizioni riproducibili, dati di rete raccolti localmente in modo legittimo e analisi separata, senza intercettare o pubblicare contenuti personali.
- Nessun report grezzo su GitHub pubblico; lavorare su una copia sanificata.

### 3. Prestazioni, metodo replicabile
- Prima e dopo registrare: latenza apertura launcher, tempo di connessione AA wireless/USB, `dumpsys cpuinfo`, `dumpsys meminfo`, spazio /data e applicazioni in background.
- Ripetere prove almeno tre volte, a parità di condizioni (stesso telefono, alimentazione, temperatura e app aperte); distinguere standby/warm boot da cold boot.
- Non usare la RAM libera da sola come prova di velocità.
- Nessuna regolazione kernel, governor o overclock in questa fase.

### 4. Modifiche future (NON autorizzate ora)
Ogni modifica richiede: pacchetto specifico, ruolo verificato, misura iniziale, stima beneficio, piano di rollback, test delle funzioni auto e approvazione esplicita. Una modifica per volta.
