#!/bin/bash

function icon_map() {
  case "$1" in
  "Alacritty" | "Hyper" | "iTerm2" | "kitty" | "Terminal" | "终端" | "WezTerm")
    icon_result="􀪏"
    ;;
  "App Store")
    icon_result="􁽈"
    ;;
  "Finder" | "访达")
    icon_result="􀈖"
    ;;
  "Code" | "Code - Insiders")
    icon_result="􀺿"
    ;;
  "Spotify")
    icon_result="􂙩"
    ;;
  "Zen")
    icon_result="􂇕"
    ;;
  "Pages" | "Pages 文稿")
    icon_result="􀉀"
    ;;
  "Calendar" | "日历" | "Fantastical" | "Cron" | "Amie")
    icon_result="􀉉"
    ;;
  "zoom.us")
    icon_result="􀍌"
    ;;
  "Mail")
    icon_result="􀍖"
    ;;
  "Preview" | "预览" | "Skim" | "zathura")
    icon_result="􀏆"
    ;;
  "Messages" | "信息" | "Nachrichten")
    icon_result="􀌥"
    ;;
  "FaceTime" | "FaceTime 通话")
    icon_result="􀍊"
    ;;
  "System Preferences" | "System Settings" | "系统设置")
    icon_result="􀣌"
    ;;
  "Tiled")
    icon_result="􀫐"
    ;;
  "Aseprite")
    icon_result="􀣷"
    ;;
  *)
    icon_result="􀅼"
    ;;
  esac
}

icon_map "$1"

echo "$icon_result"
