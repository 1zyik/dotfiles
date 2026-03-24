# Load aliases if they exist
[ -f "${HOME}/.aliases" ] && . "${HOME}/.aliases"

# Load starship config
eval "$(starship init zsh)"

. "$HOME/.local/bin/env"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init --path)"
  eval "$(pyenv init -)"
fi

# Set up fzf key bindings
source <(fzf --zsh)
