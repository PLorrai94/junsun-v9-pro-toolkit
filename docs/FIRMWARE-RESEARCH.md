# Ricerca firmware/MCU: metodologia e piste non verificate

## Scopo
Individuare firmware e aggiornamenti **compatibili con la revisione fisica** dell'autoradio, non solo con la denominazione commerciale. Nessun pacchetto è stato validato o installato.

## Prima raccolta sull'unità
- `ro.build.fingerprint`, `ro.product.device`, `ro.board.platform`, `ro.hardware`, API, kernel; build OEM mostrata a schermo.
- Revisione scheda, controller display e touch, modem/wireless, MCU, DSP, memoria e partizioni, nella misura in cui sono identificabili.
- Funzioni veicolo con CANBUS/comandi al volante/retrocamera e configurazione originale.

## Piste da verificare, NON file approvati

| Variante riferita online | Fonte indicativa | Stato |
| --- | --- | --- |
| `Junsun_V9_Pro_G2984_258_Overseas_V7472.20260123.205244.zip` | [Firmware Drive](https://firmwaredrive.com/index.php?a=downloads&b=file&id=126410) | Archivio di terze parti, a pagamento, contenuto e compatibilità non verificati |
| `G2984_Project_Generic_Overseas_V8987.20260909.194844.7z` | [Altair571](https://altair571.github.io/software) (catalogo pubblico) | Varietà Generic Overseas, **non equivalente provata** a X-258 Overseas |
| `G2984_Project_Generic_V8921.20260901.213040.7z` | [Altair571](https://altair571.github.io/software) | Variante generica, compatibilità non verificata |

Le denominazioni sono **piste di ricerca** raccolte prima della discovery tecnica, non risultati di un confronto con l'hardware. Nessun file è stato analizzato; date e versioni sono etichette, non prove.

## Verifica offline, prima di qualsiasi flash
1. Scaricare **solo** da una fonte valutata attendibile, registrando URL/versione/data di recupero. Non eseguire installer sconosciuti.
2. Calcolare SHA-256 con `Get-FileHash`; la verifica d'integrità richiede un hash di riferimento autentico.
3. Ispezionare il contenuto con 7-Zip senza eseguire codice e senza collegare la chiavetta allo stereo.
4. Confrontare il tipo di pacchetto (OTA incrementale, recovery, full image), prerequisiti e metadati con la build reale e il layout delle partizioni.
5. Verificare driver display/touch, Wi-Fi/BT, audio/DSP, MCU e CANBUS, procedure recovery, alimentazione e backup.
6. Chiedere conferma per la **revisione hardware**, non genericamente per V9 Pro.

## Criterio di blocco
**Non flashare** se mancano procedura recovery testabile e compatibilità documentata. Non aggiornare la MCU senza un problema specifico e un file ufficialmente associato all'unità.
