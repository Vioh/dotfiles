# dotfiles

This repo contains useful configurations for my personal work setup.

## How to deploy on Linux

Configurations:
* [`tmux.conf`](linux/tmux.conf): Configuration file for TMUX, should be copied to `~/.tmux.conf`.
* [`vimrc`](linux/vimrc): Configuration file for Vim, should be copied to `~/.vimrc`.
* [`vscode`](https://gist.github.com/Vioh/061a4acd1a94029d0753f2bf9b7c7c1e): Settings and preferences for my vscode setup, which can be deployed by using the [Settings Sync extension](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync).

Clone the repo recursively to get all submodules:

    git clone --recursive https://github.com/Vioh/dotfiles
    cd dotfiles

Deploy the configurations with root:

    sudo ./deploy_on_linux.sh

If you don't have root, you can also run the script without `sudo` (but note that this may make some configurations to not work as expected, due to missing dependencies):

    ./deploy_on_linux.sh

Note that the deploy script only creates symlinks that map to the configuration files in this repo. That way, updating the configurations can be as simple as doing a `git pull`.
