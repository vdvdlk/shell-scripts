#!/usr/bin/env bash
# THIS SCRIPT SHOULD BE RUN AS SUDO!

# This script installs the Visual Studio Code with apt.

# Instructions taken from
# https://code.visualstudio.com/docs/setup/linux#_debian-and-ubuntu-based-distributions

keyserver="https://packages.microsoft.com/keys/microsoft.asc"
keypath="/etc/apt/keyrings/packages.microsoft.gpg"

# Download the key to system keyring
curl -sS $keyserver | gpg --dearmor --yes -o $keypath

# Create the repo file
tee >/etc/apt/sources.list.d/vscode.sources <<EOF
X-Repolib-Name: Visual Studio Code
Enabled: yes
Types: deb
URIs: https://packages.microsoft.com/repos/code
Suites: stable
Components: main
Architectures: amd64 arm64 armhf
Signed-By: $keypath
EOF

# Limits what the repo can install
tee >/etc/apt/preferences.d/vscode.pref <<EOF
Package: *
Pin: origin packages.microsoft.com/repos/code
Pin-priority: 100
EOF

# Install VSCode
apt-get update
apt-get --assume-yes install code

# Deactivates the automatic generated repo file
tee >/etc/apt/sources.list.d/spotify.list <<EOF
### THIS FILE IS AUTOMATICALLY CONFIGURED ###
# You may comment out this entry, but any other modifications may be lost.
# deb [arch=amd64,arm64,armhf] http://packages.microsoft.com/repos/code stable main
EOF
