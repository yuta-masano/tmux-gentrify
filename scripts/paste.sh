#!/bin/bash

stack=$(tmux show -gqv @gentrify_pane_stack)
if [[ -z "$stack" ]]; then
  tmux display-message "Gentrify: paste stack empty"
  exit 0
fi

# Extract first pane_id from stack
IFS=',' read -r first_pane rest <<< "$stack"

current_pane=$(tmux display-message -p "#{pane_id}")

if tmux swap-pane -s "$first_pane" -t "$current_pane"; then
  tmux kill-pane -t "$current_pane"
  tmux set -g @gentrify_pane_stack "$rest"
  tmux select-pane -t "$first_pane" -P ""
else
  tmux display-message "Gentrify: failed to paste pane"
fi
