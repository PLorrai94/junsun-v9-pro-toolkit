# Progetti da riutilizzare (repo-first)

## Base operativa: CleanYourHeadUnit
https://github.com/maxhayim/CleanYourHeadUnit

Toolkit specifico per autoradio Android. Contiene `tools/cyhu.py`, inventario, audit privacy, diagnostica, backup e ripristino tramite ADB. L'autore indica che i profili non sono ancora ampiamente validati su hardware reale. Il nostro X-258/G2984 non va considerato automaticamente supportato.

**Uso previsto:** esaminare il sorgente, fissare una revisione Git e usare inizialmente soltanto `status`, `inventory`, `privacy audit` e `diagnostics` dopo una revisione delle rispettive funzioni. Non installare APK o usare `debloat apply`, DNS, firewall o cambio launcher nella fase iniziale.

## Procedura: headunit-debloat-skill
https://github.com/hamza39460/headunit-debloat-skill

Skill per Claude Code specializzata in autoradio Android. Riutilizzare criteri conservativi, misure, piano di ripristino e controlli post-modifica; non eseguire automaticamente shell script o liste di pacchetti definite per altre unità.

## Indagine hardware: android-head-unit-exploration
https://github.com/andresurena/android-head-unit-exploration

Ricerca su autoradio con Qualcomm MSM8953 e stack XUNZU/ZLink. Il SoC è vicino al nostro, ma CarLetter/X-258 è differente. Riutilizzare il metodo d'indagine, non patch, librerie o firmware.

## Riferimenti secondari soltanto quando necessari
- https://github.com/Universal-Debloater-Alliance/universal-android-debloater-next-generation — classificazioni Android generiche da verificare.
- https://github.com/StarMusa88/TopWay-Android-Headunit-ADB-Guide — modalità ADB di altre unità, non istruzioni per G2984.
- https://github.com/Gathin23/cleanyourtv — ispirazione originale, **non** fondazione tecnica.

## Politica upstream e licenze
Linkare i progetti senza copiarne il codice. Prima di vendorizzare o adattare codice verificare licenza, attribuzione e versione/commit del sorgente. Se emerge un profilo G2984 validato, valutare una contribuzione upstream invece di mantenere un fork separato.
