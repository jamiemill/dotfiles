ZSH_THEME_GIT_PROMPT_PREFIX="%{$yellow%}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$yellow%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$yellow%})"

function jamie_prompt {
  prompt="%{%F{green}%}${PWD/#$HOME/~} %{%F{red}%}%{$reset_color%}$(git_prompt_info)"
  echo $prompt
}

setopt prompt_subst

# Suffix with a $ coloured by exit status of last command
PROMPT='$(jamie_prompt) %(?,%{%F{green}%},%{%F{red}%})$%{$reset_color%} '
