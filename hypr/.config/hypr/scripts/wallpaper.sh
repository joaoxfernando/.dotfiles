#!/usr/bin/env bash

# Choose a r$andom wallpaper
NEW_WP=$(ls $HOME/Pictures/wallpapers | shuf -n 1 )

# Full wallpapers path 
WALLPAPER="$HOME/Pictures/wallpapers/$NEW_WP"

# Configuration file path
HYPRPAPER_CONF_PATH="$HOME/.config/hypr/hyprpaper.conf"

# Clean hyprpaper config file
echo "" > $HYPERPAPER_CONF_PATH

# Changing the hyprpaper.conf content 
echo "preload = $WALLPAPER" >> $HYPRPAPER_CONF_PATH
echo "wallpaper = HDMI-A-1,$WALLPAPER" >> $HYPRPAPER_CONF_PATH
echo "splash = false" >> $HYPRPAPER_CONF_PATH

# restarting the hyprpaper 
killall hyprpaper 
hyprpaper &
