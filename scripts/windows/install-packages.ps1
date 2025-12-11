. "$PSScriptRoot"\utils.ps1

$scoop_packages = @(
    "ln",
    "touch",
    "time",
    "sudo",
    "zip",
    "unzip",
    "wget",
    "curl",
    "grep",
    "ripgrep",
    "fd"
)

Install-ScoopPackages $scoop_packages