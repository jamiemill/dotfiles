# added /usr/local/bin because homebrew says it wants it *before* /usr/bin.
# when installing via homebrew, builds can fail if /usr/local/php5/bin: is
# in the path because there are varisou config files that confuse other builds
# so temporarily disable that.
PATH="/usr/local/php5/bin:~/.cabal/bin:/usr/local/bin:~/Work/cakephp/cake/console:~/Work/drush:$PATH"
#PATH="/usr/local/php5/bin:~/.cabal/bin:/usr/local/bin:~/Work/drush:$PATH"

# see here: http://www.ibm.com/developerworks/linux/library/l-tip-prompt/
export PS1="\[\e[35;40m\]\h:\W\$ \[\e[0m\]"

# This loads RVM into a shell session.
[[ -s "/Users/jamiemill/.rvm/scripts/rvm" ]] && source "/Users/jamiemill/.rvm/scripts/rvm"

# AWS Stuff
export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Home"
export EC2_PRIVATE_KEY="$(/bin/ls $HOME/.ec2/pk-*.pem)"
export EC2_CERT="$(/bin/ls $HOME/.ec2/cert-*.pem)"
export EC2_HOME="/usr/local/Cellar/ec2-api-tools/1.4.2.2/jars"
export EC2_AMITOOL_HOME="/usr/local/Cellar/ec2-ami-tools/1.3-45758/jars"
export AWS_ELB_HOME="/usr/local/Cellar/elb-tools/1.0.12.0/jars"
export AWS_IAM_HOME="/usr/local/Cellar/aws-iam-tools/HEAD/jars"
export AWS_CREDENTIAL_FILE=$HOME/.aws-credentials-master

alias gs="git status"
alias gc="git commit"
alias ga="git add ."

alias cake2="~/Work/cakephp/lib/Cake/Console/cake"

# use macvim in terminal mode instead of osx vim, so we have ruby support
alias vim="mvim -v"

export NODE_PATH="/usr/local/lib/node_modules"

# reclaim the cake alias from coffeescript
#alias cake="~/Work/cakephp/cake/console/cake"
# remap coffeescript cake command to ccake
#alias ccake="/usr/local/bin/cake"

