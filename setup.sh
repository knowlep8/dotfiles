#! /bin/sh

echo "export EDITOR=vim" >> ~/.bashrc
echo "export EDITOR=vim" >> ~/.profile

ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/.vim ~/.vim
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/.liquidpromptrc ~/.liquidpromptrc
