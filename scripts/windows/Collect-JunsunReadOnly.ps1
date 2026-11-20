<#
.SYNOPSIS
  Raccolta SOLO LETTURA da autoradio Junsun tramite ADB su Windows.
.DESCRIPTION
  Non modifica il dispositivo. Salva i dati esclusivamente sul PC, fuori dal repo.
  Alcuni report contengono dati sensibili: non pubblicarli senza revisione.
  IMPORTANTE: non testato sul Junsun V9 Pro; usare a veicolo parcheggiato.
.EXAMPLE
  .\Collect-JunsunReadOnly.ps1 -Serial 'SERIALE_JUNSUN' -AdbPath 'C:\platform-tools\adb.exe'
#>
[CmdletBinding()]
param(
  [Parameter(Mandatory=$true)][ValidateNotNullOrEmpty()][string]$Serial,
  [string]$AdbPath = 'adb',
  [string]$OutputRoot = (Join-Path $env:USERPROFILE 'JunsunAuditLocal')
)

$ErrorActionPreference = 'Stop'
if (-not (Get-Command $AdbPath -ErrorAction SilentlyContinue)) {
  throw "ADB non trovato. Indica -AdbPath 'C:\platform-tools\adb.exe'."
}

$raw = @(& $AdbPath devices -l 2>&1)
if ($LASTEXITCODE -ne 0) { throw "adb devices -l non riuscito: $($raw -join ' ')" }
$escaped = [regex]::Escape($Serial)
$foundLines = @($raw | Where-Object { $_ -match ('^' + $escaped + '\s+device(?:\s|$)') })
if ($foundLines.Count -ne 1) {
  throw 'Seriale non trovato come device autorizzato. Verifica adb devices -l e seleziona il seriale dell'autoradio, non quello di altri dispositivi.'
}
Write-Host "Dispositivo ADB selezionato: $Serial" -ForegroundColor Yellow
$confirm = Read-Host "Confermi che e' il JUNSUN e che l'auto e' parcheggiata? Digita JUNSUN per procedere"
if ($confirm -cne 'JUNSUN') { throw 'Interrotto: mancata conferma del dispositivo.' }

$folder = Join-Path $OutputRoot ('audit-' + (Get-Date -Format 'yyyyMMdd-HHmmss'))
New-Item -ItemType Directory -Path $folder -Force | Out-Null
@'
DATI LOCALI, NON PUBBLICARE.
Questa e' una raccolta ADB di sola lettura, NON un backup del firmware/MCU.
I risultati possono contenere identificativi (seriali, account, pacchetti, nomi reti,
dettagli audio e altre informazioni). Sanificare manualmente prima di condividere.
Nessuna lettura da sola prova presenza o assenza di telemetria.
'@ | Out-File -Encoding UTF8 (Join-Path $folder 'PRIVACY-README.txt')

function Collect-ReadOnly {
  param([string]$Filename, [string[]]$ShellArgs)
  Write-Host "Leggo: $Filename"
  $result = @(& $AdbPath -s $Serial shell @ShellArgs 2>&1)
  $exit = $LASTEXITCODE
  if ($exit -ne 0) { Write-Warning "Lettura non riuscita: $Filename (exit $exit)" }
  $result | Out-File -Encoding UTF8 (Join-Path $folder $Filename)
}

foreach ($prop in @(
  'ro.build.version.release', 'ro.build.version.sdk', 'ro.build.version.security_patch',
  'ro.build.fingerprint', 'ro.build.display.id',
  'ro.product.model', 'ro.product.device', 'ro.product.board',
  'ro.product.cpu.abi', 'ro.board.platform', 'ro.hardware'
)) {
  Collect-ReadOnly ('prop-' + $prop + '.txt') @('getprop', $prop)
}
Collect-ReadOnly 'packages-all.txt' @('pm','list','packages','-f','-i','-U')
Collect-ReadOnly 'packages-user.txt' @('pm','list','packages','-3')
Collect-ReadOnly 'packages-system.txt' @('pm','list','packages','-s')
Collect-ReadOnly 'packages-disabled.txt' @('pm','list','packages','-d')
Collect-ReadOnly 'cpuinfo.txt' @('dumpsys','cpuinfo')
Collect-ReadOnly 'meminfo.txt' @('dumpsys','meminfo')
Collect-ReadOnly 'storage.txt' @('df','-h','/data')
Collect-ReadOnly 'audio.txt' @('dumpsys','audio')
Write-Host "Raccolta conclusa in $folder"
Write-Host 'Controlla e anonimizza i dati prima di caricarli su GitHub o inviarli a un agente AI.'
Write-Host 'Nessuna modifica Android effettuata.'
