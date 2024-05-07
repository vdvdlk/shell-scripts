#!/usr/bin/env bash
# THIS SCRIPT SHOULD BE RUN AS SUDO!

apt-get install --assume-yes --target-release bookworm-backports yt-dlp
apt-get install --assume-yes youtubedl-gui