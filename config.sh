#!/bin/bash

# Set of packages and configurations for i3wm customized to my liking.
# This script is intended for Debian 12.

# Prepare directory for wallpapers
mkdir -p ~/.config/wallpaper/
echo "Wallpaper directory created."
cp wallpapers/* ~/.config/wallpaper/
echo "Wallpapers copied."

# Ensure the configuration directory exists and copy the config
mkdir -p ~/.config/
cp -r hypr/ ~/.config/
echo "Configuration copied."

# config rofi
#mkdir -p ~/.config/rofi
#cp config_rofi/config.rasi ~/.config/rofi
#cp config_rofi/catppuccin-lavrent-mocha.rasi ~/.config/rofi

# theme
mkdir -p ~/.themes
mkdir -p ~/.config/gtk-3.0
cp -r catppuccin_theme/Catppuccin-Dark-Macchiato ~/.themes
cp -r catppuccin_theme/Catppuccin-Dark-Macchiato-xhdpi ~/.themes
cp -r catppuccin_theme/Catppuccin-Dark-Macchiato-hdpi ~/.themes
cp catppuccin_theme/settings.ini ~/.config/gtk-3.0/
cp catppuccin_theme/gtk.css ~/.config/gtk-3.0/

# picom
#mkdir -p ~/.config/picom
#cp config_picom/picom.conf ~/.config/picom

# i3status
#mkdir -p ~/.config/i3status
#cp i3status/config ~/.config/i3status

# fastfetch
mkdir -p ~/.config/fastfetch
cp fastfetch/config.jsonc ~/.config/fastfetch

# foot
cp -r foot/ ~/.config/

# swappy
cp -r swappy/ ~/.config/
