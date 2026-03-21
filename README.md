# Dotfiles

Personal development environment configuration with Neovim (LazyVim), Tmux, Kitty terminal, and Zsh shell. All tools themed with Tokyonight Moon for a consistent aesthetic.

## Components

- **Neovim**: LazyVim-based setup with Codeium AI completion
- **Terminal**: Kitty with Tokyonight Moon theme
- **Tmux**: Terminal multiplexer with custom dev layouts
- **Shell**: Zsh with Powerlevel10k prompt
- **Languages**: Python (pyenv/conda), JavaScript (Bun)

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

LazyVim-based Neovim configuration with enhanced productivity features.

### Keybindings

**Navigation:**
- `Ctrl-h/j/k/l`: Focus left/down/up/right window
- `Ctrl-Up/Down/Left/Right`: Resize window

**Editing:**
- `Esc`: Clear search highlights
- `Esc Esc`: Exit terminal mode

**LazyVim defaults:**
- `gd`: Go to definition
- `K`: Hover documentation
- `gr`: References
- `Ctrl-f`: Fuzzy search files (Telescope)
- `Ctrl-b`: Fuzzy search buffers (Telescope)

### Features

- **Theme**: Tokyonight Moon
- **LSP**: Auto-completion, diagnostics, formatting
- **AI**: Codeium AI-powered code completion
- **Git**: Integration with signs and blame
- **File Explorer**: nvim-tree (shows hidden files by default)
- **Plugin Manager**: Lazy.nvim
- **Tab width**: 2 spaces
- **Line numbers**: Relative + absolute
- **Auto-format**: Strip trailing whitespace on save

## Terminal (Kitty)

### Configuration

- **Theme**: Tokyonight Moon (matches Neovim and Tmux)
- **Font**: JetBrains Mono Nerd Font (13pt)
- **Colors**: Complete Tokyonight Moon color palette
- **Features**: Powerline tab bar, window padding, 10000 line scrollback

### Requirements

Install Kitty terminal emulator:
```bash
brew install --cask kitty
```

## Shell (Zsh)

### Features

- **Prompt**: Powerlevel10k (highly customizable instant prompt)
- **Python**: pyenv for version management, Anaconda for environments
- **JavaScript**: Bun for fast JavaScript runtime and package manager
- **Aliases**: `ls` shows hidden files by default (`ls -la`)
- **Tools**: opencode CLI integration

### Requirements

```bash
brew install pyenv
```

## Tmux

### Configuration

- **Theme**: Tokyonight Moon (matches Neovim)
- **Colors**: Dark background with purple/blue accents
- **Status bar**: Time, date, session name
- **Custom Layout**: Development workspace (`` `D `` keybinding)

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
- `` `D``: Open dev layout (nvim left, opencode top-right, terminal bottom-right)

### Dev Layout

The custom dev layout (` `D`) creates a 70/30 split:
- **Left (70%)**: Neovim for editing
- **Right top (30%)**: opencode for AI assistance
- **Right bottom**: Terminal for commands

## Requirements

- Neovim 0.11+
- Tmux 3.6+
- Kitty terminal
- Homebrew (for installation)
- JetBrains Mono Nerd Font

## Installation of Dependencies

```bash
brew install nvim tmux gh kitty
```

## GitHub Setup

After installing GitHub CLI:

```bash
gh auth login
```
