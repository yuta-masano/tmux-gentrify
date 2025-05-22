# plugin.tmux

# Alt-x to cut pane (no prefix)
bind -n M-x run-shell "#{plugin_dir}/scripts/cut.sh"

# Alt-v to paste pane (no prefix)
bind -n M-v run-shell "#{plugin_dir}/scripts/paste.sh"
