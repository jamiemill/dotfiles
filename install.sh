#!/bin/sh

set -e

# NOTE: must run this from the containg directory.

# This is intended to be idempotent. It is used for initial setup as well as
# subsequent updates. All commands should be runnable any time to if you make
# changes.

##################################################
# Install/update pathogen
##################################################

echo ""
echo "Installing pathogen..."
echo ""

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

##################################################
# Update submodules to the versions referenced
# by this git repo.
##################################################

echo ""
echo "Syncronising submodules..."
echo ""

git submodule sync
git submodule init
git submodule update

##################################################
# Link all the main config files like .zshrc,
# .vimrc etc.
##################################################

echo ""
echo "Linking dotfiles..."
echo ""

FILES="vimrc tmux.conf bash_profile zshrc gitconfig"

for FILE in $FILES
do
	SRC="$PWD/$FILE"
	DEST="$HOME/.$FILE"
	if [ -f $DEST ]; then
		if [ ! -L $DEST ]; then
			echo "ERROR: $DEST exists and is not a symlink, aborting!"
			exit 1
		else
			echo "> Deleting $DEST"
			rm $DEST
		fi
	fi
	echo "> Linking $DEST"
	ln -s $SRC $DEST
done

# Make vim config available to nvim
echo ""
echo "Linking vim to nvim..."
mkdir -p ${XDG_CONFIG_HOME:=$HOME/.config}
ln -shf ~/.vim $XDG_CONFIG_HOME/nvim
ln -shf ~/.vimrc $XDG_CONFIG_HOME/nvim/init.vim

##################################################
# Link the custom UltiSnips dir
##################################################

echo ""
echo "Linking custom UltiSnip snippets..."
echo ""

DOTVIMDIR="$HOME/.vim"
SNIPPETSDIR="$DOTVIMDIR/UltiSnips"

if [ ! -d $DOTVIMDIR ]; then
	echo "ERROR: ~/.vim does not exist yet - you must not have installed pathogen"
	exit 1
fi

if [ -d $SNIPPETSDIR ]; then
	echo "> Deleting $SNIPPETSDIR"
	rm  $SNIPPETSDIR
fi

echo "> Linking $SNIPPETSDIR"
ln -s "$PWD/UltiSnips" $SNIPPETSDIR


##################################################
# Link custom zsh plugins inside oh-my-szh/custom
# which is .gitignored by the maintainer.
##################################################

mkdir -p "$PWD/oh-my-zsh/custom/plugins"

ZSH_CUSTOMS="plugins/zsh-syntax-highlighting jamie.zsh-theme"

for CUSTOM in $ZSH_CUSTOMS
do
	SRC="$PWD/oh-my-zsh-custom/$CUSTOM"
	DEST="$PWD/oh-my-zsh/custom/$CUSTOM"
	if [ -f $DEST -o -d $DEST ]; then
		echo "> Deleting $DEST"
		rm -rf $DEST
	fi
	echo "> Linking $DEST"
	ln -s $SRC $DEST
done
