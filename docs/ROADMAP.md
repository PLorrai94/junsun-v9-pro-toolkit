# Roadmap — Junsun V9 Pro Toolkit

## v0.1: Discovery e audit (NESSUNA MODIFICA AL DISPOSITIVO)
**0. Accesso ADB.** Veicolo parcheggiato, alimentazione stabile; autorizzazione debug, selezione univoca del Junsun, conferma della reale versione Android e metodo per disattivare il debug dopo la sessione.

**1. Inventario e baseline.** Audit del codice upstream prima di eseguirlo. Usare preferibilmente `cyhu` di CleanYourHeadUnit per status, inventory, diagnostics. Registrare app e risorse in file locali, proteggendo dati sensibili. Misurare tempi di avvio e reattività e testare funzioni auto secondo `BASELINE.md`.

**2. Privacy e telemetria.** Usare il catalogo `cyhu privacy audit` solo come indicatore iniziale. Classificare evidenze vs sospetti e separare servizi della vettura da app accessorie. Non concludere che assenza di rilevazioni equivalga ad assenza di telemetria. Un'analisi di traffico richiede una fase dedicata.

**Uscita v0.1:** report sanificato, prove ripetibili, classificazione KEEP / UNKNOWN / REVIEW e backlog di interventi; zero modifiche Android.

## v0.2: Proposta di ottimizzazione reversibile
Usare la metodologia `headunit-debloat-skill`, non una lista generica di app. Per ogni candidato: funzione, evidenze, impatto, comando previsto, rollback, metriche e test funzionali. Approvazione separata per ogni intervento. Nessuna azione automatica.

## v0.3: Android Auto e connettività
CarLetter funziona wireless e USB dopo la correzione della modalità aereo: preservarla. Analizzare tempi di avvio, Wi-Fi/BT, compatibilità di eventuali alternative e condizioni che permettono un confronto reale, senza perdere licenza.

## v0.4: Audio e DSP
Identificare il percorso audio e l'eventuale DSP separato. Documentare i preset originali; confrontare impostazioni a parità di sorgente e volume; nessun incremento arbitrario del gain. Firmware DSP non modificato.

## v0.5: Compatibilità firmware
Confrontare metadati G2984/X-258/G10625 e revisioni hardware, senza assumere compatibilità dal nome commerciale. Nessun flash prima di origine affidabile, checksum, istruzioni per questo modello e procedura recovery.

## Regola trasversale
Proteggere radio, CANBUS, MCU, retromarcia, comandi al volante, audio, DSP, Bluetooth, Wi-Fi, standby e servizi sconosciuti. Adottare strumenti generic Android soltanto in assenza di una soluzione specifica per autoradio.
