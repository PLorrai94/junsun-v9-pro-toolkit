# Percorso di miglioramento audio — prima misurare

## Ambito
Junsun V9 Pro sulla Fiat Bravo II. L'unità commerciale dichiara DSP e fino a 48 bande EQ in alcune configurazioni, **non verificati sul nostro esemplare**. Non conosciamo ancora chip DSP, amplificatore, modello altoparlanti o presenza di subwoofer.

## Diagnosi iniziale in sola lettura
1. Identificare dai pacchetti l'app DSP/equalizzatore e controllare se opera in Android o comunica con MCU/DSP separato.
2. Documentare con screenshot **privati e anonimizzati** preset, EQ, fader/balance, crossover, eventuale allineamento temporale e impostazioni loudness.
3. Confrontare a volume sicuro le sorgenti: radio FM, Bluetooth A2DP, Android Auto USB e Android Auto wireless. Alcune potrebbero usare percorsi audio differenti.
4. Individuare sintomi specifici: distorsione, basso impastato, livelli non allineati, fruscio, ritardo, microfono, clipping.

## Modifiche valutabili solo dopo la baseline
- Regolazione EQ moderata e riduzione di picchi, anziché massimizzare bassi e preamplificazione.
- Crossover / HPF e LPF solo se effettivamente disponibili e adeguati agli altoparlanti.
- Bilanciamento e fader con test manuali.
- Comparazione A/B registrata delle regolazioni, mantenendo il preset originale.
- Ottimizzazione di chiamate e Android Auto separata dall'audio musicale.

**Non applicare gain elevati, DSP firmware di terzi, modifiche MCU, patch AudioFlinger o impostazioni nascoste senza modello hardware e rollback.** ADB potrebbe non esporre il DSP fisico.

## Stato
Nessuna modifica audio e nessuna misura raccolta.
