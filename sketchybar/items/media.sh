#!/bin/bash

sketchybar --add item media e \
  --set media label.color=$WHITE \
  label.max_chars=20 \
  icon.padding_left=10 \
  scroll_texts=on \
  icon=􀑪 \
  icon.color=$WHITE \
  background.drawing=off \
  background.color=$BACKGROUND_1 \
  background.corner_radius=9 \
  background.height=32 \
  background.border_color=$PINK \
  background.border_width=3 \
  background.corner_radius=10 \
  script="$PLUGIN_DIR/media.sh" \
  --subscribe media media_change
