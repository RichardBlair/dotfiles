#!/usr/bin/env bash

     _               ___ _ _             
    | |       _     / __|_) |            
  __| | ___ _| |_ _| |__ _| | _____  ___ 
 / _  |/ _ (_   _|_   __) | || ___ |/___)
( (_| | |_| || |_  | |  | | || ____|___ |
 \____|\___/  \__) |_|  |_|\_)_____|___/ 


echo "Deleting the old files"
rm ~/.vimrc
rm ~/.zshrc
rm ~/.vim

echo "Symlinking files"
ln -s ~/Github/dotfiles/vimrc ~/.vimrc
ln -s ~/Github/dotfiles/zshrc ~/.zshrc
ln -s ~/Github/dotfiles/vim ~/.vim

echo "Updating submodules"
git submodule foreach git pull origin master --recurse-submodules

echo "All done."

