#!/bin/sh

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

palette "$DIR/jamietheme.rb" > "$DIR/colors/jamietheme.vim"
