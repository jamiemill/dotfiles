# Path to your oh-my-zsh configuration.
export ZSH=~/dotfiles/oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="jamie"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# use macvim in terminal mode instead of osx vim, so we have ruby support
alias vim="mvim -v"

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

# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/Users/jamiemill/.rvm/gems/ruby-1.9.2-p290/bin:/Users/jamiemill/.rvm/gems/ruby-1.9.2-p290@global/bin:/Users/jamiemill/.rvm/rubies/ruby-1.9.2-p290/bin:/Users/jamiemill/.rvm/bin:/usr/local/php5/bin:~/.cabal/bin:~/Work/cakephp/cake/console:~/Work/drush:/Applications/play-2.0.3
