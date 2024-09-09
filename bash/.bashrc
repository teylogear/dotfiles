# Source global definitions
[ -f /etc/bashrc ] && . /etc/bashrc

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# aliases
[ -f ~/.dotfiles/common_shell_config ] && . ~/.dotfiles/common_shell_config

# fnm
FNM_PATH="/home/antonio/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="$FNM_PATH:$PATH"
  eval "`fnm env`"
fi

# deno
export DENO_INSTALL="/home/antonio/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH

# rust
. "$HOME/.cargo/env"
