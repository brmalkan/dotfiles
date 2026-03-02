#!/bin/bash

sketchybar --add item battery right \
  --set battery update_freq=120 \
  background.color=$BACKGROUND_1 \
  background.corner_radius=9 \
  background.height=32 \
  background.border_color=$PINK \
  background.border_width=3 \
  background.corner_radius=10 \
  script="$PLUGIN_DIR/battery.sh" \
  --subscribe battery system_woke power_source_change
