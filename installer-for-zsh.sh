#!/bin/bash

# gets the absolute path to the directory containing this script
DIR="$(dirname "$(readlink -f "$0")")"

SCRIPT="$DIR/get-git-branch-name.sh"

if [ -f "$SCRIPT" ]; then
  # adds to .zshrc
  # # get git branch name
  # . "$SCRIPT"
  printf '\n%s\n%s\n%s\n%s\n' \
    "# get git branch name" \
    "if [ -f \"$SCRIPT\" ]; then" \
    "  . \"$SCRIPT\"" \
    'fi' \
    >>"$HOME/.zshrc"
fi
