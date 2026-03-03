#!/bin/bash

sketchybar --add item calendar right \
  --set calendar icon=􀧞 \
  icon.drawing=on \
  update_freq=30 \
  background.color=$BACKGROUND_1 \
  background.corner_radius=9 \
  background.height=32 \
  background.border_color=$PINK \
  background.border_width=3 \
  background.corner_radius=10 \
  script="$PLUGIN_DIR/clock.sh"
