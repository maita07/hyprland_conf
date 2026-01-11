#!/bin/bash

# Sacamos el estado actual de las animaciones
HYPRGAMEMODE=$(hyprctl getoption animations:enabled | awk 'NR==1{print $2}')

if [ "$HYPRGAMEMODE" = 1 ] ; then
    # APAGAR TODO (Modo Drástico)
    hyprctl --batch "\
        keyword animations:enabled 0;\
        keyword decoration:drop_shadow 0;\
        keyword decoration:blur:enabled 0;\
        keyword general:gaps_in 0;\
        keyword general:gaps_out 0;\
        keyword general:border_size 1;\
        keyword decoration:rounding 0"
    exit
fi

# PRENDER TODO (Modo Chulo)
hyprctl reload
