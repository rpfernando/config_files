local ret_status="%(?:%{$fg[green]%} ➜  :%{$fg[red]%} ➜  %s)"
# local ruby_status="%{$fg[blue]%}ruby:(%{$fg[red]%}$(rbenv version | sed -e "s/ (set.*$//")%{$fg[blue]%})"

# To enable ruby_status change PROPMT
# PROMPT='%{$fg[cyan]%}%c $ruby_status $(git_prompt_info)'$'\n''${ret_status}%{$reset_color%}'
PROMPT='%{$fg[cyan]%}%c %{$(git_prompt_info)%}'$'\n''${ret_status}%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$reset_color"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%})$reset_color %{$fg[yellow]%}✗$reset_color"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

ZSH_THEME_TERM_TAB_TITLE_IDLE="%~"
