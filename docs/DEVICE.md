# Device profile — dati preliminari da verificare

| Campo | Informazione preliminare | Come validare |
| --- | --- | --- |
| Veicolo | Fiat Bravo II (198) | installazione reale |
| Modello commerciale | Junsun V9 Pro, 4 GB RAM + 64 GB storage | etichetta, menu e ADB |
| SoC dichiarato | Qualcomm MSM8953 | proprietà sistema + dati hardware |
| Android mostrato | 13 | `ro.build.version.sdk`, fingerprint e controlli consistenza |
| Firmware mostrato | `3474.20240925.104112.G2984` | `getprop`, schermate build OEM |
| Piattaforma OEM | X-258 Overseas | pacchetti, proprietà e menu OEM |
| MCU mostrata | V0.22.9 G10625 | menu MCU / file identificativi |
| Display | 1280×720 | `wm size`, hardware |
| Radio, DSP, MCU, CANBUS | tipologia non verificata | inventario app e hardware |
| Connettività USB / debug wireless | supporto ignoto | test fase 0 |

## Stato di verifica
**Nessuna lettura ADB ancora registrata.** Il nome Junsun V9 Pro e i codici G2984/MSM8953 potrebbero descrivere varianti con componenti incompatibili. Le versioni mostrate dal produttore non sostituiscono la verifica reale.

## Per la prima sessione
Misurare CPU/API, elenco pacchetti, servizi, memoria e storage. Per DSP/MCU/CANBUS annotare ciò che Android può effettivamente vedere e ciò che rimane sconosciuto.
