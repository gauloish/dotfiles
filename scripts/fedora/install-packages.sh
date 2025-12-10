#!/bin/sh

dnf_packages=(
    zip
    unzip
    gzip
    tar
    wget
    curl
    git
    ripgrep
    fd-find
)

sudo dnf upgrade -y
sudo dnf install -y "${dnf_packages[@]}"

rm -rf ~/tmp
mkdir ~/tmp