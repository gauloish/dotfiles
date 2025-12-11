. "$PSScriptRoot\utils.ps1"

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
    "fd",
    "gcc",
    "make",
    "cmake",
    "python"
)

Install-ScoopPackages $scoop_packages
py -m ensurepip --upgrade