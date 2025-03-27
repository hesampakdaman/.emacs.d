#!/bin/bash

# Argument should be one of: h j k l
key="$1"

case "$key" in
  h) dir="left";  hdir="l" ;;
  j) dir="down";  hdir="d" ;;
  k) dir="up";    hdir="u" ;;
  l) dir="right"; hdir="r" ;;
  *) exit 1 ;;
esac

emacsclient -e "(my-windmove-or-hyprland '$dir \"$hdir\")"
