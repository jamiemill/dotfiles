#!/bin/bash

git submodule foreach "git checkout master; git pull"

echo "#######################################################"
echo "# Submodules updated. Now commit and run ./update.sh  #"
echo "# on other machines to update.                        #"
echo "#######################################################"
