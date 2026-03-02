#!/bin/sh

source "$CONFIG_DIR/colors.sh"

if [ $SELECTED = true ]; then
  sketchybar --set $NAME \
    background.drawing=on \
    background.color=$BACKGROUND_2 \
    label.color=$CYAN \
    icon.color=$WHITE
else
  sketchybar --set $NAME \
    background.drawing=on \
    background.color=$BACKGROUND_1 \
    label.color=$CYAN \
    icon.color=$WHITE
fi
