# Avvio sicuro su Windows — solo lettura

1. A veicolo parcheggiato, installare [Android SDK Platform Tools](https://developer.android.com/tools/releases/platform-tools) e Git for Windows. Python serve per `cyhu`.
2. Sul Junsun cercare le opzioni sviluppatore e verificare se **USB debugging** e/o **Wireless debugging** sono effettivamente disponibili. Android 13 dichiarato non assicura che il debug wireless moderno sia supportato.
3. Collegare Junsun e Windows solo tramite una modalità ADB supportata: alcuni connettori USB delle autoradio agiscono solo da host Android Auto, quindi non possono collegarsi al PC come device.
4. In PowerShell, dalla cartella Platform Tools, eseguire `./adb.exe devices -l`. Se appare `unauthorized`, approvare sullo stereo. Se appare anche il Pixel 7, **non procedere** senza selezione univoca del seriale del Junsun.
5. Prima diagnosi di sola lettura, sostituendo `<SERIALE_JUNSUN>` con quello reale (non pubblicarlo):

```powershell
.\adb.exe -s <SERIALE_JUNSUN> shell getprop ro.build.version.sdk
.\adb.exe -s <SERIALE_JUNSUN> shell getprop ro.build.version.release
.\adb.exe -s <SERIALE_JUNSUN> shell getprop ro.product.board
.\adb.exe -s <SERIALE_JUNSUN> shell settings get global airplane_mode_on
```

6. Solo dopo audit del sorgente e selezione del device, clonare https://github.com/maxhayim/CleanYourHeadUnit e consultare la sua guida. Verificare i comandi con `--help` e fissare il commit: lo strumento `cyhu` è esterno a questo repository. **Non** eseguire comandi di modifica o installare un APK in v0.1.
7. Conservare tutti i report ADB grezzi **solo sul PC**, preferibilmente in una cartella non sincronizzata. Sanificare ogni dato prima di condividerlo con un agente AI. Alla fine disattivare ADB/debug wireless sullo stereo.

**Nota:** `adb shell dumpsys`, `pm list packages` e `logcat` possono contenere dati personali. Non allegarli mai direttamente a issue o pull request pubbliche.
