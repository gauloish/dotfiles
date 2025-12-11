. "$PSScriptRoot"\utils.ps1

Install-ScoopPackages "starship"

$starshipCode = "Invoke-Expression (&starship init powershell)"

if (-not (Test-Path $PROFILE)) {
    New-Item -Path $PROFILE -ItemType File -Force | Out-Null
} 

Add-Content -Path $PROFILE -Value $starshipCode