set fish_greeting

# Git aliases
alias gst "git status"
alias gd "git diff"

# Use vim as my editor
set VISUAL /usr/bin/vim

# Replace vim with nvim if installed
command -v nvim > /dev/null; and alias vim="nvim"
command -v nvim > /dev/null; and export VISUAL=(command -v nvim)

alias v "vim ."
