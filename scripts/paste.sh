#!/bin/bash

stack=$(tmux show -gqv @gentrify_pane_stack)
if [[ -z "$stack" ]]; then
  tmux display-message "Gentrify: paste stack empty"
  exit 0
fi

# Extract first pane_id from stack
IFS=',' read -r first_pane rest <<< "$stack"

# Update stack without first pane
tmux set -g @gentrify_pane_stack "$rest"

if ! tmux join-pane -s "$first_pane"; then
  # If that fails, join to current window instead
  current_window=$(tmux display-message -p "#{window_id}")
  tmux join-pane -s "$first_pane" -t "$current_window"
fi

tmux select-pane -t "$first_pane" -P ""
