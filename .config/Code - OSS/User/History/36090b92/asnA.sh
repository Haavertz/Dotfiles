#!/bin/bash

DIRECTORY=~/wallpapers/
DIRECTORY=$(eval echo $DIRECTORY)

if [ -d "$DIRECTORY" ]; then
    find "$DIRECTORY" -maxdepth 1 -type f \( -iname "*.jpg" -o -iname "*.png" \) -exec basename {} \; \
    | grep -E '^[0-9]+\.(jpg|png)$' \
    |
else
    echo "[]"
    exit 1
fi
