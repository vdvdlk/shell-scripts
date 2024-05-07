#!/usr/bin/env bash
# THIS SCRIPT SHOULD BE RUN AS SUDO!

apt-get install --assume-yes --target-release bookworm-backports \
    libreoffice \
    libreoffice-gtk3 \
    libreoffice-l10n-pt-br

apt-get install --assume-yes \
    libreoffice-texmaths \
    ttf-mscorefonts-installer \
    myspell-pt \
    mythes-pt-br \
    hyphen-pt-br