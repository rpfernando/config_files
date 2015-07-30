CURR_PATH=`pwd`
ZSHRC_DEST=~/.zshrc
ALIASES_DEST=~/.aliases
FUNCTIONS_DEST=~/.functions
ZSH_THEME_DEST=~/.oh-my-zsh/custom/themes/rpfernando.zsh-theme
GITCONFIG_DEST=~/.gitconfig

# Define function to create symlink
symlink-func =	\
	echo "$(1)"; \
	if [ -f $(2) ]; then \
		echo "\t exists..."; \
		if [ ! -L $(2) ]; then \
			echo "\t\t need symlink"; \
			read -r -p "Do you want me to do it for you? [Y/n]" REPLY; \
			if [ $$REPLY == 'Y' ]; \
			then \
			  echo "\t\t\t Will do it for you";  \
				mv $(2) $(2).old; \
				echo "\t\t\t mv $(2) $(2).old"; \
				ln -s $(CURR_PATH)/$(1) $(2); \
				echo "\t\t\t ln -s $(CURR_PATH)/$(1) $(2)d"; \
			fi \
		else \
			echo "\t\t looks good"; \
		fi \
	else \
		ln -s $(CURR_PATH)/$(1) $(2); \
		echo "\t ln -s $(CURR_PATH)/$(1) $(2)"; \
	fi; \
	echo;

all: sym-zshrc sym-aliases sym-functions sym-zsh-theme sym-gitconfig
	@echo "Finish symlinks"

sym-zshrc:
	@$(call symlink-func,zshrc,$(ZSHRC_DEST))

sym-aliases:
	@$(call symlink-func,aliases,$(ALIASES_DEST))

sym-functions:
	@$(call symlink-func,functions,$(FUNCTIONS_DEST))

sym-zsh-theme:
	@$(call symlink-func,rpfernando.zsh-theme,$(ZSH_THEME_DEST))

sym-gitconfig:
	@$(call symlink-func,gitconfig,$(GITCONFIG_DEST))
