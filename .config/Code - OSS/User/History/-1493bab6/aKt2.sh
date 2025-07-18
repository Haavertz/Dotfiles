#!/bin/bash

SELECTED_WALLPAPER=$1
WALLPAPER_DIR="$HOME/wallpapers"

if [ ! -f "$WALLPAPER_DIR/$SELECTED_WALLPAPER.jpg" ]; then
    echo "Error: Wallpaper not found: $SELECTED_WALLPAPER"
    exit 1
fi

wal -i "$WALLPAPER_DIR/$SELECTED_WALLPAPER.jpg" || { echo "Error: pywal failed"; exit 1; }

killall eww || echo "Warning: No eww process found"
eww open-many side-bar notifications

killall hyprpaper || echo "Warning: No hyprpaper process found"
hyprpaper &
