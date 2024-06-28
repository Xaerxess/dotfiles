# Load: Plugins
source $HOME/.zsh_local/plugins.zsh

# Load: Aliases and Functions
source $HOME/.zsh_local/aliases.zsh

# Load: Core Configurations and Oh-My-Zsh
source $HOME/.zsh_local/core.zsh

# Load: External Scripts
source $HOME/.zsh_local/external.zsh

# Load: Autocompletion Settings
source $HOME/.zsh_local/autocompletion.zsh

# Load: Environment Variables
export PATH="$HOME/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/sbin:/usr/local/bin::$HOME/.local/bin:/usr/local/opt/libpq/bin"
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# Load: Akamai and Perforce Configurations
source $HOME/.zsh_local/akamai.zsh

