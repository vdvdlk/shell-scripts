#!/usr/bin/env bash
# THIS SCRIPT SHOULD BE RUN AS SUDO!

pacotes=(
    gnome-shell-extension-appindicator
    gnome-shell-extension-caffeine
    gnome-shell-extension-dashtodock
    gnome-shell-extension-gamemode
    gnome-shell-extension-no-annoyance
    gnome-shell-extension-tiling-assistant
)

apt-get install --assume-yes "{$pacotes[@]}"