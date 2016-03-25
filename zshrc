# load zgen
source ~/dotfiles/zgen/zgen.zsh

if ! zgen saved; then
  echo "Setting up zsh with prezto and theme..."
  zgen prezto

  # Couldn't get prezto's highlighting module to work.
  # so use this one instead.
  zgen load zsh-users/zsh-syntax-highlighting

  zgen prezto git
  zgen prezto command-not-found

  zgen load ~/dotfiles/themes
  zgen prezto prompt theme jamie

  zgen save
fi

# Use vim as my editor
export VISUAL=/usr/bin/vim

# Replace vim with nvim if installed
command -v nvim > /dev/null && alias vim="nvim"
command -v nvim > /dev/null && export VISUAL=$(command -v nvim)

alias v="vim ."

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
command -v chruby-exec > /dev/null && source /usr/local/opt/chruby/share/chruby/chruby.sh
command -v chruby-exec > /dev/null && source /usr/local/opt/chruby/share/chruby/auto.sh
# use a local ruby
command -v chruby-exec > /dev/null && chruby ruby 2.2.3

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

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
