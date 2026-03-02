#!/bin/bash

SPACE_SIDS=(1 2 3 4 5 6 7 8 9 10)

for sid in "${SPACE_SIDS[@]}"; do

  sketchybar --add space space.$sid left \
    --set space.$sid \
    space=$sid \
    icon=$sid \
    width=60 \
    background.color=$BACKGROUND_1 \
    background.corner_radius=9 \
    background.height=32 \
    background.border_color=$PINK \
    background.border_width=3 \
    background.corner_radius=10 \
    script="$PLUGIN_DIR/space.sh" \
    --subscribe space.$sid space_change

  sketchybar --add item space_separator.$sid left \
    --set space_separator icon="􀆊" \
    width=10 \
    label.drawing=off \
    background.drawing=off \
    script="$PLUGIN_DIR/space_windows.sh" \
    --subscribe space_separator space_windows_change

done
