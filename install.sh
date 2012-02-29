#!/usr/bin/env bash

echo "Symlinking files"
ln -s ~/Github/dotfiles/vimrc ~/.vimrc
ln -s ~/Github/dotfiles/zshrc ~/.zshrc
ln -s ~/Github/dotfiles/vim ~/.vim

echo "Updating submodules"
git submodule foreach git pull origin master --recurse-submodules

echo "All done."

