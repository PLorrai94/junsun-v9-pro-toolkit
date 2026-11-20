# Strumenti esistenti per autoradio: strategia di riuso

**Non duplicare strumenti che fanno già il lavoro.** Esaminarne prima la licenza, il codice, la revisione Git e la compatibilità; non fidarsi di script di debloat o profili per altri hardware.

1. [CleanYourHeadUnit](https://github.com/maxhayim/CleanYourHeadUnit) — riferimento principale per inventario ADB, audit privacy e classificazione. Prima di utilizzare i suoi comandi, verificare cosa eseguono davvero e quali supportano modalità sola lettura.
2. [headunit-debloat-skill](https://github.com/hamza39460/headunit-debloat-skill) — metodologia per agenti e interventi graduali. Non trasferire automaticamente whitelist/blacklist da altre autoradio.
3. [android-head-unit-exploration](https://github.com/andresurena/android-head-unit-exploration) — metodo per analizzare un dispositivo con SoC analogo. L'identità del SoC **non implica** firmware o software equivalente.

## Quando usare strumenti Android generici
Solo quando manca una funzione: Android SDK Platform Tools, lettura di pacchetti, confronti firme APK e benchmark. Generic debloat lists non sono compatibili automaticamente con servizi automotive.

## Come includere dipendenze
Preferire link o riferimenti a commit/tag invece di copiare codice. Se lo integriamo, controllare licenza e attribuzioni, proporre upstream miglioramenti generalizzabili. Nessuna esecuzione di codice esterno automatica al setup.

## Criteri di valutazione
Licenza disponibile; comandi verificabili e riproducibili; identificazione dispositivo; default read-only; protezioni per funzioni auto; test su hardware reale; rollback e documentazione. Riportare limiti e compatibilità effettivamente osservate.
