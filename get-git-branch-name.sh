#!/bin/bash

function get_git_branch_name {
  local branch_name=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
  # -n checks if the command result length is not empty
  if [ -n "$branch_name" ]; then
    echo " [$branch_name]"
  else
    echo ""
  fi
}
