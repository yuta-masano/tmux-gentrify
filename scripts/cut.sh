#!/bin/bash
pane_id=$(tmux display-message -p "#{pane_id}")
tmux set-option -gq @cut_pane "$pane_id"
tmux select-pane -t "$pane_id" -P "bg=yellow"
tmux break-pane -d -s "$pane_id"
