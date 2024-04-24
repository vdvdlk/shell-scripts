#!/usr/bin/env bash
# THIS SCRIPT SHOULD BE RUN AS SUDO!

# This script installs Google Chrome

# Instructions taken from
# https://www.google.com/linuxrepositories/

keyserver="https://dl.google.com/linux/linux_signing_key.pub"
keypath="/etc/apt/keyrings/google-chrome.gpg"

# Download the key to system keyring
curl -sS $keyserver | gpg --dearmor --yes -o $keypath

# Create the repo file
tee >/etc/apt/sources.list.d/google-chrome.sources <<EOF
X-Repolib-Name: Google Chrome
Enabled: yes
Types: deb
URIs: http://dl.google.com/linux/chrome/deb
Suites: stable
Components: main
Architectures: amd64
Signed-By: $keypath
EOF

# Limits what the repo can install
tee >/etc/apt/preferences.d/google-chrome.pref <<EOF
Package: *
Pin: origin dl.google.com/linux/chrome
Pin-priority: 100
EOF

# Install Google Chrome
apt-get update
apt-get --assume-yes install google-chrome-stable

# Deactivates the automatic generated repo file
tee >/etc/apt/sources.list.d/google-chrome.list <<EOF
### THIS FILE IS AUTOMATICALLY CONFIGURED ###
# You may comment out this entry, but any other modifications may be lost.
# deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main
EOF

# Removes the automatically installed key
rm -f /etc/apt/trusted.gpg.d/google-chrome.gpg
