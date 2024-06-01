#!/usr/bin/env zsh
# Don't read global configs
# Set here to avoid reading global zprofile and zshrc
unsetopt GLOBAL_RCS

# XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

# ZSH
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$ZDOTDIR/.zhistory"    # History filepath
export HISTSIZE=10000                   # Maximum events for internal history
export SAVEHIST=10000                   # Maximum events in history file

# EDITOR
export EDITOR=vim
export VISUAL=vim

# TODO: Revisit this.
# Source environment settings
source "$ZDOTZSH/env.zsh"

# GPG
export GPG_TTY=$(tty)

# PYTHON
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Projects
if [[ -a /usr/local/bin/virtualenvwrapper.sh ]]; then
    source /usr/local/bin/virtualenvwrapper.sh
elif [[ -a /usr/share/virtualenvwrapper/virtualenvwrapper.sh ]]; then
    source /usr/share/virtualenvwrapper/virtualenvwrapper.sh
fi

# NVM / NPM
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# NIX SHELL
F="$HOME/.nix-profile/etc/profile.d/nix.sh"; [ -s $F ] && \. $F
F="$HOME/Projects/nix-helpers/zsh-nix-shell/nix-shell.plugin.zsh"; [ -s $F ] && \. $F
F="$HOME/Projects/nix-helpers/nix-zsh-completions/nix-zsh-completions.zsh"; [ -s $F ] && \. $F
eval "$(direnv hook zsh)"

# HOMEBREW
export BREW_BIN="/opt/homebrew/bin"
if [ -d "$BREW_BIN" ]; then
    export PATH="$BREW_BIN:$PATH" # I want to default to brew stuff first.
fi

# ANDROID
export ANDROID_HOME=$HOME/Library/Android/sdk
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
if [[ -d "$ANDROID_SDK_ROOT" ]]; then
    export PATH="$PATH:$ANDROID_SDK_ROOT/platform-tools:$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/cmdline-tools/latest/bin"
fi

# LOCAL
source $HOME/.zshenv-local