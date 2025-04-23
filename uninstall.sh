#!/bin/bash

systemctl --user stop dash-to-dock-theme-sync.service
systemctl --user disable dash-to-dock-theme-sync.service
rm ~/.config/systemd/user/dash-to-dock-theme-sync.service
systemctl --user daemon-reload