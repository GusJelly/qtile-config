#!/bin/sh

export XCURSOR_THEME= "DMZ-Black" &
export XCURSOR_SIZE= "24" &
export BROWSER= "brave-browser" &
xrandr --output HDMI-A-0 --primary --mode 1920x1080 --refresh 60.00 --left-of eDP &
xsettingsd &
xrdb -merge /home/gus/.Xresources &
xsetroot -cursor_name left_ptr &
/usr/libexec/xdg-desktop-portal-gnome &
gnome-keyring-daemon --start --components=ssh,secrets,pkcs11 &
blueman-applet &
nm-applet &
flameshot &
picom --vsync &

xinput set-prop 'Logitech USB Receiver' 'libinput Accel Profile Enabled' 0, 1 &
xinput set-prop 'Logitech USB Receiver' 'libinput Accel Speed' 0 &

xinput set-prop 'SYNA0001:00 06CB:CE78 Touchpad' 'libinput Tapping Enabled' 1 &
xinput set-prop 'SYNA0001:00 06CB:CE78 Touchpad' 'libinput Natural Scrolling Enabled' 1 &

