#!/bin/sh

dnf_packages=(
    # Python
    python
    pip

    # C/C++:
    gcc-c++

    # Java:
    java
    java-devel
    java-latest-openjdk-devel

    # Javascript:
    nodejs
    npm

    # Rust:
    rust
    cargo

    # Lua:
    lua
    luarocks

    # Latex
    texlive-scheme-basic

    # Neovim:
    neovim
    python3-neovim
)

pip_packages=(
    pynvim
    yarp
    jupyter
    jupyterlab
    jupytext
)

npm_packages=(
    neovim
)

sudo dnf install -y "${dnf_packages[@]}"
pip install "${pip_packages[@]}"
sudo npm install -g "${npm_packages[@]}"

echo 'export JAVA_HOME=$(readlink -f /usr/bin/java | sed "s:/bin/java::")' >> ~/.bashrc