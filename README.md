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

## How to deploy on MAC

Due to time limitation, no script for MAC has been written yet. So all installations have to be done manually as follows:
* [`karabiner.json`](mac/karabiner.json): Configuration file for Karabiner Elements, should be copied to `~/.config/karabiner/karabiner.json`.
* [`ItermProfiles.json`](mac/ItermProfiles.json): Configuration file for Iterm2, and should be imported via Iterm2 GUI.
* [`vimrc`](linux/vimrc): Configuration file for Vim, should be copied to `~/.vimrc`.
* [`vscode/settings.json`](mac/vscode/settings.json): Configuration file for vscode, should be copied to `~/Library/Application Support/Code/User/settings.json`.
* [`vscode/keybindings.json`](mac/vscode/keybindings.json): Shortcuts for vscode, should be copied to `~/Library/Application Support/Code/User/keybindings.json`.
* [intellij/keymaps_settings.zip](mac/intellij/keymaps_settings.zip): Shortcuts for IntelliJ, should be imported via IntelliJ GUI.
