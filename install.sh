#!/bin/sh
# First, make sure we have absolute path for dotfiles directory
PREVDIR=$(pwd)
BASEDIR=$(dirname "$0")
cd $BASEDIR
DOTFILES=$(pwd)
cd $PRVEDIR
# Move everything except config into place
FILES=$(ls $DOTFILES | grep -vE 'install|config|LICENSE')
for file in $FILES
do
  echo "Linking ~/.$file"
  ln -sfn $DOTFILES/$file $HOME/.$file
done
# Move contents of config into place
FILES=$(ls $DOTFILES/config)
for file in $FILES
do
  echo "Linking ~/.config/$file"
  ln -sfn $DOTFILES/config/$file $HOME/.config/$file
done
