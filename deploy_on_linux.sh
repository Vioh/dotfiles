#!/usr/bin/env bash

function install_dependencies
{
    if [ "$EUID" -eq 0 ]; then
        sudo apt install -y $@
        echo ""
    fi
}
cd $(dirname "${BASH_SOURCE[0]}")

echo "[INFO] Deploying TMUX configs"
ln --symbolic --force --relative tmux.conf ~/.tmux.conf
install_dependencies xclip

echo "[INFO] Deploying VIM configs"
ln --symbolic --force --relative vimrc ~/.vimrc
install_dependencies vim vim-gtk
