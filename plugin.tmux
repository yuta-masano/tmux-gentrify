#!/usr/bin/env bash

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Alt-x to cut pane (no prefix)
tmux bind-key -n M-x run-shell "$DIR/scripts/cut.sh"

# Alt-v to paste pane (no prefix)
tmux bind-key -n M-v run-shell "$DIR/scripts/paste.sh"
