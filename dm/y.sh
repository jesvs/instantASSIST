#!/usr/bin/env bash

# download the clipboard link with youtube-dl

LINK="$(xclip -o -selection clipboard)"
mkdir -p $(xdg-user-dir MUSIC) &>/dev/null
cd $(xdg-user-dir MUSIC)
youtube-dl -x --audio-format mp3 "$LINK"
