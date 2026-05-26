#!/bin/bash

# Check if the script is being run as root
if [ "$EUID" -ne 0 ]; then
  echo "Error: This script must be run as root (sudo)." >&2
  exit 1
fi

install -Dm755 usr/bin/jupiter-biosupdate        "/usr/bin/jupiter-biosupdate"
install -Dm755 usr/bin/steam-gamescope           "/usr/bin/steam-gamescope"
install -Dm755 usr/bin/steamos-select-branch     "/usr/bin/steamos-select-branch"
install -Dm755 usr/bin/steamos-session-select    "/usr/bin/steamos-session-select"
install -Dm755 usr/bin/steamos-update            "/usr/bin/steamos-update"

# --- usr/bin/steamos-polkit-helpers ---
install -Dm755 usr/bin/steamos-polkit-helpers/jupiter-biosupdate    "/usr/bin/steamos-polkit-helpers/jupiter-biosupdate"
install -Dm755 usr/bin/steamos-polkit-helpers/steamos-select-branch "/usr/bin/steamos-polkit-helpers/steamos-select-branch"
install -Dm755 usr/bin/steamos-polkit-helpers/steamos-update        "/usr/bin/steamos-polkit-helpers/steamos-update"

# --- usr/share/applications ---
install -Dm644 usr/share/applications/steam-gamescope.desktop   "/usr/share/applications/steam-gamescope.desktop"

update-desktop-database

echo "Installation completed successfully!"
