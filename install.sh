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

function link_file {
    SRC="$1"
    DEST="$2"

    mkdir -p `dirname $DEST`
    if [ -e $DEST ]; then
        if [ ! -L $DEST ]; then
            echo "ERROR: $DEST exists and is not a symlink, aborting!"
            exit 1
        else
            TYPE="Re-linking"
        fi
    else
        TYPE="Linking"
    fi
    echo "> $TYPE $SRC to $DEST"
    ln -shf $SRC $DEST
}

link_file "$PWD/vimrc"        "$HOME/.vimrc"
link_file "$PWD/tmux.conf"    "$HOME/.tmux.conf"
link_file "$PWD/bash_profile" "$HOME/.bash_profile"
link_file "$PWD/zshrc"        "$HOME/.zshrc"
link_file "$PWD/gitconfig"    "$HOME/.gitconfig"
link_file "$PWD/fish"         "$HOME/.config/fish"

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

