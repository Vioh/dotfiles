# Useful dotfiles

* [`tmux.conf`](tmux.conf): Configuration file for TMUX, should be copied to `~/.tmux.conf`.
* [`vimrc`](vimrc): Configuration file for Vim, should be copied to `~/.vimrc`.

# Deploy on Linux

Clone the repo recursively to get all submodules:

    git clone --recursive https://github.com/Vioh/dotfiles
    cd dotfiles

Deploy the configurations with root:

    sudo ./deploy_on_linux.sh

If you don't have root, you can also run the script without `sudo` (but note that this may make some configurations to not work as expected, due to missing dependencies):

    ./deploy_on_linux.sh

Note that the deploy script only creates symlinks that map to the configuration files in this repo. That way, updating the configurations can be as simple as doing a `git pull`.
