# Ripartenza pratica — prossima sessione

## Dove siamo
Tutto il lavoro **documentale** è conservato nel repository. Nessun ADB collegato al Junsun, nessun rapporto raccolto, nessun firmware flashato o app disinstallata.

## Checklist minima Windows
- [ ] Scaricare [Android SDK Platform Tools](https://developer.android.com/tools/releases/platform-tools) da Google.
- [ ] Verificare nelle impostazioni Android **originali** del Junsun se esistono Opzioni sviluppatore, Debug USB e/o Debug wireless.
- [ ] A veicolo parcheggiato, verificare una connessione supportata. La USB per Android Auto **non implica** che la porta accetti ADB da PC.
- [ ] In PowerShell, `adb devices -l` e identificare il Junsun (non il Pixel 7). Non pubblicare seriali.
- [ ] Leggere [SETUP-WINDOWS](SETUP-WINDOWS.md); solo dopo code review eseguire, se desiderato, lo [script read-only](../scripts/windows/Collect-JunsunReadOnly.ps1) indicando il seriale.
- [ ] Conservare report localmente; anonimizzarli prima di farli analizzare da Codex/Claude o caricarli in un PR.
- [ ] Compilare [BASELINE](BASELINE.md) con metriche e test funzioni auto.
- [ ] Solo dopo, valutare audit manuale di CleanYourHeadUnit e privacy/telemetria.

## Firmware
- [ ] Scaricare opzionalmente un candidato pubblico per **analisi offline**, non per installazione.
- [ ] Calcolare SHA256 e registrare la provenienza.
- [ ] Elencare file di archivio senza eseguirli.
- [ ] Confrontare fingerprint, board, metadata e revisioni con la baseline reale.
- [ ] Non installare nulla finché non esistono compatibilità documentata e procedura recovery.

## Criteri di completamento v0.1
Report privato, inventario e baseline accurata, tabella KEEP/UNKNOWN/REVIEW, risultati in sola lettura, nessuna funzione auto compromessa e nessun dato identificativo pubblicato.
