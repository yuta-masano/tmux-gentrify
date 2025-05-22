#!/bin/bash
pane_id=$(tmux display-message -p "#{pane_id}")
stack=$(tmux show -gqv @gentrify_pane_stack)
if [[ -z "$stack" ]]; then
  new_stack="$pane_id"
else
  new_stack="$pane_id,$stack"
fi
tmux select-pane -t "$pane_id" -P "bg=yellow"
tmux set -g @gentrify_pane_stack "$new_stack"
tmux break-pane -d -s "$pane_id"
