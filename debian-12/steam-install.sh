#!/usr/bin/env bash
# THIS SCRIPT SHOULD BE RUN AS SUDO!

dpkg --add-architecture i386

apt-get update
apt-get install --assume-yes steam-installer