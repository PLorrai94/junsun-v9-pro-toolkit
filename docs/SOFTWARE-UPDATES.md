# Inventario e aggiornamenti del software

L'obiettivo è valutare versioni e alternative delle app dello stereo **solo dopo** la discovery ADB. Android Auto / mirroring, launcher, Bluetooth, navigazione e DSP sono *categorie*, non proposte di sostituzione automatica.

## Catalogo iniziale da creare

| Package name | Nome UI | VersionName / code | App sistema? | Firma | Fonte installazione | Update ufficiale | Rischio | Azione |
|---|---|---|---|---|---|---|---|---|
| *da rilevare* | | | | | | | | |

### Checklist per una singola app
- Leggere il nome package e la versione reali (es. `dumpsys package <package>`, laddove permesso).
- Determinare se è app utente, privilegiata, servizio OEM o interfaccia di hardware separato.
- Cercare aggiornamenti **ufficiali** o firmati compatibili; non assumere che due APK omonimi siano intercambiabili.
- Verificare provenienza del file, firma, Android API minima, architettura CPU, permessi e licenza/attivazione.
- Stabilire se l'APK è dipendente dal firmware, dalla MCU o da componenti OEM; un'app di sistema potrebbe non poter essere sostituita con un APK generico.
- Prima di qualunque installazione: piano di backup/ripristino, approvazione, test a veicolo fermo e confronto prima/dopo.

### Alternative Android Auto / launcher
Valutare solo dopo inventario del ricevitore attuale e del percorso Bluetooth/Wi-Fi/USB; preservare l'app originale finché la nuova soluzione non è comprovata. Un'app alternativa non promette automaticamente migliore audio o stabilità.

**Stato:** nessuna verifica diretta delle versioni e nessun aggiornamento applicato.
