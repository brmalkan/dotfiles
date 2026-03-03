#!/bin/sh

source "$CONFIG_DIR/colors.sh"

if [ $SELECTED = true ]; then
  sketchybar --set $NAME \
    background.drawing=on \
    background.color=$BACKGROUND_2 \
    label.color=$WHITE \
    icon.color=$WHITE
else
  sketchybar --set $NAME \
    background.drawing=on \
    background.color=$BACKGROUND_1 \
    label.color=$WHITE \
    icon.color=$WHITE
fi

if [ "$SENDER" = "space_windows_change" ]; then
  space="$(echo "$INFO" | jq -r '.space')"

  if [ "$NAME" = "space.$space" ]; then

    apps="$(echo "$INFO" | jq -r '.apps | keys[]' 2>/dev/null)"

    icon_strip=" "

    if [ -n "$apps" ]; then
      while read -r app; do
        icon_strip+=" $($CONFIG_DIR/plugins/icon_map.sh "$app")"
      done <<< "$apps"
    else
      icon_strip=" —"
    fi

    sketchybar --set $NAME label="$icon_strip"
  fi
fi
