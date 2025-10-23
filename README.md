# Tmux Gentrify

An elegant tmux plugin that lets you evict panes from their old windows and relocate them wherever you please.

- `<prefix> Alt-x`: Cut a pane (marks it and breaks it off)
- `<prefix> Alt-v`: Paste the cut pane, replacing the active pane

No naming windows. No navigating sessions. Just move panes like you’re dragging windows.

It's a stack by the way. You can push multiple things on to it. 

## Install (TPM)

Add this line to your `.tmux.conf`:

```tmux
set -g @plugin 'yuta-masano/tmux-gentrify'
