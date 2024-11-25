#!/usr/bin/env bash
# THIS SCRIPT SHOULD BE RUN AS SUDO!

apt-get install --assume-yes \
    snapd \
    gnome-software-plugin-snap

snap install core