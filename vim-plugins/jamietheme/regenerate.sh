#!/bin/sh

# Must be run from the theme directory.

# Palette prints errors to stdout so errors end up replacing
# the scheme. If it fails we `cat` the contents of the scheme so you
# can see the errors.

echo Regenerating...

palette jamietheme.rb > colors/jamietheme.vim

if [ $? = 0 ]; then
    echo Success!
else
    echo Failed. Errors should be below:
    echo
    cat colors/jamietheme.vim
    exit $?
fi
