#!/usr/bin/env bash
# THIS SCRIPT SHOULD BE RUN AS SUDO!

# sway
apt-get remove --assume-yes \
    sway \
    swayidle \
    swaylock \
    xdg-desktop-portal-wlr \
    xwayland \
    xcursor-themes \
    waybar \
    wofi \
    wlsunset \
    grimshot \
    fuzzel \
    bemenu

# SDDM
apt-get remove --assume-yes --no-remove-recommends sddm

# Thunar
apt-get remove --assume-yes \
    thunar \
    thunar-archive-plugin \
    gvfs-backends \
    thunar-dropbox-plugin

# Package manager
apt-get remove --assume-yes flatpak snapd

# Vim
# apt-get remove --assume-yes vim

# Remmina
apt-get remove --assume-yes remmina

# Syncthing
apt-get remove --assume-yes syncthing

# Sound
apt-get remove --assume-yes pavucontrol

# PDF
apt-get remove --assume-yes \
    atril \
    pdfarranger

# Multimedia
apt-get remove --assume-yes vlc

# Others
apt-get remove --assume-yes galculator neofetch htop calibre wxmaxima speedtest-cli

# Fonts
# apt-get remove --assume-yes fonts-recommended fonts-font-awesome

# LaTeX
apt-get remove --assume-yes texlive-full

# Backports
apt-get remove --assume-yes --target-release bookworm-backports telegram-desktop pipewire
