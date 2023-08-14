#!/bin/bash

# Download kernel header and image deb packages
wget https://github.com/UJX6N/bbrplus-6.x_stable/releases/download/6.4.3-bbrplus/Debian-Ubuntu_Optional_linux-headers-6.4.3-bbrplus_6.4.3-1_amd64.deb
wget https://github.com/UJX6N/bbrplus-6.x_stable/releases/download/6.4.3-bbrplus/Debian-Ubuntu_Required_linux-image-6.4.3-bbrplus_6.4.3-1_amd64.deb

# Install kernel header and image packages
sudo dpkg -i Debian-Ubuntu_Optional_linux-headers-6.4.3-bbrplus_6.4.3-1_amd64.deb
sudo dpkg -i Debian-Ubuntu_Required_linux-image-6.4.3-bbrplus_6.4.3-1_amd64.deb

# Install dependencies if needed
sudo apt install -f

# Update GRUB configuration
sudo update-grub

# Reboot the system
sudo reboot