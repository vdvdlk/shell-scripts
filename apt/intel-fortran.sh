#!/usr/bin/env bash
# THIS SCRIPT SHOULD BE RUN AS SUDO!

# This script installs the Intel Fortran compilers, ifx and ifort,
# and the lapack and blas libraries, mkl with the apt package manager.

# Instructions taken from
# https://www.intel.com/content/www/us/en/docs/oneapi/installation-guide-linux/2024-0/apt.html
# https://www.intel.com/content/www/us/en/docs/fortran-compiler/get-started-guide/2022-2/get-started-on-linux.html

keyserver="https://apt.repos.intel.com/intel-gpg-keys/GPG-PUB-KEY-INTEL-SW-PRODUCTS.PUB"
keypath="/etc/apt/keyrings/oneapi-archive-keyring.gpg"

# Download the key to system keyring
curl -sS $keyserver | gpg --dearmor --yes -o $keypath

# Creates the repo file
tee >/etc/apt/sources.list.d/oneAPI.sources <<EOF
X-Repolib-Name: Intel oneAPI
Enabled: yes
Types: deb
URIs: https://apt.repos.intel.com/oneapi
Suites: all
Components: main
Signed-By: $keypath
EOF

# Limits what the repo can install
tee >/etc/apt/preferences.d/oneAPI.pref <<EOF
Package: *
Pin: origin apt.repos.intel.com/oneapi
Pin-priority: 100
EOF

# Install ifx, ifort and mkl
apt-get update
apt-get --assume-yes install intel-oneapi-compiler-fortran intel-oneapi-mkl
