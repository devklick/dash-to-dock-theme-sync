#!/bin/bash

DARK_COLOR='#303030b3'
LIGHT_COLOR='#fafafab3'
CURRENT_SCHEME=$(gsettings get org.gnome.desktop.interface color-scheme)

set_dock_background() {
    local color=$1
    echo "Setting dock color to $color"
    gsettings set org.gnome.shell.extensions.dash-to-dock custom-background-color true
    gsettings set org.gnome.shell.extensions.dash-to-dock background-color "$color"
}

# Sync with theme on startup
if [[ "$CURRENT_SCHEME" == *"default"* ]]; then
    set_dock_background "$LIGHT_COLOR"
elif [[ "$CURRENT_SCHEME" == *"prefer-dark"* ]]; then
    set_dock_background "$DARK_COLOR"
fi

# Monitor for theme changes
gsettings monitor org.gnome.desktop.interface color-scheme | while read -r line; do
    if [[ "$line" == *"default"* ]]; then
        set_dock_background "$LIGHT_COLOR"
    elif [[ "$line" == *"prefer-dark"* ]]; then
        set_dock_background "$DARK_COLOR"
    fi
done
