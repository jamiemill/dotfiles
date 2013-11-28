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


##################################################
# Run the install script again
##################################################

echo ""
echo "Running install script..."
echo ""

./install.sh

