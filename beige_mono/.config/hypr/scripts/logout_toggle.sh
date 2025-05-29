#!/bin/sh
if pgrep -x wlogout; then
  pkill wlogout
else
  wlogout
fi
