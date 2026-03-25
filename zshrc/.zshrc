# Initialize Starship prompt
eval "$(starship init zsh)"
export STARSHIP_CONFIG=~/.config/starship/starship.toml

export PATH="/usr/local/Homebrew/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"

export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv virtualenv-init -)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/tarunsudhams/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/tarunsudhams/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/tarunsudhams/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/tarunsudhams/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH="$HOME/.local/bin:$PATH"

# opencode
export PATH=/Users/tarunsudhams/.opencode/bin:$PATH

# bun completions
[ -s "/Users/tarunsudhams/.bun/_bun" ] && source "/Users/tarunsudhams/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export PATH="/Users/tarunsudhams/.opencode/bin:$PATH"

# Show hidden files by default in ls
alias ls='ls -la'
