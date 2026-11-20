# Baseline da compilare a veicolo fermo

| Metrica/funzione | Prima | Dopo | Metodo |
|---|---|---|---|
| Livello API Android | da misurare | | `adb shell getprop ro.build.version.sdk` |
| RAM totale e disponibile a riposo | da misurare | | `adb shell dumpsys meminfo` |
| Spazio libero su /data | da misurare | | `adb shell df -h /data` |
| Avvio autoradio fino a launcher usabile | da misurare | | cronometro, stessa condizione iniziale |
| Connessione Android Auto wireless | da misurare | | Pixel 7, stesso test |
| Avvio Android Auto USB | da misurare | | stesso cavo e condizioni |
| Reattività launcher / apertura app | da misurare | | cronometro e osservazioni |
| Chiamate Bluetooth | verificare | | prova a veicolo fermo |
| Radio FM | verificare | | test manuale |
| Fader / balance / DSP | verificare | | screenshot preset e test |
| Comandi al volante | verificare | | test manuale |
| Retrocamera, se presente | verificare | | test a veicolo fermo |
| CANBUS / indicatori veicolo | verificare | | test manuale |
| Standby / ripresa | verificare | | osservazione manuale |

Annotare temperatura, app aperte, durata di attività e versione firmware in forma non identificante. Nessun dato grezzo del veicolo in GitHub.
