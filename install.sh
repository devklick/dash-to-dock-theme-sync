#!/bin/bash

## ------------------------------
# Script to monitor theme change
## ------------------------------
cp src/dash-to-dock-theme-sync.sh ~/.local/bin/
chmod +x ~/.local/bin/dash-to-dock-theme-sync.sh


# ------------------------
# Service to run the script
# ------------------------
cp src/dash-to-dock-theme-sync.service ~/.config/systemd/user/

systemctl --user daemon-reexec
systemctl --user daemon-reload

systemctl --user enable dash-to-dock-theme-sync.service
systemctl --user start dash-to-dock-theme-sync.service