[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Load bash completion functions
autoload -Uz +X compinit && compinit
autoload -Uz +X bashcompinit && bashcompinit
# Load the Linode CLI Bash Completion file
source ~/.zsh_local/completions/linode.sh

