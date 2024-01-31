#!/usr/bin/env bash

# This script installs the Intel Fortran compilers, ifx and ifort,
# and the llapack and blas libraries, mkl with the apt package manager.

# Instructions taken from
# https://www.intel.com/content/www/us/en/docs/oneapi/installation-guide-linux/2024-0/apt.html
# https://www.intel.com/content/www/us/en/docs/fortran-compiler/get-started-guide/2022-2/get-started-on-linux.html

# This script should be run as sudo:
# sudo ./intel_fortran_apt.sh
# This script assumes that you don't have an existing installation

# download the key to system keyring
wget -O- https://apt.repos.intel.com/intel-gpg-keys/GPG-PUB-KEY-INTEL-SW-PRODUCTS.PUB \
| gpg --dearmor | sudo tee /usr/share/keyrings/oneapi-archive-keyring.gpg > /dev/null

# add signed entry to apt sources and configure the APT client to use Intel repository:
echo "deb [signed-by=/usr/share/keyrings/oneapi-archive-keyring.gpg] https://apt.repos.intel.com/oneapi all main" | sudo tee /etc/apt/sources.list.d/oneAPI.list

# Install ifx, ifort and mkl
apt update
apt install intel-oneapi-compiler-fortran intel-oneapi-mkl -y

# Set the environment variables
# ATTENTION: THIS STEP IS DONE FOR THE CURRENT USER ONLY
echo "source /opt/intel/oneapi/setvars.sh" >> /home/"$SUDO_USER"/.bash_profile
chown "$SUDO_USER" /home/"$SUDO_USER"/.bash_profile
# Restart the system or log off and log in again to take effect