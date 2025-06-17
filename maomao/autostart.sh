#!/bin/bash
set +e
wlr-randr --output HDMI-A-1 --scale 0.711 &
wlr-randr --output eDP-1 --pos 0,1080 &
ignis init &
dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=Hyprland
systemctl --user start xdg-desktop-portal &
systemctl --user start xdg-desktop-portal-wlr &
systemctl --user start xdg-desktop-portal-gtk &
wl-paste --type text --watch cliphist store &
wl-paste --type image --watch cliphist store &
fcitx5 &
ignis init &
