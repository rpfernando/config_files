# Path to your oh-my-zsh configuration.  
ZSH=$HOME/.oh-my-zsh

# zsh theme
ZSH_THEME="rpfernando"

# oh-my-zsh plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration
source ~/.functions
source ~/.aliases

export PATH="/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/bin:/usr/local/git/bin:/usr/local/go/bin"

