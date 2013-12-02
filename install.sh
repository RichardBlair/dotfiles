#!/usr/bin/env bash

echo "initializing submodules"
git submodule init
git submodule update

echo "Backup the old files"
mv ~/.vimrc ~/.vimrc.old
mv ~/.vim ~/.vim.old
mv ~/.gvimrc ~/.gvim.old
mv ~/.zshrc ~/.zshrc.old
mv ~/.tmux.conf ~/.tmux.conf.old


echo "Symlinking files"
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/gvimrc ~/.gvimrc
ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf

echo "Updating submodules"
git submodule foreach git pull origin master --recurse-submodules

echo "All done."

