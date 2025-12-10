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

foreach ($pkg in $scoop_packages) {
    if (-not (scoop list | Select-String "^$pkg\$")) {
        scoop install $pkg
    }
}