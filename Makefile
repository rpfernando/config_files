CURR_PATH=`pwd`
ZSHRC_DEST=~/.zshrc
ALIASES_DEST=~/.aliases
FUNCTIONS_DEST=~/.functions
ZSH_THEME_DEST=~/.oh-my-zsh/custom/themes/rpfernando.zsh-theme
GITCONFIG_DEST=~/.gitconfig

all: sym-zshrc sym-aliases sym-functions sym-zsh-theme sym-gitconfig
	@echo "Finish symlinks"

sym-zshrc:
	@if [ -f $(ZSHRC_DEST) ]; then echo ".zshrc exists... moving on"; else ln -s $(CURR_PATH)/zshrc $(ZSHRC_DEST); echo "zshrc symlinked"; fi

sym-aliases:
	@if [ -f $(ALIASES_DEST) ]; then echo ".aliases exists... moving on"; else ln -s $(CURR_PATH)/aliases $(ALIASES_DEST); echo "aliases symlinked"; fi

sym-functions:
	@if [ -f $(FUNCTIONS_DEST) ]; then echo ".functions exists... moving on"; else ln -s $(CURR_PATH)/functions $(FUNCTIONS_DEST); echo "functions symlinked"; fi

sym-zsh-theme:
	@if [ -f $(ZSH_THEME_DEST) ]; then echo "rpfernando.zsh-theme exists... moving on"; else ln -s $(CURR_PATH)/rpfernando.zsh-theme $(ZSH_THEME_DEST); echo "rpfernando.zsh-theme symlinked"; fi

sym-gitconfig:
	@if [ -f $(GITCONFIG_DEST) ]; then echo ".gitconfig exists... moving on"; else ln -s $(CURR_PATH)/gitconfig $(GITCONFIG_DEST); echo "gitconfig symlinked"; fi
