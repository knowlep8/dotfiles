#! /bin/sh

echo "source ~/dotfiles/liquidprompt/liquidprompt" >> ~/.bashrc
echo "export EDITOR=vim" >> ~/.bashrc
echo "source ~/dotfiles/liquidprompt/liquidprompt" >> ~/.profile
echo "export EDITOR=vim" >> ~/.profile

ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/.vim ~/.vim
ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/.zsh ~/.zsh
ln -s ~/dotfiles/.zfunc ~/.zfunc
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/.liquidpromptrc ~/.liquidpromptrc
