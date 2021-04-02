#!/usr/bin/env bash
# This script deploys all configurations in this repo on Linux environment.
# This is done by creating symlinks that map to configuration files in this repo.

cd $(dirname "${BASH_SOURCE[0]}")

function install_dependencies
{
    if [ "$EUID" -eq 0 ]; then
        sudo apt install --yes --upgrade $@
        echo ""
    fi
}
function install_vim_extension
{
    install_dir=~/.vim/pack/$1/start
    mkdir --parents $install_dir
    rm -rf $install_dir/*
    ln --symbolic --force --relative vim_extensions/$1 $install_dir/$1
}

echo "[INFO] Deploying TMUX configs"
ln --symbolic --force --relative tmux.conf ~/.tmux.conf
install_dependencies xclip

echo "[INFO] Deploying VIM configs"
ln --symbolic --force --relative vimrc ~/.vimrc
install_vim_extension nerdcommenter
install_dependencies vim vim-gtk
