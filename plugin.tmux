#!/usr/bin/env bash

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

tmux bind-key M-x run-shell "$DIR/scripts/cut.sh"
tmux bind-key M-v run-shell "$DIR/scripts/paste.sh"
