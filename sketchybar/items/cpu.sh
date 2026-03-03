#!/bin/bash

sketchybar --add item cpu right \
  --set cpu update_freq=2 \
  icon=􀧓 \
  label.drawing=on \
  background.color=$BACKGROUND_1 \
  background.corner_radius=9 \
  background.height=32 \
  background.border_color=$PINK \
  background.border_width=3 \
  background.corner_radius=10 \
  script="$PLUGIN_DIR/cpu.sh"
