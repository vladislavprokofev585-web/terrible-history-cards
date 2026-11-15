#!/usr/bin/env bash
# usage: bash src/render.sh 31 32 33   (story numbers = positions in src/stories.js)
set -e
ROOT="$(cd "$(dirname "$0")/.." && pwd -W 2>/dev/null || cd "$(dirname "$0")/.." && pwd)"
CHROME="/c/Program Files/Google/Chrome/Application/chrome.exe"
for i in "$@"; do
  n=$(printf "%02d" "$i")
  "$CHROME" --headless=new --disable-gpu --hide-scrollbars --window-size=1080,1350 \
    --screenshot="$ROOT/cards/istoriya_$n.png" "file:///$ROOT/src/cards.html?n=$i" >/dev/null 2>&1
  echo "rendered istoriya_$n.png"
done
