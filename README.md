# Dotfiles

Personal development environment configuration with Neovim, Tmux, Kitty terminal, and Zsh shell. All tools themed with Catppuccin Mocha for a consistent aesthetic.

Inspired by [omerxx/dotfiles](https://github.com/omerxx/dotfiles).

## Installation

```bash
./setup.sh
```

This uses GNU Stow to create symlinks:
- `nvim/` → `~/.config/nvim`
- `kitty/` → `~/.config/kitty`
- `starship/` → `~/.config/starship.toml`
- `tmux/` → `~/.config/tmux`
- `zshrc/` → `~/.zshrc`

## Components

- **Neovim**: Basic configuration with essential productivity features
- **Terminal**: Kitty with Catppuccin Mocha theme
- **Tmux**: Terminal multiplexer with custom dev layouts
- **Shell**: Zsh with Starship prompt
- **Languages**: Python (pyenv/conda), JavaScript (Bun)

## Neovim

Basic Neovim configuration with essential productivity features.

### Keybindings

**File Operations:**
- `Ctrl-s`: Save file
- `<leader>q`: Quit

**Navigation:**
- `Ctrl-h/j/k/l`: Focus left/down/up/right window
- `Ctrl-d/u`: Half page down/up (centered)

**Editing:**
- `J`: Join lines (keep cursor centered)
- `<leader>h`: Clear search highlights

**Window Management:**
- `<leader>sv`: Vertical split
- `<leader>sh`: Horizontal split

### Features

- **Line numbers**: Relative + absolute
- **Indentation**: 4 spaces, auto-indent, smart-indent
- **Search**: Case-sensitive with smartcase
- **Cursor**: Highlight current line
- **Colors**: True color support
- **Undo**: Persistent undo files
- **Yank**: Visual highlight on yank
- **Whitespace**: Auto-remove trailing whitespace on save

## Terminal (Kitty)

### Configuration

- **Theme**: Catppuccin Mocha (matches Tmux)
- **Font**: JetBrains Mono (19pt)
- **Colors**: Complete Catppuccin Mocha color palette
- **Features**: Powerline tab bar, window padding, 10000 line scrollback

### Requirements

Install Kitty terminal emulator:
```bash
brew install --cask kitty
```

## Shell (Zsh)

### Features

- **Prompt**: Starship (minimal left prompt, full right prompt)
- **Python**: pyenv for version management, Anaconda for environments
- **JavaScript**: Bun for fast JavaScript runtime and package manager
- **Aliases**: `ls` shows hidden files by default (`ls -la`)
- **Tools**: opencode CLI integration

### Starship Prompt

- **Palette**: Catppuccin Mocha
- **Format**: Minimal left (directory + character), full right
- **Modules**: Git branch, AWS, Go, Kubernetes, Docker context

### Requirements

```bash
brew install pyenv bun
```

## Tmux

### Configuration

- **Theme**: Catppuccin Mocha
- **Prefix key**: `` ` `` (backtick)
- **Status bar**: Session name (left), directory (right)
- **Plugins** (via TPM):
  - tmux-sensible: Sensible defaults
  - tmux-yank: Better copying
  - tmux-resurrect: Save/restore sessions
  - tmux-continuum: Automatic session restoration
  - catppuccin/tmux: Catppuccin theme

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
- `` `D``: Open dev layout

### Dev Layout

The custom dev layout (`` `D ``) creates a 70/30 split:
- **Left (70%)**: Neovim for editing
- **Right (30%)**: opencode for AI assistance

Layout script: `~/.tmux/layouts/dev-layout.sh`

## Requirements

- Neovim 0.11+
- Tmux 3.6+
- Kitty terminal
- Homebrew (for installation)
- JetBrains Mono font

## Installation of Dependencies

```bash
# Core tools
brew install nvim tmux gh

# Terminal
brew install --cask kitty

# Fonts
brew install --cask font-jetbrains-mono

# Python
brew install pyenv

# JavaScript
curl -fsSL https://bun.sh/install | bash

# Starship
brew install starship

# Tmux Plugin Manager (TPM)
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

## GitHub Setup

After installing GitHub CLI:

```bash
gh auth login
```

## Tmux Plugin Installation

After running `./setup.sh`, install TPM plugins by pressing `Ctrl+I` in tmux.

## Structure

```
dotfiles/
├── nvim/           # Neovim config (~/.config/nvim)
├── kitty/          # Kitty config (~/.config/kitty)
├── starship/       # Starship config (~/.config/starship.toml)
├── tmux/           # Tmux config (~/.config/tmux)
│   ├── scripts/     # Custom layout scripts
│   └── tmux.conf
├── zshrc/          # Zsh config (~/.zshrc)
├── .stowrc         # Stow configuration
├── setup.sh        # Installation script
└── README.md
```
