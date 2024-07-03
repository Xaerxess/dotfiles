# Load: Core Configurations and Oh-My-Zsh

eval $(/opt/homebrew/bin/brew shellenv)

# Path to your oh-my-zsh installation.
export ZSH=/Users/grozniec/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="robbyrussell"

# History settings
export HISTSIZE=100000000
export SAVEHIST=$HISTSIZE
setopt EXTENDED_HISTORY

# Load: Plugins
plugins=(fzf python virtualenv docker docker-compose perl cpanm kubectl kube-ps1 dotenv)

# Load: Aliases and Functions
alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# Load: OH-MY-ZSH
source $ZSH/oh-my-zsh.sh

__git_files () {
    _wanted files expl 'local files' _files
}

# Load: External Scripts
#source $HOME/.zsh_local/external.zsh

# Load: Autocompletion Settings
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Load: bash completion functions
autoload -Uz +X compinit && compinit
autoload -Uz +X bashcompinit && bashcompinit

# Load: Linode CLI Bash Completion file
source ~/.zsh_local/completions/linode.sh

# Load: Environment Variables
export PATH="$HOME/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/sbin:/usr/local/bin::$HOME/.local/bin:$PATH"
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# Load: Akamai and Perforce Configurations
[ -f ~/.zsh_local/akamai.zsh ] && source $HOME/.zsh_local/akamai.zsh
