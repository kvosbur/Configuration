#!/usr/bin/env bash

#install vim
echo "Installing vim"
sudo apt install vim

#install dependencies for ohmyzsh
echo "Install zsh"
sudo apt install zsh
sudo apt install wget

echo "Install Oh My Zsh"
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
echo "Change default shell to ZSH"
chsh -s $(which zsh)

#make soft links for config files
echo "Making soft links to repository config files"
rm ~/.zshrc
rm ~/.vimrc
ln -s ~/.shellConfig/zshrc ~/.zshrc
ln -s ~/.shellConfig/vimrc ~/.vimrc

echo "Please logout and log back in for changes to take affect."
