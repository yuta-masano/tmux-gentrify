#!/bin/bash

pane_id=$(tmux show-option -gqv @cut_pane)
if [ -z "$pane_id" ]; then
  tmux display-message "No pane in cut buffer"
  exit 1
fi

# Try joining pane to original window first
if ! tmux join-pane -s "$pane_id"; then
  # If that fails, join to current window instead
  current_window=$(tmux display-message -p "#{window_id}")
  tmux join-pane -s "$pane_id" -t "$current_window"
fi

tmux select-pane -t "$pane_id" -P ""
tmux set-option -gq @cut_pane ""
