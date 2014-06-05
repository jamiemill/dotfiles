#!/bin/sh

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo Regenerating...
palette "$DIR/jamietheme.rb" > "$DIR/colors/jamietheme.vim"
echo Done.
