#!/usr/bin/env python3
import os
import subprocess

# Ensure the script is run with sudo
if os.geteuid() != 0:
    raise PermissionError("This script must be run as sudo!")


INTERFACE = ["nala", "install"]
ARGUMENTOS = ["--update", "--assume-yes"]

PACOTES_SISTEMA = [
    "bash-completion",
    "systemd-timesyncd",
    "vim",
    "flatpak",
    "snapd",
    "plymouth",
    "plymouth-themes",
    "plymouth-theme-breeze",
    "kde-config-plymouth",
    "firmware-linux",
    "syncthing",
    "v4l2loopback-dkms",
]

PACOTES_FIREFOX = [
    "firefox-esr-l10n-pt-br",
    "webext-ublock-origin-firefox",
]

PACOTES_KDE_PLASMA = [
    "plasma-discover-backend-flatpak",
    "plasma-discover-backend-snap",
    "ktorrent",
    "syncthingtray-kde-plasma",
]

PACOTES_FORTRAN = [
    "gfortran",
    "fortran-language-server",
    "findent",
    "liblapack-dev",
    "libblas-dev",
    # "libhdf5-dev",
]

PACOTES_PYTHON = [
    "python-is-python3",
    "python3-numpy",
    "python3-scipy",
    "python3-matplotlib",
    "python3-sympy",
    "jupyter-notebook",
    "python3-uncertainties",
    "python3-lmfit",
    "python3-pint",
    "python3-tqdm",
    # "python3-h5py",
]

PACOTES_SEMINARIO = [
    "obs-studio",
]

COMANDO = [
    *INTERFACE,
    *ARGUMENTOS,
    *PACOTES_SISTEMA,
    *PACOTES_KDE_PLASMA,
    *PACOTES_FIREFOX,
    *PACOTES_FORTRAN,
    *PACOTES_PYTHON,
    *PACOTES_SEMINARIO,
]
subprocess.run(
    args=COMANDO,
    check=True,
)
