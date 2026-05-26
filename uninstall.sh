#!/bin/bash

# Check if the script is being run as root
if [ "$EUID" -ne 0 ]; then
  echo "Error: This script must be run as root (sudo)." >&2
  exit 1
fi

# --- Remove binaries from /usr/bin ---
rm -f "/usr/bin/jupiter-biosupdate"
rm -f "/usr/bin/steam-gamescope"
rm -f "/usr/bin/steam-http-loader"
rm -f "/usr/bin/steamos-select-branch"
rm -f "/usr/bin/steamos-session-select"
rm -f "/usr/bin/steamos-update"

# --- Remove polkit helpers ---
rm -f "/usr/bin/steamos-polkit-helpers/jupiter-biosupdate"
rm -f "/usr/bin/steamos-polkit-helpers/steamos-select-branch"
rm -f "/usr/bin/steamos-polkit-helpers/steamos-update"

# Clean up the polkit-helpers directory if it is now empty
if [ -d "/usr/bin/steamos-polkit-helpers" ] && [ -z "$(ls -A /usr/bin/steamos-polkit-helpers)" ]; then
    rmdir "/usr/bin/steamos-polkit-helpers"
fi

# --- Remove application shortcuts and configs ---
rm -f "/usr/share/applications/gamescope-mimeapps.list"
rm -f "/usr/share/applications/steam-gamescope.desktop"
rm -f "/usr/share/applications/steam_http_loader.desktop"

echo "Uninstallation completed successfully!"
