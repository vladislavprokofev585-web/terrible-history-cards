#!/usr/bin/env bash
# usage: bash src/render_story.sh 31 35 38  -> stories/story_NN.png (1080x1920, для сторис)
set -e
ROOT="$(cd "$(dirname "$0")/.." && pwd -W 2>/dev/null || cd "$(dirname "$0")/.." && pwd)"
CHROME="/c/Program Files/Google/Chrome/Application/chrome.exe"
mkdir -p "$ROOT/stories"
for i in "$@"; do
  n=$(printf "%02d" "$i")
  "$CHROME" --headless=new --disable-gpu --hide-scrollbars --window-size=1080,1920 \
    --screenshot="$ROOT/stories/story_$n.png" "file:///$ROOT/src/story.html?n=$i" >/dev/null 2>&1
  echo "rendered story_$n.png"
done
