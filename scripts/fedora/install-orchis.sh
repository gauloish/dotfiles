#!/bin/sh

dnf_packages=(
    # Gnome:
    gnome-themes-extra
	gnome-tweaks
	gnome-extensions-app
	gnome-shell-extension-user-theme
	gnome-shell-extension-blur-my-shell

    # GTK:
	gtk-murrine-engine

    # Others:
	sassc
)

sudo dnf install -y "${dnf_packages[@]}"

rm -rf ~/tmp/Orchis-theme
git -C ~/tmp clone https://github.com/vinceliuice/Orchis-theme.git
sh ~/tmp/Orchis-theme/install.sh --uninstall
sh ~/tmp/Orchis-theme/install.sh --theme grey --color dark --size standard --tweaks solid compact submenu --libadwaita --fixed
