grey='\e[0;90m'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$grey%}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$grey%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$grey%})"

function jamie_prompt {
  #prompt="%{%F{green}%}${PWD/#$HOME/~} %{%F{red}%}%{$reset_color%}$(git_prompt_info)"
  prompt="%{%F{green}%}${PWD/#$HOME/~} %{%F{red}%}%{$reset_color%}"
  echo $prompt
}

setopt prompt_subst

#PROMPT='$(jamie_prompt) %(?,%{%F{green}%},%{%F{red}%})⚡%{$reset_color%} '
PROMPT='$(jamie_prompt) %(?,%{%F{green}%},%{%F{red}%})$%{$reset_color%} '
