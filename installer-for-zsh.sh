#!/bin/bash

# gets the absolute path to the directory containing this script
DIR="$(dirname "$(readlink -f "$0")")"

SCRIPT="$DIR/get-git-branch-name.sh"

read -p "get-git-branch-name: do you wish to add the utility to your .zshrc? [y/n]" -n 1 -r
echo # moves to a new line

if [[ ! $REPLY =~ ^[Yy]$ ]]; then
  log "get-git-branch-name: .zshrc setup aborted"
  # handle exits from shell or function but don't exit interactive shell
  [[ "$0" = "$BASH_SOURCE" ]] && exit 0 || return 0
fi


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
