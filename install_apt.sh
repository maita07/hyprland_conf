#!/bin/bash

# Set of packages and configurations for i3wm customized to my liking.

# Update package lists and install necessary packages
sudo apt update && sudo apt install -y fastfetch btop pavucontrol hyprland foot waybar wofi hyprpaper xdg-desktop-portal-hyprland polkit-kde-agent-1 qt6-wayland qt6ct qt5ct nwg-look grim slurp swappy fonts-font-awesome fonts-firacode

while true; do
    read -p "¿Quiere instalar brightnessctl? (notebooks) [s/n]: " respuesta
    
    # Convertir a minúscula para facilitar la comparación
    respuesta=$(echo "$respuesta" | tr '[:upper:]' '[:lower:]')

    case "$respuesta" in
        [s]* ) 
            echo "Iniciando la instalación de brightnessctl..."
            sudo apt update && sudo apt install -y brightnessctl
	    # Add current user to the video group for brightness control
	    sudo usermod -aG video $USER
            break
            ;;
        [n]* ) 
            echo "Instalación omitida por el usuario."
            break
            ;;
        * ) 
            echo "Error: Respuesta no válida. Por favor, ingrese 's' para Sí o 'n' para No."
            echo "----------------------------------------------------------------"
            ;;
    esac
done
