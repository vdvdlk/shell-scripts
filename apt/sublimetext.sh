#!/usr/bin/env bash

# This script installs the Sublime Text Editor.

# Instructions taken from
# https://www.sublimetext.com/docs/linux_repositories.html

# This script should be run as sudo!
# This script assumes that you don't have an existing installation

# Install the GPG key:
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg >/dev/null

# Select the stable channel to use:
echo "deb https://download.sublimetext.com/ apt/stable/" | tee /etc/apt/sources.list.d/sublime-text.list

# Update apt sources and install Sublime Text:
apt-get update
apt-get --assume-yes install sublime-text

# If this fails ensure apt is set up to work with https sources:
# apt-get install apt-transport-https
