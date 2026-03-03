#!/bin/bash

DAYS=(日曜日 月曜日 火曜日 水曜日 木曜日 金曜日 土曜日)

KANJI_MONTHS=(
  一月 二月 三月 四月 五月 六月
  七月 八月 九月 十月 十一月 十二月
)

kanji_day() {
  local n=$1

  case $n in
  1) echo "一日" ;;
  2) echo "二日" ;;
  3) echo "三日" ;;
  4) echo "四日" ;;
  5) echo "五日" ;;
  6) echo "六日" ;;
  7) echo "七日" ;;
  8) echo "八日" ;;
  9) echo "九日" ;;
  10) echo "十日" ;;

  11) echo "十一日" ;;
  12) echo "十二日" ;;
  13) echo "十三日" ;;
  14) echo "十四日" ;;
  15) echo "十五日" ;;
  16) echo "十六日" ;;
  17) echo "十七日" ;;
  18) echo "十八日" ;;
  19) echo "十九日" ;;

  20) echo "二十日" ;;
  21) echo "二十一日" ;;
  22) echo "二十二日" ;;
  23) echo "二十三日" ;;
  24) echo "二十四日" ;;
  25) echo "二十五日" ;;
  26) echo "二十六日" ;;
  27) echo "二十七日" ;;
  28) echo "二十八日" ;;
  29) echo "二十九日" ;;

  30) echo "三十日" ;;
  31) echo "三十一日" ;;

  *) echo "${n}日" ;;
  esac
}

day_index=$(date +%w)
kanji_weekday="${DAYS[$day_index]}"

month_index=$((10#$(date +%m) - 1))
kanji_month="${KANJI_MONTHS[$month_index]}"

day_num=$((10#$(date +%d)))
kanji_daynum=$(kanji_day "$day_num")

label="$kanji_weekday  $kanji_daynum  $kanji_month  $(date +'%I:%M %p')"

sketchybar --set $NAME label="$label"
