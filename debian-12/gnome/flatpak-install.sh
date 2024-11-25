#!/usr/bin/env bash
# THIS SCRIPT SHOULD BE RUN AS SUDO!

apt-get install --assume-yes \
    flatpak \
    gnome-software-plugin-flatpak

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo