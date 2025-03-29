#!/bin/bash

# Argument should be one of: h j k l
key="$1"

case "$key" in
  h) dir="left" ;;
  j) dir="down" ;;
  k) dir="up" ;;
  l) dir="right" ;;
  *) exit 1 ;;
esac

emacsclient -e "(my-windmove-or-hyprland '$dir)"
