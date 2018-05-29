#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

xrandr --output VGA-1-1 --auto --left-of DVI-I-1
sleep 1
setsid emacs
sleep 1
pkill dropbox
sleep 5
setsid dbus-launch dropbox start
exit 1
