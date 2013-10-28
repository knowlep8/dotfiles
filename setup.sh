#! /bin/sh

echo "source ~/liquidprompt/liquidprompt" >> ~/.bashrc
echo "export EDITOR=vim" >> ~/.bashrc

ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/.vim ~/.vim
ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/.zsh ~/.zsh
ln -s ~/dotfiles/.zfunc ~/.zfunc
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/.liquidpromptrc ~/.liquidpromptrc
