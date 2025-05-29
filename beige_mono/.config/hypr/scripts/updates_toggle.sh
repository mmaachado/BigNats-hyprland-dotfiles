#!/bin/sh
if pgrep -x updates_install; then
  pkill updates_install
else
  foot -T updates -e ~/.config/hypr/scripts/updates_install.sh &
fi
