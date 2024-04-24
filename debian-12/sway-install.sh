#!/usr/bin/env bash
# THIS SCRIPT SHOULD BE RUN AS SUDO!

# sway
apt-get install --assume-yes sway sway-backgrounds swaybg swayidle swaylock xdg-desktop-portal-wlr xwayland waybar wofi gammastep

# SDDM
apt-get install --assume-yes --no-install-recommends sddm

# Thunar
apt-get install --assume-yes thunar thunar-archive-plugin thunar-dropbox-plugin nautilus-dropbox

# Firefox
apt-get install --assume-yes firefox-esr firefox-esr-l10n-pt-br

# Libreoffice
apt-get install --assume-yes libreoffice libreoffice-l10n-pt-br libreoffice-texmaths ttf-mscorefonts-installer

# Package manager
apt-get install --assume-yes flatpak snapd

# Vim
apt-get install --assume-yes vim

# Syncthing
apt-get install --assume-yes syncthing

# Sound
apt-get install --assume-yes pipewire pavucontrol

# PDF
apt-get install --assume-yes atril pdfarranger

# Multimedia
apt-get install --assume-yes vlc

# Others
apt-get install --assume-yes galculator neofetch

# Fonts
apt-get install --assume-yes fonts-recommended fonts-font-awesome

# LaTeX
apt-get install --assume-yes texlive-full

# Backports
apt-get install --assume-yes --target-release bookworm-backports yt-dlp telegram-desktop

# Youtubedl-gui
apt-get install --assume-yes youtubedl-gui