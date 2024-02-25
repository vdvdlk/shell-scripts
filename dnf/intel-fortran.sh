#!/usr/bin/env bash
# THIS SCRIPT SHOULD BE RUN AS SUDO!

# This script installs the Intel Fortran compilers, ifx and ifort,
# and the lapack and blas libraries, mkl with the dnf package manager.
# Instructions taken from
# https://www.intel.com/content/www/us/en/docs/oneapi/installation-guide-linux/2024-0/yum-dnf-zypper.html
# https://www.intel.com/content/www/us/en/docs/fortran-compiler/get-started-guide/2022-2/get-started-on-linux.html

# Create a temporary repo file
tee >/tmp/oneAPI.repo <<EOF
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
dnf --assumeyes install intel-oneapi-compiler-fortran intel-oneapi-mkl
