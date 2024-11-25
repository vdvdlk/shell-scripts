#!/usr/bin/env python3
import os
import subprocess

# Ensure the script is run with sudo
if os.geteuid() != 0:
    raise PermissionError("This script must be run as sudo!")

COMANDO = ["nala", "install"]
ARGUMENTOS = ["--update", "--assume-yes"]

# List of packages
PACOTES = [
    "gfortran",
    "fortran-language-server",
    "findent",
    "liblapack-dev",
    "libblas-dev",
    "libhdf5-dev",
]

# Install packages
subprocess.run(
    [*COMANDO, *ARGUMENTOS, *PACOTES],
    check=True,
)
