#!/usr/bin/env bash

echo "initializing submodules"
git submodule init
git submodule update

echo "Deleting the old files"
rm ~/.vimrc
rm ~/.zshrc
rm ~/.vim
rm ~/.gvimrc

echo "Symlinking files"
ln -s ~/Github/dotfiles/vimrc ~/.vimrc
ln -s ~/Github/dotfiles/zshrc ~/.zshrc
ln -s ~/Github/dotfiles/vim ~/.vim
ln -s ~/Github/dotfiles/gvimrc ~/.gvimrc

echo "Updating submodules"
git submodule foreach git pull origin master --recurse-submodules

echo "All done."

