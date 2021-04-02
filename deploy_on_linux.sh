#!/usr/bin/env bash

cd $(dirname "${BASH_SOURCE[0]}")

function install_dependencies
{
    if [ "$EUID" -eq 0 ]; then
        sudo apt install -y $@
        echo ""
    fi
}
function install_vim_extension
{
    mkdir --parents ~/.vim/pack/$1/start
    ln --symbolic --force --relative vim_extensions/$1 ~/.vim/pack/$1/start/$1
}

echo "[INFO] Deploying TMUX configs"
ln --symbolic --force --relative tmux.conf ~/.tmux.conf
install_dependencies xclip

echo "[INFO] Deploying VIM configs"
ln --symbolic --force --relative vimrc ~/.vimrc
install_vim_extension nerdcommenter
install_dependencies vim vim-gtk
