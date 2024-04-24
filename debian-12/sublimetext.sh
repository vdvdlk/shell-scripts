#!/usr/bin/env bash
# THIS SCRIPT SHOULD BE RUN AS SUDO!

# This script installs the Sublime Text Editor.

# Instructions taken from
# https://www.sublimetext.com/docs/linux_repositories.html

keyserver="https://download.sublimetext.com/sublimehq-pub.gpg"
keypath="/etc/apt/keyrings/sublimehq-archive.gpg"

# Download the key to system keyring
curl -sS $keyserver | gpg --dearmor --yes -o $keypath

# Creates the repo file
tee >/etc/apt/sources.list.d/sublime-text.sources <<EOF
X-Repolib-Name: Sublime Text
Enabled: yes
Types: deb
URIs: https://download.sublimetext.com/
Suites: apt/stable/
Signed-By: $keypath
EOF

# Limits what the repo can install
tee >/etc/apt/preferences.d/sublime-text.pref <<EOF
Package: *
Pin: origin download.sublimetext.com
Pin-priority: 100
EOF

# Update apt sources and install Sublime Text:
apt-get update
apt-get --assume-yes install sublime-text
