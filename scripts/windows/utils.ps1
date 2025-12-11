function Install-ScoopPackages {
    param(
        [Parameter(Mandatory=$true)]
        [string[]] $Packages
    )

    foreach ($pkg in $Packages) {
        if (-not (scoop list | Select-String -Quiet $pkg)) {
            scoop install $pkg
        }
    }
}