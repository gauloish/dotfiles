#!/bin/sh

sudo dnf install -y python pip
pip install pylance flake8 mypy black isort

sudo dnf copr enable elxreno/jetbrains-mono-fonts -y
sudo dnf install jetbrains-mono-fonts -y

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null
sudo dnf install -y code