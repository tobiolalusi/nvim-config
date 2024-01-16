# Installation
The preliminary requirement is the installation of
[Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim) (`nvim`).

Requirements:
```
[package manager install] zig
```

Once you have Neovim, clone this repository into `~/.config/nvim`. Ensure you backup the data in this directory, prior to the installation.
```shell
git clone https://github.com/tobiolalusi/nvim-config.git ~/.config/nvim
```
After installation is complete, open nvim and execute the command `:PackerSync` in order to install all the necessary plugins.
The nvim configuration should now be running properly.
