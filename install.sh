#!/bin/sh

set -e

# NOTE: must run this from the containg directory.

##################################################
# Update this thing
##################################################

echo ""
echo "Updating this repo..."
echo ""

git pull

echo ""
echo "Updating submodules..."
echo ""

git submodule init
git submodule update

##################################################
# Link all the main config files like .zshrc,
# .vimrc etc.
##################################################

echo ""
echo "Linking dotfiles..."
echo ""

FILES="vimrc vimstatus tmux.conf bash_profile zshrc"

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


##################################################
# Link the snipmate snippets dir
##################################################

echo ""
echo "Linking custom snipmate snippets..."
echo ""

DOTVIMDIR="$HOME/.vim"
SNIPPETSDIR="$DOTVIMDIR/snippets"

if [ ! -d $DOTVIMDIR ]; then
	echo "ERROR: ~/.vim does not exist yet - you must not have installed pathogen"
	exit 1
fi

if [ -d $SNIPPETSDIR ]; then
	echo "> Deleting $SNIPPETSDIR"
	rm  $SNIPPETSDIR
fi

echo "> Linking $SNIPPETSDIR"
ln -s "$PWD/vim-snippets" $SNIPPETSDIR


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
