#!/usr/bin/env bash
# THIS SCRIPT SHOULD BE RUN AS SUDO!

pacotes=(
    gfortran
    fortran-language-server
    findent
    liblapack-dev
    libblas-dev
    # libhdf5-dev
)

apt-get install --assume-yes "${pacotes[@]}"
