#!/bin/bash

sketchybar --add item volume right \
  --set volume script="$PLUGIN_DIR/volume.sh" \
  background.color=$BACKGROUND_1 \
  background.corner_radius=9 \
  background.height=32 \
  background.border_color=$PINK \
  background.border_width=3 \
  background.corner_radius=10 \
  --subscribe volume volume_change
