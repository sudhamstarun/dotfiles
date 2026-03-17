#!/bin/bash

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BACKUP_DIR="$HOME/.dotfiles_backup_$(date +%Y%m%d_%H%M%S)"

echo "Installing dotfiles..."

mkdir -p "$BACKUP_DIR"

if [ -d "$HOME/.config/nvim" ]; then
  echo "Backing up existing nvim config..."
  mv "$HOME/.config/nvim" "$BACKUP_DIR/"
fi

if [ -f "$HOME/.tmux.conf" ]; then
  echo "Backing up existing tmux.conf..."
  mv "$HOME/.tmux.conf" "$BACKUP_DIR/"
fi

if [ -f "$HOME/.zshrc" ]; then
  echo "Backing up existing .zshrc..."
  mv "$HOME/.zshrc" "$BACKUP_DIR/"
fi

ln -s "$DOTFILES_DIR/.config/nvim" "$HOME/.config/nvim"
ln -s "$DOTFILES_DIR/.tmux.conf" "$HOME/.tmux.conf"
ln -s "$DOTFILES_DIR/.zshrc" "$HOME/.zshrc"

echo "Dotfiles installed successfully!"
echo "Backups saved to: $BACKUP_DIR"
