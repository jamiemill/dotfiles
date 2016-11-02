set fish_greeting

# Git aliases
alias gst "git status"
alias gd "git diff"
alias ga "git add"
alias gc "git commit --verbose"
alias gds "git diff --staged"
alias gpr "git pull --rebase"
alias gco "git checkout"
alias gp "git push"

# Use vim as my editor
set VISUAL /usr/bin/vim

# Replace vim with nvim if installed
command -v nvim > /dev/null; and alias vim="nvim"
command -v nvim > /dev/null; and export VISUAL=(command -v nvim)

alias v "vim ."

set fisher_home ~/.local/share/fisherman
set fisher_config ~/.config/fisherman
source $fisher_home/config.fish

# chruby
source /usr/local/share/chruby/chruby.fish
# To enable auto-switching, uncomment this line:
# source /usr/local/share/chruby/auto.fish
chruby ruby 2.2.3
