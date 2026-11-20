# Registro firmware — G2984 / X-258 Overseas

> **Ricerca documentale, NON una lista di file compatibili verificati.**
> Nessun archivio è stato scaricato, estratto, analizzato o installato da questo progetto. Non esistono ancora dump ADB o verifiche della revisione della scheda. Non eseguire flash sulla base del nome.

## Identità dichiarata del Junsun

- Modello commerciale: Junsun V9 Pro 4 GB / 64 GB, Fiat Bravo II (198)
- SoC riferito: Qualcomm MSM8953 / Snapdragon 625
- Display: 1280×720
- Piattaforma: `X-258 Overseas`
- **Build installata:** `3474.20240925.104112.G2984` (data apparente 25 settembre 2024)
- MCU: `V0.22.9 G10625`
- Android 13: solo versione mostrata nell'interfaccia, non verificata con API level

## Pacchetti e fonti emersi nella ricerca

| Riferimento | Nome/versione | Provenienza | Stato |
| --- | --- | --- | --- |
| **A — G2984 X-258** | `Junsun_V9_Pro_G2984_258_Overseas_V7472.20260123.205244.zip` | [Firmware Drive, scheda 126410](https://firmwaredrive.com/index.php?a=downloads&b=file&id=126410) | Archivio terzo, download soggetto a pagamento; **compatibilità non verificata** |
| **B — G2984 Generic Overseas** | `G2984_Project_Generic_Overseas_V8987.20260909.194844.7z` | [Altair571 SPD Firmware](https://altair571.github.io/software), screenshot del catalogo condiviso in chat | File elencato, 2,48 GB, build apparente 9 settembre 2026; **non installare** |
| **C — G2984 Generic** | `G2984_Project_Generic_V8921.20260901.213040.7z` | [Altair571 SPD Firmware](https://altair571.github.io/software), stesso screenshot | File elencato, 2,35 GB, build apparente 1 settembre 2026; **non installare** |
| D — G2984 OTA | Pacchetto OTA legato alla build `3568.20241010.181105` (secondo catalogo) | Altair571 | Da escludere come aggiornamento diretto della nostra build `3474...`, salvo prova tecnica contraria |
| E — V9 Plus | File Drive linkato da utente Reddit | [Discussione V9 Plus](https://www.reddit.com/r/Androidheadunits/comments/1uypd93/junsun_v9_plus_firmware_update_broke_my_360/) | Modello differente, segnalato problema camera 360 dopo update, **non candidato** |
| F — 8667Q | ROM condivise su forum XDA | [Discussione Junsun 8667Q](https://xdaforums.com/t/8667q-launchers-modification-of-junsun-v1-v2-or-another-8667q-devices-launchers.4705173/) | Piattaforma differente, **non compatibile con MSM8953/G2984** |

Dimensioni, date e nomi dei candidati B/C sono trascritti dalla schermata inviata dall'utente, **non dal contenuto degli archivi**. Un link pubblico non garantisce download realmente gratuito, integrità, autenticità o compatibilità.

## Perché `Generic_Overseas` non equivale a `X-258 Overseas`

`G2984` e `Overseas` possono indicare una famiglia firmware o mercato, non una revisione precisa. Occorre controllare partizioni, proprietà di build, device/board, kernel, driver Wi-Fi/BT, touch, orientamento schermo, DSP, CANBUS, retrocamera e MCU. Una differenza su questi componenti può impedire l'avvio o togliere funzioni veicolo.

## Procedura di verifica **offline** proposta

1. Ottenere un file e annotare **fonte, URL e data** del download. Evitare eseguibili e downloader terzi.
2. Su Windows calcolare hash: `Get-FileHash -Algorithm SHA256 "C:\\percorso\\firmware.7z"`. Un hash locale **non prova autenticità** senza un riferimento attendibile.
3. Elencare senza eseguire file: `& "C:\\Program Files\\7-Zip\\7z.exe" l "C:\\percorso\\firmware.7z"`. Non lanciare tool estratti automaticamente.
4. Da ADB su **Junsun specificamente selezionato**, leggere `ro.build.fingerprint`, `ro.product.device`, `ro.board.platform`, `ro.build.version.sdk`, `ro.hardware`, `ro.bootloader` (se disponibili) ed eventuale descrizione hardware.
5. Confrontare metadata interni e prerequisiti OTA/partizioni con la baseline; documentare ciò che resta sconosciuto.
6. Chiedere conferma puntuale al venditore della *stessa revisione hardware* e documentare una procedura di recupero **prima** di considerare un flash.

## Stato della decisione

**NESSUN FIRMWARE APPROVATO PER INSTALLAZIONE.** La priorità rimane il controllo di hardware e firmware via ADB in sola lettura, poi esame offline del candidato B. Un firmware del 2026 non garantisce né Android più recente né prestazioni migliori.
