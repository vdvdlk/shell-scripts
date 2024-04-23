#!/usr/bin/env bash
# THIS SCRIPT SHOULD BE RUN AS SUDO!

tee >/etc/modprobe.d/local.conf <<EOF
options snd-hda-intel model=headset-mic
EOF