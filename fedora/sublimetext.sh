#!/usr/bin/env bash
# THIS SCRIPT SHOULD BE RUN AS SUDO!

# This script installs the Sublime Text Editor.

# Instructions taken from
# https://www.sublimetext.com/docs/linux_repositories.html

keyserver="https://download.sublimetext.com/sublimehq-pub.gpg"
repo="https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo"

# Install the GPG key:
rpm -v --import $keyserver

# Select the channel to use:
dnf config-manager --add-repo $repo

# Update dnf and install Sublime Text:
dnf --assumeyes install sublime-text