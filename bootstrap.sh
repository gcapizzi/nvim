#!/usr/bin/env sh

set -e

endpath="$HOME/.config/nvim"

mkdir -p $endpath

if [ -e $endpath/.git ] ; then
    echo "> update repo"
    cd $endpath && git pull
else
    echo "> clone repo"
    git clone git@github.com:gcapizzi/nvim.git $endpath
fi

echo "> install vim-plug"
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "> install vim-plug"
nvim +PlugUpdate +qall
