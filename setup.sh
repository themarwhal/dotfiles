#!/bin/sh

PWD=`pwd`

set -x

ln -sf ${PWD}/gitconfig ~/.gitconfig
ln -sf ${PWD}/vim ~/.vim
ln -sf ${PWD}/vimrc ~/.vimrc
mkdir -p ~/.config/nvim
ln -sf ${PWD}/vimrc ~/.config/nvim/init.vim
ln -sf ${PWD}/tmux.conf ~/.tmux.conf
ln -sf ${PWD}/zshrc ~/.zshrc
ln -sf ${PWD}/zsh ~/.zsh
ln -sf ${PWD}/zshenv ~/.zshenv

git clone git://github.com/scmbreeze/scm_breeze.git ~/.scm_breeze
~/.scm_breeze/install.sh
source ~/.zshrc
