# Source global definitions
[ -f /etc/bashrc ] && . /etc/bashrc

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

#---------------------------------------------------------------------------------------------------

# aliases and configs
[ -f ~/.dotfiles/shell/common_shell_config ] && . ~/.dotfiles/shell/common_shell_config


