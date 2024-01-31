#!/usr/bin/env bash

# This script installs the Intel Fortran compilers, ifx and ifort,
# and the llapack and blas libraries, mkl.

# Instructions taken from
# https://www.intel.com/content/www/us/en/docs/oneapi/installation-guide-linux/2024-0/yum-dnf-zypper.html
# https://www.intel.com/content/www/us/en/docs/fortran-compiler/get-started-guide/2022-2/get-started-on-linux.html

# This script should be run as sudo:
# sudo ./intel_fortran_fedora.sh
# This script assumes that you don't have an existing installation

# username=$USER

# Create a temporary repo file
tee > /tmp/oneAPI.repo << EOF
[oneAPI]
name=Intel® oneAPI repository
baseurl=https://yum.repos.intel.com/oneapi
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://yum.repos.intel.com/intel-gpg-keys/GPG-PUB-KEY-INTEL-SW-PRODUCTS.PUB
EOF

# Move the repo file to the repos folder
mv /tmp/oneAPI.repo /etc/yum.repos.d

# Install ifx, ifort and mkl
dnf install intel-oneapi-compiler-fortran intel-oneapi-mkl -y

# Set the environment variables
# ATTENTION: THIS STEP IS DONE FOR THE CURRENT USER ONLY
echo "source /opt/intel/oneapi/setvars.sh" >> /home/"$SUDO_USER"/.bash_profile
# Restart the system or log off and log in again to take effect