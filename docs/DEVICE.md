# Scheda del dispositivo (da verificare tramite ADB)

| Voce | Dato attualmente noto |
| --- | --- |
| Veicolo | Fiat Bravo II (198) |
| Autoradio | Junsun V9 Pro 4+64 GB |
| SoC dichiarato | Qualcomm MSM8953 / Snapdragon 625 |
| Display | 1280 x 720 |
| Android dichiarato | 13; API reale **non ancora verificata** |
| Piattaforma | X-258 Overseas |
| Firmware | `3474.20240925.104112.G2984` |
| MCU | `V0.22.9 G10625` |
| CarLetter | `8.1.6.20240920` |
| Canale CarLetter | `XZ03-450`, registrata |
| Smartphone Android Auto | Google Pixel 7 |

## Stato funzionale
Android Auto via USB e wireless funziona. Il precedente mancato avvio wireless era dovuto alla modalità aereo attiva sull'autoradio: non attribuire il guasto a CarLetter o al firmware.

## Da raccogliere nella baseline
API level effettiva, fingerprint, processi e pacchetti, eventuale famiglia firmware riconosciuta, percorso audio/DSP e disponibilità di collegamento ADB. Non includere qui seriali, MAC, SSID o dati personali.

## Limitazioni note
Stessa CPU o stesso prefisso firmware NON dimostrano compatibilità di ROM, driver display, MCU, CANBUS o sistemi DSP.
