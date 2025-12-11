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

function Install-PipPackages {
    param(
        [Parameter(Mandatory=$true)]
        [string[]] $Packages
    )

    foreach ($pkg in $Packages) {
        pip install $pkg
    }
}