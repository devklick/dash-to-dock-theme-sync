# dash-to-dock-theme-sync
Sync [Dash to Dock](https://github.com/micheleg/dash-to-dock) with your system theme.

When you toggle between light and dark mode in Gnome, the dash will stay in sync
with the system color scheme (light or dark).

Note that the colors are hardcoded and are selected based on the default Adwaita theme.
If you want to use different colors, you can change the HEX codes at the top of 
the [`dash-to-dock-theme-sync.sh`](./src/dash-to-dock-theme-sync.sh) script before 
running the [`install.sh`](./install.sh) script.

## Supported OS

- Ubuntu 24.04 (Gnome)
- Others?

## Install

Clone the repo and run the install script.

```
git clone https://github.com/devklick/dash-to-dock-theme-sync --depth=1
cd dash-to-dock-theme-sync
./install.sh
```

## Uninstall 

Run the uninstall script (clone the repo if required).

```
./uninstall.sh
```