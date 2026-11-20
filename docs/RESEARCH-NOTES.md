# Note di ricerca — forum, strumenti e limiti

Questo file conserva **piste e riferimenti raccolti in conversazione**, non una certificazione tecnica delle segnalazioni degli utenti.

## Progetti per autoradio Android (priorità)
1. [CleanYourHeadUnit](https://github.com/maxhayim/CleanYourHeadUnit): punto di partenza ADB / inventario / privacy / debloat reversibile; adattamento da testare sulla piattaforma G2984.
2. [headunit-debloat-skill](https://github.com/hamza39460/headunit-debloat-skill): metodologia Claude Code e review, risultati prestazionali dell'autore non automaticamente riproducibili qui.
3. [android-head-unit-exploration](https://github.com/andresurena/android-head-unit-exploration): diagnostica MSM8953, ma piattaforma/software CarLetter diversi.
4. [UAD-NG](https://github.com/Universal-Debloater-Alliance/universal-android-debloater-next-generation) e [TopWay ADB Guide](https://github.com/StarMusa88/TopWay-Android-Headunit-ADB-Guide): riferimenti **secondari**. Non applicare disabilitazioni precompilate o procedure di un altro SoC.
5. [CleanYourTV](https://github.com/Gathin23/CleanYourTV): solo esempio concettuale, non base tecnica.

Vedere [UPSTREAM](UPSTREAM.md) per il riuso e le licenze.

## Segnalazioni firmware e ADB
- [Reddit — Junsun V9 Pro / CANBUS dopo aggiornamento](https://www.reddit.com/r/Androidheadunits/comments/1x0lzx7/junsun_v9_pro_error_can_bus/): utente con identificativi G2984/G10625 riferiti come simili; **non** equivale a compatibilità hardware. Richiamo al rischio di perdita comandi veicolo.
- [Reddit — V9 Plus e camera 360](https://www.reddit.com/r/Androidheadunits/comments/1uypd93/junsun_v9_plus_firmware_update_broke_my_360/): aggiornamento condiviso per modello diverso, menziona guasto telecamera.
- [XDA — Junsun 8667Q launcher/firmware](https://xdaforums.com/t/8667q-launchers-modification-of-junsun-v1-v2-or-another-8667q-devices-launchers.4705173/): **altra piattaforma**, non usare le ROM.
- [Forum DUDUAUTO — discussione MSM8953](https://forum.dudu-auto.com/d/106-dudu-launcher-global-updated-download/187): confronto tecnico, non identità di firmware.
- [Reddit — Android developer options/ADB per autoradio](https://www.reddit.com/r/Androidheadunits/comments/1uen4vc/android_developer_options_adb/): suggerimenti della comunità non verificati per X-258.
- [Firmware catalog Altair571](https://altair571.github.io/software) e [Firmware Drive scheda 126410](https://firmwaredrive.com/index.php?a=downloads&b=file&id=126410): vedi [FIRMWARE-CANDIDATES](FIRMWARE-CANDIDATES.md).

## Stato ADB
**Non connesso e non testato sul Junsun in questo progetto.** `adb devices -l`, `getprop`, `dumpsys` sono solo istruzioni proposte. Non è stato raccolto alcun dump reale; non ci sono ancora misure di RAM o audio.

## Domande aperte
- Versione Android/API reale e fingerprint della build?
- Collegamento ADB via USB device o debug wireless supportato dal firmware?
- Elenco pacchetti/servizi del Junsun e relativa funzione?
- Chip DSP e tipo di percorso audio (nativo vs app)?
- Autenticità, partizioni e dipendenze del firmware Generic Overseas?
