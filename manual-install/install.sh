#!/bin/bash

set -e

SERVICE_DEST="/etc/systemd/system/udm-boot.service"
SERVICE_URL="https://raw.githubusercontent.com/unifi-utilities/unifi-common/HEAD/udm-boot.service"

# Download the service unit
# If you want to install offline, scp the file to the device first (e.g. /tmp/udm-boot.service)
# and then run:  cp /tmp/udm-boot.service "$SERVICE_DEST"
echo "Downloading udm-boot.service..."
curl -fsSLo "$SERVICE_DEST" "$SERVICE_URL"

# Create the on_boot.d directory if it doesn't exist
mkdir -p /data/on_boot.d

# Enable and start the service
echo "Enabling and starting udm-boot..."
systemctl daemon-reload
systemctl enable --now udm-boot.service

echo "Done. Place your boot scripts in /data/on_boot.d/"
