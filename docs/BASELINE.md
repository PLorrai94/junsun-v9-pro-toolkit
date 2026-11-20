# Baseline tecnica — compilare prima di qualsiasi modifica

Nessuna metrica è stata ancora acquisita. Condizioni: veicolo parcheggiato, alimentazione equivalente, stessa app e stesso telefono per i test; distinguere avvio a freddo da ripresa standby.

| Ambito | Metrica | Prima | Dopo | Metodo |
|---|---|---|---|---|
| Hardware | SoC, API, RAM, storage, build e kernel | da verificare | | proprietà ADB, display OEM |
| Prestazioni | secondi per boot freddo / ripresa | da misurare | | cronometro ×3 |
| UI | tempo apertura launcher / impostazioni | da misurare | | cronometro ×3 |
| Risorse | CPU, RAM e spazio /data a riposo | da misurare | | dumpsys/df |
| Background | servizi/processi persistenti | da misurare | | pm/dumpsys |
| Rete | connessioni / attività per app (ove visibili) | da analizzare | | dati locali anonimizzati |
| Android Auto | avvio via cavo / wireless | da misurare | | prova ×3 |
| Audio | volume, EQ, distorsione e sorgenti | da registrare | | preset + test A/B |
| Radio | FM e RDS | da testare | | test manuale |
| Veicolo | comandi al volante / CANBUS | da testare | | test manuale |
| Veicolo | retrocamera, se presente | da testare | | test manuale |
| Alimentazione | standby e ripresa | da testare | | test manuale |
| Telefonia | microfono e chiamate Bluetooth | da testare | | test manuale |

## Condizioni e prove
Salvare fonte, data, versione build, metodo, numero di ripetizioni e variabilità. **La RAM libera da sola non è una metrica sufficiente di velocità.** Non pubblicare dati di rete, account, identificativi hardware o schermate personali.

## Stato
Tutto `DA VERIFICARE` fino a esecuzione effettiva sull'autoradio.
