#!/bin/bash

SPACE_SIDS=(1 2 3 4 5 6 7 8 9 10)
KANJI_SIDS=(一 二 三 四 五 六 七 八 九 十)

for i in "${!SPACE_SIDS[@]}"; do
  sid="${SPACE_SIDS[$i]}"
  kanji="${KANJI_SIDS[$i]}"

  sketchybar --add space space.$sid left \
    --set space.$sid \
    space=$sid \
    icon=$kanji \
    width=90 \
    label.drawing=on \
    background.color=$BACKGROUND_1 \
    background.corner_radius=9 \
    background.height=32 \
    background.border_color=$PINK \
    background.border_width=3 \
    background.corner_radius=10 \
    script="$PLUGIN_DIR/space.sh" \
    --subscribe space.$sid space_change space_windows_change

  sketchybar --add item space_separator.$sid left \
    width=0 \
    label.drawing=off \
    background.drawing=off

done
