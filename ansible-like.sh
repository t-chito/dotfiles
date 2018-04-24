#!/bin/bash

#Git repos

#read -sp "BitBucket Password: " pass

#read -p "dotfiles [y/n]: " bool
#if [ $bool = y ]; then


git clone https://t_chito@bitbucket.org/t_chito/dotfiles.git
git clone https://t_chito@bitbucket.org/t_chito/script_research.git
git clone https://t_chito@bitbucket.org/t_chito/logs_research.git

git clone https://t_chito@bitbucket.org/t_chito/mybin.git
git clone https://t_chito@bitbucket.org/t_chito/personal_study.git



#soft linking
ln -s $MYSETT/.vim/.vimrc ~/
ln -s $MYSETT/.inputrc ~/
ln -s $MYSETT/.zshrc ~/
