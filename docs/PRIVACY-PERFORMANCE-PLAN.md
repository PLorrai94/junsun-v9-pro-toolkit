# Audit privacy, telemetria e prestazioni

## Audit privacy
- Inventariare app sistema / utente, firme quando accessibili, installer, permessi, servizi, ricevitori, processi persistenti.
- Cercare indizi di componenti pubblicitari, analytics o servizi cloud. **Un package name o un permesso non è prova di spyware.**
- Esaminare traffico in modo locale e mirato, solo quando necessario e lecito. L'uso di rete per UID non identifica necessariamente le destinazioni; non presumere esfiltrazione.
- Non rimuovere componenti OEM senza prova della loro funzione e della loro indipendenza da radio, MCU, CANBUS, Bluetooth, DSP, camera o standby.
- Creare una matrice pacchetti conforme a [DEBLOAT](DEBLOAT.md): `KEEP`, `REVIEW` e `UNKNOWN`.

## Audit prestazioni
- Misurare avvio a freddo, ripresa standby, apertura launcher e app, RAM e CPU dopo inattività definita.
- Ripetere ogni misura almeno tre volte in condizioni omogenee.
- Identificare processi pesanti **con dati reali** e distinguere servizi transitori dai processi persistenti.
- Valutare prima modifiche semplici e ripristinabili. Niente root, tuning frequenza CPU, governor o modifiche permanenti senza necessità dimostrata.

## Deliverable
Report con evidenze, confidenza, app da lasciare, app da studiare e interventi opzionali. Nessuna disabilitazione automatica.
