#!/bin/bash

# Caminho do wallpaper que você quer aplicar
WALLPAPER="$HOME/Imagens/wallpapers/meu_wallpaper.jpg"

for MONITOR in $(hyprctl monitors -j | jq -r '.[].name'); do
  hyprctl hyprpaper wallpaper "$MONITOR,$WALLPAPER"
done

if pgrep hyprlock > /dev/null; then
  pkill hyprlock
  hyprlock &
fi
