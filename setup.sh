#!/usr/bin/env bash

set -e

echo "Installing dependencies via Homebrew..."
brew bundle --no-lock --file=/dev/stdin <<EOF
brew "ripgrep"
EOF

echo "Stowing configs..."
mkdir -p ~/.config/herdr
stow -t ~/.config kitty starship helix herdr
stow -t ~ zshrc

echo "Done."
