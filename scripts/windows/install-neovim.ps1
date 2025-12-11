. "$PSScriptRoot"\utils.ps1

$scoop_packages = @(
    "gcc",
    "make",
    "cmake",
    "python",
    "nodejs",
    "rust",
    "lua",
    "luarocks",
    "fzf",
    "neovim"
)

$pip_packages = @(
    "pynvim",
    "yarp"
)


Install-ScoopPackages $scoop_packages
py -m ensurepip --upgrade
Install-PipPackages $scoop_packages