# Path to your oh-my-zsh configuration.
export ZSH=~/dotfiles/oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="jamie"

# Use vim as my editor
export VISUAL=/usr/bin/vim

# Replace vim with nvim if installed
command -v nvim > /dev/null && alias vim="nvim"
command -v nvim > /dev/null && export VISUAL=$(command -v nvim)

alias v="vim ."

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

export NODE_PATH=/usr/local/lib/jsctags/:$NODE_PATH
export NODE_PATH=$NODE_PATH:/usr/local/lib/node_modules

path=(
  /usr/local/share/npm/bin
  /usr/local/bin
  /usr/bin
  /bin
  /usr/local/sbin
  /usr/sbin
  /sbin
  /usr/X11/bin
  /usr/local/opt/ruby/bin
)
export path

# chruby
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh
# use a local ruby
chruby ruby 2.2.3

# `mkcd` to `mkdir -p` and `cd` to it.
function mkcd {
  if [ ! -n "$1" ]; then
    echo "Enter a directory name"
  elif [ -d $1 ]; then
    echo "\`$1' already exists"
  else
    mkdir -p $1 && cd $1
  fi
}

# turn off annoying autocorrect
unsetopt correctall

# Connect to an IE VM at TIM Group. Defaults to IE8 but can take a version number as an argument, e.g. `ie 7`.
function ie() {
    VNCBIN="/Applications/Chicken of the VNC.app/Contents/MacOS/Chicken of the VNC"
    JOB="http://jenkins.youdevise.com/job/qa-browsers-vnc-report/lastBuild/logText/progressiveText"
    TARGET=$(curl -s $JOB | grep qa-a-ie${1:-"8"}-001 | rev | cut -d " " -f 1 | rev)
    "$VNCBIN" $TARGET
}



export NVM_DIR="/Users/jamiemill/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
