#!/bin/bash

# Kill any existing panes in current window except the first one
while [ $(tmux display-message -p '#{window_panes}') -gt 1 ]; do
    tmux kill-pane -t 1
done

# Split vertically to create right pane (30% width)
tmux split-window -h -p 30 -c "#{pane_current_path}"

# Split the right pane horizontally (70% opencode, 30% terminal)
tmux split-window -v -p 70 -c "#{pane_current_path}"

# Launch nvim in left pane (pane 0)
tmux send-keys -t 0 "nvim" C-m

# Launch opencode in top right pane (pane 1)
tmux send-keys -t 1 "opencode" C-m

# Select left pane (for nvim)
tmux select-pane -t 0
