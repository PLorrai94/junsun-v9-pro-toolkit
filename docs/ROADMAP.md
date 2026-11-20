# Roadmap tecnica — dall'inventario alle ottimizzazioni

## Fase 0 — Collegamento e controllo ambiente
**Deliverable:** Windows + ADB funzionante e dispositivo riconosciuto. Testare USB / debug wireless effettivamente supportati; usare seriale specifico. Nessun root o modifica.

## Fase 1 — Discovery e baseline (read-only)
- Proprietà sistema, versione reale Android/API, fingerprint, build, SoC, RAM, storage, servizi attivi, schema app e OEM.
- Identificazione dei componenti auto (MCU, CANBUS, audio/DSP, Bluetooth, Wi-Fi, telecamera, launcher), distinguendo visibilità ADB da informazioni non accessibili.
- Misure ripetibili: boot, apertura app, RAM/CPU/storage e test di radio, comandi al volante, Bluetooth, Android Auto, camera, standby.
- Archiviazione report localmente e sintesi pubblicabile senza identificativi.
**Gate:** inventario verificato, baseline e test funzionali registrati.

## Fase 2 — Audit privacy e bloatware (analisi, non modifiche)
- Prendere come base CleanYourHeadUnit dopo review di codice e dei comandi.
- Mappare pacchetti con funzione, launcher, servizi, permessi e dipendenze; classificare `KEEP / REVIEW / UNKNOWN`.
- Esaminare indicazioni di telemetria: permessi e traffico **non provano** da soli esfiltrazione.
**Gate:** ogni candidato ha evidenze, dipendenze e test di regressione.

## Fase 3 — Debloat e prestazioni (solo approvazione specifica)
- Prima backup delle configurazioni e degli APK dove accessibili; non presupporre il ripristino senza test.
- Disabilitare eventualmente **una sola app non critica** per volta, mai il core automotive o servizi sconosciuti.
- Misure prima/dopo in condizioni simili, test veicolo fermo, rollback.
**Gate:** incremento misurabile, zero regressioni auto.

## Fase 4 — Aggiornamento applicazioni e interfaccia
- Inventario dei pacchetti con versione, sorgente e firma.
- Ricercare versioni aggiornate ufficiali OEM e alternative per launcher, ricevitore Android Auto, navigazione e audio; verificare compatibilità, firma e licenze.
- Nessuna sostituzione dei servizi OEM senza piano di recupero.
**Gate:** confronto pratico con la versione installata e vantaggio documentato.

## Fase 5 — Audio / DSP
- Identificare chip e percorso audio, fotograficamente/tecnicamente registrare preset attuali e testare sorgenti.
- EQ, crossover e livelli solo se supportati e con rollback.
**Gate:** prove d'ascolto a volume equivalente e assenza di clipping.

## Fase 6 — Firmware / MCU
- Cercare e analizzare offline le immagini, confrontando board, partizioni, BSP, driver touch, BT, DSP e MCU.
- Esigere sorgente attendibile, integrità verificata dove possibile, procedura di flash **per la revisione** e recovery.
**Gate:** nessun flash senza compatibilità dimostrata e piano di recupero.

**Regola:** nessun aggiornamento deve precedere la discovery. La fase zero non presuppone che il debug wireless sia supportato.
