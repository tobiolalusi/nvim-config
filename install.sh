#!/bin/bash

# install neovim
if [[ $OSTYPE == "darwin"* ]]; then
    echo -ne "Installing neovim for MacOS..."
    if [[ ! -d $HOME/nvim-macos ]]; then
        curl -fLSsO https://github.com/neovim/neovim/releases/download/nightly/nvim-macos.tar.gz
        tar xzf nvim-macos.tar.gz -C $HOME
        rm -rf nvim-macos.tar.gz
    else
        echo -ne " (already exists)"
    fi
fi
# TODO: create neovim installation for linux
echo " ✅"

# install vim-plug
echo -ne "Installing vim-plug..."
vimplug_loc="${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim
if [[ ! -f $vimplug_loc ]]; then
    curl -fLSso ${vimplug_loc} --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
else
    echo -ne " (already exists)"
fi
echo " ✅"

# the end!
echo "---"
echo "INSTALLATION COMPLETE! ✅"
if [[ `alias | grep nvim | wc -l` == 0 ]]; then
    echo "---"
    echo "Add the following to your .bashrc/.zshrc:"
    echo "export NVIM_DIR=\"\$HOME/nvim-macos\""
    echo "alias nvim=\"\$NVIM_DIR/bin/nvim\""
fi