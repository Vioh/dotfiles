#!/usr/bin/env bash
# This script deploys all configurations in this repo on Linux environment.
# This is done by creating symlinks that map to configuration files in this repo.

cd $(dirname "${BASH_SOURCE[0]}")

function install_vim_extension
{
    install_dir=~/.vim/pack/$1/start
    mkdir --parents $install_dir
    rm -rf $install_dir/*
    ln --symbolic --force --relative vim_extensions/$1 $install_dir/$1
}

if [ "$EUID" -eq 0 ]; then
    echo "[INFO] Running with SUDO, installing dependencies"
    sudo add-apt-repository ppa:jonathonf/vim --yes
    sudo apt update
    sudo apt install --yes --upgrade vim vim-gtk tmux xclip
    echo ""
else
    echo "[INFO] Running without SUDO"
fi

echo "[INFO] Deploying TMUX configs"
ln --symbolic --force --relative linux/tmux.conf ~/.tmux.conf

echo "[INFO] Deploying VIM configs"
ln --symbolic --force --relative linux/vimrc ~/.vimrc
install_vim_extension nerdcommenter
