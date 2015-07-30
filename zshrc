# Path to your oh-my-zsh configuration.  
ZSH=$HOME/.oh-my-zsh

# zsh theme
ZSH_THEME="rpfernando"
# ZSH_THEME="candy"

# oh-my-zsh plugins
plugins=(git gem brew brew-cask)

source $ZSH/oh-my-zsh.sh

export PATH="/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/bin:/usr/local/git/bin:/usr/local/go/bin"

# ruby with rbenv
eval "$(rbenv init -)"

# User configuration
source ~/.functions
source ~/.aliases


# Modification to Candy them
# PROMPT=$'%{$fg_bold[green]%}%m %{$fg[white]%}[%~]%{$reset_color%} $(git_prompt_info)\
# %{$fg[blue]%}➜  {$fg_bold[blue]%} {$reset_color%} '
# rm -rf ~/.rbenv/shims/vagrant

export NVM_DIR="/Users/fernando/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
