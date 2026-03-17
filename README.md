# Dotfiles

LazyVim (Neovim) and Tmux configuration with Tokyonight Moon theme.

## Installation

1. Clone this repository:
   ```bash
   cd Developer/dotfiles
   ```

2. Run the install script:
   ```bash
   ./install.sh
   ```

3. Start Neovim (plugins will auto-install on first launch):
   ```bash
   nvim
   ```

## Neovim (LazyVim)

LazyVim is a Neovim setup with batteries included.

### Keybindings

- `Ctrl-n`: Toggle file tree
- `:NvimTreeFocus`: Focus file tree
- `gd`: Go to definition
- `K`: Hover documentation
- `gr`: References
- `Ctrl-f`: Fuzzy search files
- `Ctrl-b`: Fuzzy search buffers

### Features

- **Theme**: Tokyonight Moon
- **LSP**: Auto-completion, diagnostics, formatting
- **Git**: Integration with signs and blame
- **Line numbers**: Relative + absolute
- **Tab width**: 2 spaces
- **Plugin Manager**: Lazy.nvim

## Tmux

### Keybindings

- `` ` ``: Prefix key (backtick)
- `` `c``: Create new window
- `` `n/p``: Next/previous window
- `` `1-9``: Switch to window by number
- `` `v``: Split pane horizontally
- `` `s``: Split pane vertically
- `` `h/j/k/l``: Move between panes (vim-style)
- `` `H/J/K/L``: Resize panes
- `` `S``: Choose session
- `` `N``: Create new session

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
