all: sym-zshrc sym-aliases sym-functions sym-zsh-theme
	@echo "Finish symlinks"

sym-zshrc:
	@if [ -f ~/.zshrc ]; then echo ".zshrc exists... moving on"; else ls -s zshrc ~/.zshrc; echo "zshrc symlinked"; fi

sym-aliases:
	@if [ -f ~/.aliases ]; then echo ".aliases exists... moving on"; else ls -s aliases ~/.aliases; echo "aliases symlinked"; fi

sym-functions:
	@if [ -f ~/.functions ]; then echo ".functions exists... moving on"; else ls -s functions ~/.functions; echo "functions symlinked"; fi

sym-zsh-theme:
	@if [ -f ~/.rpfernando.zsh-theme ]; then echo ".rpfernando.zsh-theme exists... moving on"; else ls -s rpfernando.zsh-theme ~/.oh-my-zsh/custom/themes/.rpfernando.zsh-theme; echo "functions symlinked"; fi
