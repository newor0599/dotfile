#!/bin/bash
set +e
#wlr-randr --output HDMI-A-1 --scale 0.711 --pos 0,0 &
#wlr-randr --output eDP-1 --scale 1 --pos 0,1080 &
ignis init &
dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=wlroots &
# /usr/lib/xdg-desktop-portal &
/usr/lib/xdg-desktop-portal &
# /usr/lib/xdg-desktop-portal-wlr &
# /usr/lib/xdg-desktop-portal-gtk &
wl-paste --type text --watch cliphist store &
wl-paste --type image --watch cliphist store &
fcitx5 &
swww-daemon --format xrgb &
flatpak run app.zen_browser.zen &
