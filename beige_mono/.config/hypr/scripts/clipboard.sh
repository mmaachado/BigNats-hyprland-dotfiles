#!/bin/bash

cliphist list | wofi --dmenu -c $HOME/.config/wofi/clipboardconfig | cliphist decode | wl-copy
