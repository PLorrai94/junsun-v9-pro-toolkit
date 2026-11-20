# Analisi audio e DSP dell'autoradio

**Prima identificazione, poi ottimizzazione.** Non conosciamo ancora chip DSP, firmware audio, percorso dei segnali e configurazione degli altoparlanti della Fiat Bravo.

## Discovery
- Elenco app audio e servizi; identificare DSP/equalizzatore, amplificatore, DAC se visibile e rapporto con la MCU.
- Salvare **localmente** schermate e valori originali di EQ, fader/balance, crossover, filtri e livelli.
- Verificare se radio FM, Bluetooth, Android Auto e altre app passano dallo stesso percorso DSP.
- `adb shell dumpsys audio` è solo una vista Android; un DSP esterno potrebbe non essere documentato da ADB.

## Misure e modifiche
- Testare a volume di ascolto sicuro e simile, con gli stessi brani/segmenti, per riconoscere clipping, fruscio, distorsione, ritardo e livelli non allineati.
- Solo quando la catena audio è identificata: EQ moderata, filtri se supportati, bilanciamento, staging e livello delle sorgenti; confronto A/B e salvataggio preset.
- Non installare pacchetti audio di dubbia provenienza e non flashare DSP/MCU senza provenienza verificata e procedura recovery.

**Stato:** nessun test o cambiamento audio effettuato.
