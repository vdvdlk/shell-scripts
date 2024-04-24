#!/usr/bin/env bash
# THIS SCRIPT SHOULD BE RUN AS SUDO!

# This script installs Spotify

# Instructions taken from
# https://www.spotify.com/us/download/linux/

keyserver="https://download.spotify.com/debian/pubkey_6224F9941A8AA6D1.gpg"
keypath="/etc/apt/keyrings/spotify.gpg"

# Download the key to system keyring
curl -sS $keyserver | gpg --dearmor --yes -o $keypath

# Creates the repo file
tee >/etc/apt/sources.list.d/spotify.sources <<EOF
X-Repolib-Name: Spotify
Enabled: yes
Types: deb
URIs: http://repository.spotify.com
Suites: stable
Components: non-free
Signed-By: $keypath
EOF

# Limits what the repo can install
tee >/etc/apt/preferences.d/spotify.pref <<EOF
Package: *
Pin: origin repository.spotify.com
Pin-priority: 100
EOF

# Install Spotify
apt-get update
apt-get --assume-yes install spotify-client

# Deactivates the automatic generated repo file
tee >/etc/apt/sources.list.d/spotify.list <<EOF
# deb http://repository.spotify.com stable non-free
EOF
