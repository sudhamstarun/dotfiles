# Dotfiles

Neovim and Tmux configuration with GitHub Dark theme.

## Installation

1. Clone this repository:
   ```bash
   cd Developer/dotfiles
   ```

2. Run the install script:
   ```bash
   ./install.sh
   ```

3. Install Neovim plugins (will auto-install on first launch):
   ```bash
   nvim
   ```

## Neovim

### Keybindings

- `Ctrl-n`: Toggle file tree
- `:NvimTreeFocus`: Focus file tree

### Configuration

- **Theme**: GitHub Dark
- **Line numbers**: Enabled (relative + absolute)
- **Tab width**: 2 spaces
- **Plugins**: Lazy.nvim, nvim-tree, gitsigns

## Tmux

### Keybindings

- `Ctrl-a`: Prefix key
- `Ctrl-a c`: Create new window
- `Ctrl-a n/p`: Next/previous window
- `Ctrl-a 1-9`: Switch to window by number
- `Ctrl-a v`: Split pane horizontally
- `Ctrl-a s`: Split pane vertically
- `Ctrl-a h/j/k/l`: Move between panes (vim-style)
- `Ctrl-a H/J/K/L`: Resize panes
- `Ctrl-a S`: Choose session
- `Ctrl-a N`: Create new session

## Requirements

- Neovim 0.11+
- Tmux 3.6+
- Homebrew (for installation)

## Installation of Dependencies

```bash
brew install nvim tmux gh
```

## GitHub Setup

After installing GitHub CLI:

```bash
gh auth login
```
