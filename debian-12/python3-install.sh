#!/usr/bin/env bash
# THIS SCRIPT SHOULD BE RUN AS SUDO!

pacotes=(
    python-is-python3
    python3-numpy
    python3-scipy
    python3-matplotlib
    python3-sympy
    jupyter-notebook
    python3-uncertainties
    python3-lmfit
    python3-pint
    python3-tqdm
    python3-h5py
)

apt-get install --assume-yes "${pacotes[@]}"
    