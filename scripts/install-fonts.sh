#!/bin/sh

rm -rf ~/.fonts
mkdir ~/.fonts
rm -f ~/tmp/JetBrainsMono.tar.xz

wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.tar.xz -P ~/tmp
mkdir ~/.fonts/JetBrainsMono
tar -xf ~/tmp/JetBrainsMono.tar.xz -C ~/.fonts/JetBrainsMono/
fc-cache ~/.fonts