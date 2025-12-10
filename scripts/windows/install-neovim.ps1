scoop install gcc
scoop install make
scoop install cmake

scoop install python
pip install pynvim
pip install yarp

scoop install nodejs

scoop install rust

scoop install lua
scoop install luarocks

scoop install grep
scoop install ripgrep
scoop install fd

scoop install neovim

$scoop_packages = @(
    "gcc",
    "make",
    "cmake",
    "python",
    "nodejs",
    "rust",
    "lua",
    "luarocks",
    "neovim",
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

curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py; python get-pip.py

foreach ($pkg in $scoop_packages) {
    if (-not (scoop list | Select-String "^$pkg\$")) {
        pip install $pkg
    }
}