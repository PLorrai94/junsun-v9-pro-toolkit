# Checklist operativa — partire da zero

## Milestone M0: stabilire il collegamento Windows ↔ autoradio
- [ ] Installare Android SDK Platform Tools ufficiali.
- [ ] Verificare opzioni sviluppatore e un metodo ADB disponibile sul Junsun.
- [ ] Riconoscere **univocamente** il dispositivo tramite `adb devices -l`.
- [ ] Confermare autorizzazione, alimentazione e veicolo parcheggiato.
- [ ] Leggere il codice dello script [Collect-JunsunReadOnly.ps1](../scripts/windows/Collect-JunsunReadOnly.ps1) prima dell'eventuale uso.

## Milestone M1: fotografare il sistema, zero modifiche
- [ ] Leggere API / fingerprint / board / build e metadati hardware.
- [ ] Inventariare app, servizi e componenti OEM.
- [ ] Salvare report **soltanto localmente** e preparare sintesi anonimizzata.
- [ ] Compilare [BASELINE](BASELINE.md) incluse radio, comandi al volante, MCU/CANBUS, audio e alimentazione.

## Milestone M2: audit e proposta, senza debloat automatico
- [ ] Revisionare il codice di CleanYourHeadUnit e fissarne il commit.
- [ ] Classificare pacchetti: KEEP / REVIEW / UNKNOWN.
- [ ] Valutare telemetria e processi con fatti riproducibili.
- [ ] Proporre interventi specifici con rischi, rollback e test.

## Milestone M3: decisioni successive
- [ ] Debloat singoli pacchetti **solo approvati e recuperabili**.
- [ ] Catalogo aggiornamenti applicazioni (versioni, firme, provenienza).
- [ ] Studio firmware/MCU e compatibilità **senza flash**.
- [ ] Analisi audio/DSP e interventi ripristinabili.

**Prossima azione effettiva:** verificare ADB sullo stereo. Fino a quel momento, nessuna diagnosi o ottimizzazione è stata eseguita.
