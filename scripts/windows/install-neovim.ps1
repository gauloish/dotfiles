$scoop_packages = @(
    "gcc",
    "make",
    "cmake",
    "python",
    "nodejs",
    "rust",
    "lua",
    "luarocks",
    "neovim"
)

$pip_packages = @(
    "pynvim",
    "yarp"
)

foreach ($pkg in $scoop_packages) {
    if (-not (scoop list | Select-String "^$pkg\$")) {
        scoop install $pkg
    }
}

py -m ensurepip --upgrade

foreach ($pkg in $scoop_packages) {
    if (-not (scoop list | Select-String "^$pkg\$")) {
        pip install $pkg
    }
}