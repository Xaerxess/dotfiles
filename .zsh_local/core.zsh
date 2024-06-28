# Activate brew
eval $(/opt/homebrew/bin/brew shellenv)

# Path to your oh-my-zsh installation.
export ZSH=/Users/grozniec/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="robbyrussell"

# History settings
export HISTSIZE=100000000
export SAVEHIST=$HISTSIZE
setopt EXTENDED_HISTORY

# Load: OH-MY-ZSH
source $ZSH/oh-my-zsh.sh

# Load bash completion functions
autoload -Uz +X compinit && compinit
autoload -Uz +X bashcompinit && bashcompinit

__git_files () {
    _wanted files expl 'local files' _files
}

