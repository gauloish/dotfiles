scoop install starship

$starshipCode = "Invoke-Expression (&starship init powershell)"

if (-not (Test-Path $PROFILE)) {
    New-Item -Path $PROFILE -ItemType File -Force | Out-Null
} 

$profileContent = Get-Content $PROFILE -Raw

if ($profileContent -notlike "*$starshipCode*") {
    Add-Content -Path $PROFILE -Value $starshipCode
} 