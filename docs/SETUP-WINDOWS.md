# Setup Windows — primo accesso ADB (senza cambiare lo stereo)

## Prerequisiti
- Windows e [Android SDK Platform Tools](https://developer.android.com/tools/releases/platform-tools) ufficiali Google.
- Veicolo **parcheggiato**, alimentazione stabile; non lavorare mentre si guida.
- Accesso alle impostazioni sviluppatore **solo se disponibili** nell'Android installato. La USB dell'autoradio usata per Android Auto potrebbe essere una porta host e non consentire ADB dal PC.
- Il debug wireless moderno richiede supporto nel firmware; non presupporlo. Non esporre ADB su Wi-Fi non fidato.

## Passo 1: identificare il dispositivo
Apri PowerShell nella cartella dove hai estratto le Platform Tools ed esegui:

```powershell
.\adb.exe devices -l
```

Sull'autoradio autorizza il PC se compare un avviso RSA. Verifica che la voce `device` corrisponda **al Junsun**; se ci sono più dispositivi, non usare comandi senza `-s`. Non pubblicare il seriale restituito.

## Passo 2: letture minime
Sostituisci il segnaposto con il seriale realmente riconosciuto:

```powershell
.\adb.exe -s "SERIALE_DEL_JUNSUN" shell getprop ro.build.version.sdk
.\adb.exe -s "SERIALE_DEL_JUNSUN" shell getprop ro.build.fingerprint
.\adb.exe -s "SERIALE_DEL_JUNSUN" shell getprop ro.board.platform
.\adb.exe -s "SERIALE_DEL_JUNSUN" shell pm list packages
```

Comandi di sola lettura. Alcuni potrebbero non funzionare per restrizioni OEM.

## Passo 3: raccolta più completa
Rivedi il codice di [Collect-JunsunReadOnly.ps1](../scripts/windows/Collect-JunsunReadOnly.ps1) prima dell'uso; **non testato ancora sull'unità**. In PowerShell dalla cartella `scripts/windows`:

```powershell
.\Collect-JunsunReadOnly.ps1 -Serial "SERIALE_DEL_JUNSUN" -AdbPath "C:\platform-tools\adb.exe"
```

Lo script crea report **fuori dal repository** sotto `%USERPROFILE%\JunsunAuditLocal`. Non modifica il sistema, ma può leggere dati identificativi. Non pubblicare i report grezzi o caricarli automaticamente su servizi AI. Esegui una revisione e anonimizzazione manuale. Non alterare indiscriminatamente le policy di esecuzione PowerShell per far partire script sconosciuti.

## Dopo la sessione
Disabilita Debug USB/Wireless sul Junsun. Conserva localmente le informazioni necessarie e prepara una sintesi priva di dati personali per il repository.

## Se il collegamento non riesce
Annota ciò che viene mostrato da `adb devices -l` **senza condividere seriali**. Non tentare root, recovery o flash per abilitare ADB.
