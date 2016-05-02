#!/usr/bin/env bash

mkdir -p ~/devel/django_projects
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

git clone https://github.com/powerline/fonts.git ./tmp_powerlinefonts
chmod +x ./tmp_powerlinefonts/install.sh
./tmp_powerlinefonts/install.sh

rm -rf ./tmp_powerlinefonts

ln -sf ~/.home/.vimrc ~/.vimrc
ln -sf ~/.home/.gitconfig ~/.gitconfig

