# Tmux Gentrify

An elegant tmux plugin that lets you evict panes from their old windows and relocate them wherever you please.

- `Alt-x`: Cut a pane (marks it and breaks it off)
- `Alt-v`: Paste the cut pane into the current window

(Note: this is without the tmux key)

No naming windows. No navigating sessions. Just move panes like you’re dragging windows.

## Install (TPM)

Add this line to your `.tmux.conf`:

```tmux
set -g @plugin 'kristopolous/tmux-gentrify'

