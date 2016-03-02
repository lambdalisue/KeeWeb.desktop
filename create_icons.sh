#!/bin/bash
for size in 16 24 32 48 64 72 96 128 256; do
    if [[ ! -d "./share/icons/hicolor/${size}x${size}" ]]; then
        mkdir -p "./share/icons/hicolor/${size}x${size}"
    fi
    inkscape --export-png "./share/icons/hicolor/${size}x${size}/KeeWeb.png" -w ${size} \
        "./share/icons/hicolor/scalable/apps/KeeWeb.svg"
done
