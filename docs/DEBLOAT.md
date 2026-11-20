# Debloat conservativo per autoradio Android

**Il debloat non parte da una blacklist generica.** Si parte dall'inventario ottenuto **su questo dispositivo** e dall'analisi delle dipendenze.

## Matrice pacchetti

| Pacchetto | Origine / installer | Funzione osservata | Privilegi / servizi | Dipendenze auto | Decisione | Evidenza | Rollback |
|---|---|---|---|---|---|---|---|
| *da rilevare* | | | | | UNKNOWN | | |

Stati possibili:
- **KEEP** — componenti Android essenziali, servizi OEM di controllo auto o app con funzione accertata.
- **REVIEW** — candidato per studio **non** per rimozione automatica; richiede dipendenze e test.
- **UNKNOWN** — funzione non chiarita; **non modificare**.

## Procedura per ogni candidato
1. Identificare package name esatto, APK e firma se disponibile, servizi / receiver / permessi e relazione con altri processi.
2. Verificare con fonti affidabili la funzione; preservare componenti automotive, power management, USB/BT/Wi-Fi, radio, amplificatore, MCU/DSP, retrocamera e controller CANBUS.
3. Registrare stato iniziale, metodo di ripristino e un backup **realmente recuperabile**. Un export APK non salva automaticamente dati, licenze o stato di app.
4. Formulare una proposta (comando + alternativa meno invasiva + rischi). Ottenere approvazione esplicita prima di qualsiasi scrittura su dispositivo.
5. Se approvata, effettuare **una** modifica per volta, verificare radio, audio, comandi al volante, retrocamera, chiamate, navigazione, standby e avvio.
6. Ripetere le misure della baseline e annotare risultati; rollback immediato in caso di regressione.

## Esempi da NON automatizzare
Non usare comandi di cancellazione / disabilitazione in batch, pacchetti ricavati da un'altra autoradio, operazioni con root o disinstallazioni permanenti per ottenere RAM libera. Non installare un launcher alternativo rimuovendo preventivamente quello OEM.

## Deliverable fase 2
Una tabella di revisione completa, non una lista di comandi da eseguire automaticamente.
