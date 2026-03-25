#!/bin/bash

# Kill any existing panes in current window except first one
while [ $(tmux display-message -p '#{window_panes}') -gt 1 ]; do
    tmux kill-pane -t 1
done

# Pane 1 is the original left pane (will be nvim)

# Split pane 1 vertically to create right pane (30% width), new pane becomes pane 2
tmux split-window -h -p 30 -c "#{pane_current_path}"

# Launch nvim in left pane (pane 1)
tmux send-keys -t 1 "nvim" C-m

# Launch opencode in right pane (pane 2)
tmux send-keys -t 2 "opencode" C-m

# Select left pane (for nvim)
tmux select-pane -t 1
