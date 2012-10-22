# added /usr/local/bin because homebrew says it wants it *before* /usr/bin.
# when installing via homebrew, builds can fail if /usr/local/php5/bin: is
# in the path because there are varisou config files that confuse other builds
# so temporarily disable that.
PATH="/usr/local/bin:$PATH"

# see here: http://www.ibm.com/developerworks/linux/library/l-tip-prompt/
export PS1="\[\e[35;40m\]\h:\W\$ \[\e[0m\]"

# This loads RVM into a shell session.
[[ -s "/Users/jamiemill/.rvm/scripts/rvm" ]] && source "/Users/jamiemill/.rvm/scripts/rvm"

alias gs="git status"
alias gc="git commit"
alias ga="git add ."

alias cake2="~/Work/cakephp/lib/Cake/Console/cake"

# use macvim in terminal mode instead of osx vim, so we have ruby support
# but only if the command `mvim` exists
command -v mvim && alias vim="mvim -v"

export NODE_PATH="/usr/local/lib/node_modules"

# reclaim the cake alias from coffeescript
#alias cake="~/Work/cakephp/cake/console/cake"
# remap coffeescript cake command to ccake
#alias ccake="/usr/local/bin/cake"


alias engines="play -c2 -n synth whitenoise band -n 100 24 band -n 300 100 gain +20"
alias beach="play -t sl -r48000 -c2 - synth -1 pinknoise tremolo .1 40 <  /dev/zero"
