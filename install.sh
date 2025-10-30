#!/bin/bash

# This script installs all the applications for which you have configurations.

# List of applications to install
PACKAGES=(
    "fastfetch"
    "fish"
    "neovim"
    "ranger"
    "starship"
    "tmux"
    "yay"
    "zathura"
    "zathura-pdf-mupdf"
)

# Install packages using yay
yay -S --needed "${PACKAGES[@]}"