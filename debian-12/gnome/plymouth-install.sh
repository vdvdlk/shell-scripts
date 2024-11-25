#!/usr/bin/env bash
# THIS SCRIPT SHOULD BE RUN AS SUDO!

pacotes=(
    plymouth
    plymouth-themes
    # firmware-linux
)

apt-get install --assume-yes "${pacotes[@]}"