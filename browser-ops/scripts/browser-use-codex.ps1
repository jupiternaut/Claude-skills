$ErrorActionPreference = 'Stop'

$browserUse = 'C:\Users\gengr\.local\bin\browser-use.exe'

if (-not (Test-Path -LiteralPath $browserUse)) {
    throw "browser-use CLI not found at $browserUse"
}

$env:PYTHONUTF8 = '1'

& $browserUse @args
$exitCode = $LASTEXITCODE
if ($exitCode -ne 0) {
    exit $exitCode
}
