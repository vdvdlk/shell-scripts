#!/usr/bin/env bash
# THIS SCRIPT SHOULD BE RUN AS SUDO!

# sway
apt-get install --assume-yes sway sway-backgrounds swaybg swayidle swaylock xdg-desktop-portal-wlr xwayland waybar wofi

# gammastep
apt-get install --assume-yes gammastep wlsunset

# SDDM
apt-get install --assume-yes --no-install-recommends sddm

# Thunar
apt-get install --assume-yes thunar thunar-archive-plugin thunar-dropbox-plugin nautilus-dropbox

# Package manager
apt-get install --assume-yes flatpak snapd

# Vim
apt-get install --assume-yes vim

# Remmina
apt-get install --assume-yes remmina

# Syncthing
apt-get install --assume-yes syncthing

# Sound
apt-get install --assume-yes pipewire pavucontrol

# PDF
apt-get install --assume-yes atril pdfarranger

# Multimedia
apt-get install --assume-yes vlc

# Others
apt-get install --assume-yes galculator neofetch htop calibre wxmaxima speedtest

# Fonts
# apt-get install --assume-yes fonts-recommended fonts-font-awesome

# LaTeX
apt-get install --assume-yes texlive-full

# Backports
apt-get install --assume-yes --target-release bookworm-backports yt-dlp telegram-desktop

# Youtubedl-gui
apt-get install --assume-yes youtubedl-gui