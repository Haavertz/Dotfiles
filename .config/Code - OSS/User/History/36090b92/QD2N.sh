#!/bin/bash

DIRECTORY=~/wallpapers/
DIRECTORY=$(eval echo "$DIRECTORY")

if [ -d "$DIRECTORY" ]; then
    find "$DIRECTORY" -maxdepth 1 -type f \( -iname "*.jpg" -o -iname "*.png" \) \
        -printf "%f\n"
        | grep -E '^[0-9]+\.(jpg|png)$'
        | jq -R . | jq -s .
else
    echo "[]"
    exit 1
fi
