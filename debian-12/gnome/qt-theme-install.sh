#!/usr/bin/env bash
# THIS SCRIPT SHOULD BE RUN AS SUDO!

dpkg --add-architecture i386

apt-get update
apt-get install --assume-yes \
    adwaita-qt \
    adwaita-qt6 \
    qgnomeplatform-qt5