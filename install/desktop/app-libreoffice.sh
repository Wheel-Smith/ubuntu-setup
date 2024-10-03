#!/bin/bash

# Exit the script if any command fails
set -e

# Variables
LIBREOFFICE_URL=""https://download.documentfoundation.org/libreoffice/stable/24.8.2/deb/x86_64/LibreOffice_24.8.2_Linux_x86-64_deb.tar.gz
DOWNLOAD_DIR="/tmp/libreoffice_install"
DEB_DIR="$DOWNLOAD_DIR/LibreOffice_24.8.2.1_Linux_x86-64_deb/DEBS"

# Step 1: Create download directory
echo "Creating download directory..."
mkdir -p "$DOWNLOAD_DIR"

# Step 2: Download LibreOffice
echo "Downloading LibreOffice..."
wget -O "$DOWNLOAD_DIR/libreoffice.tar.gz" "$LIBREOFFICE_URL"

# Step 3: Extract the tarball
echo "Extracting LibreOffice..."
tar -xvzf "$DOWNLOAD_DIR/libreoffice.tar.gz" -C "$DOWNLOAD_DIR"

# Step 4: Install the .deb packages
echo "Installing LibreOffice..."
sudo dpkg -i $DEB_DIR/*.deb

# Step 5: Clean up the temporary download directory
echo "Cleaning up..."
rm -rf "$DOWNLOAD_DIR"

echo "LibreOffice installation completed successfully!"
