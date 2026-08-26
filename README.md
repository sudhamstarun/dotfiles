# Dotfiles

Personal development environment configuration with Helix, Herdr, Kitty terminal, and Zsh shell. All tools themed with Catppuccin Mocha for a consistent aesthetic.

Inspired by [omerxx/dotfiles](https://github.com/omerxx/dotfiles).

## Installation

```bash
./setup.sh
```

This uses GNU Stow to create symlinks:
- `kitty/` → `~/.config/kitty`
- `starship/` → `~/.config/starship.toml`
- `helix/` → `~/.config/helix`
- `herdr/` → `~/.config/herdr`
- `zshrc/` → `~/.zshrc`

## Components

- **Editor**: Helix (`hx`)
- **Terminal**: Kitty with Catppuccin Mocha theme
- **Multiplexer**: Herdr agent runtime with custom dev layouts
- **Shell**: Zsh with Starship prompt
- **Languages**: Python (pyenv/conda), JavaScript (Bun)

## Editor (Helix)

- **Config**: `~/.config/helix/config.toml`
- **Theme**: Catppuccin Mocha

### Requirements

```bash
brew install helix ripgrep
```

## Terminal (Kitty)

### Configuration

- **Theme**: Catppuccin Mocha (matches Herdr)
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

## Herdr

Terminal multiplexer and agent runtime (replaces tmux). Panes live in a background server, so sessions survive closing the terminal, and running coding agents (like opencode) are detected and tracked automatically.

### Configuration

- **Theme**: Catppuccin Mocha
- **Prefix key**: `Ctrl+a` (same as the old tmux setup)
- **Config**: `~/.config/herdr/config.toml`

### Keybindings

- `Ctrl+a`: Prefix key
- `Ctrl+a c`: Create new tab
- `Ctrl+a n/p`: Next/previous tab
- `Ctrl+a h/j/k/l`: Move between panes (vim-style)
- `Ctrl+a D`: Open dev layout
- `Ctrl+a ?`: Show all active bindings

### Dev Layout

The custom dev layout (`Ctrl+a D`) creates a 70/30 split:
- **Left (70%)**: Helix for editing
- **Right (30%)**: opencode for AI assistance

Layout script: `~/.config/herdr/scripts/dev-layout.sh`

### Session Management

- Panes persist in a background server; close the terminal and reattach with `herdr`
- `herdr --session <name>`: Launch or attach to a named session
- `herdr server reload-config`: Reload config after edits

## Requirements

- Helix
- Herdr 0.8+
- Kitty terminal
- Homebrew (for installation)
- JetBrains Mono font

## Installation of Dependencies

```bash
# Core tools
brew install helix herdr gh ripgrep

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
```

## GitHub Setup

After installing GitHub CLI:

```bash
gh auth login
```

## Structure

```
dotfiles/
├── kitty/          # Kitty config (~/.config/kitty)
├── starship/       # Starship config (~/.config/starship.toml)
├── helix/          # Helix config (~/.config/helix)
├── herdr/          # Herdr config (~/.config/herdr)
│   ├── scripts/    # Custom layout scripts
│   └── config.toml
├── zshrc/          # Zsh config (~/.zshrc)
├── .stowrc         # Stow configuration
├── setup.sh        # Installation script
└── README.md
```
