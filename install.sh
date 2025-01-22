#!/bin/bash
pacman -Syu

cp .config/autostart/gsr-ui.sh $HOME/Documents/
cp shortcuts/* $HOME/.local/share/applications/
tar -xvzf .config/.config.tar.gz -C .config/
rm .config/.config.tar.gz

cd $HOME/
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
