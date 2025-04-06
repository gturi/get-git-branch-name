#!/bin/bash

# gets the absolute path to the directory containing this script
DIR="$(dirname "$(readlink -f "$0")")"

SCRIPT="$DIR/get-git-branch-name.sh"

if [ -f "$SCRIPT" ]; then
  # adds to .bashrc
  # # get git branch name
  # if [ -f "$SCRIPT" ]; then
  #     source "$SCRIPT"
  # fi
  printf '\n%s\n%s\n%s\n%s\n' \
    "# get git branch name" \
    "if [ -f \"$SCRIPT\" ]; then" \
    "    source \"$SCRIPT\"" \
    'fi' \
    >>"$HOME/.bashrc"
fi
