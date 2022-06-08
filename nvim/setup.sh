#!/bin/bash
if [[ -d ~/.config/nvim ]]
then
    echo "mv ~/.config/nvim ~/nvim.backup"
    mv ~/.config/nvim ~/nvim.backup
fi

ln -sf ~/.dotfiles/nvim ~/.config/nvim

if [[ ! -d ~/.local/share/nvim/site/pack/packer/start/packer.nvim ]]
then
    echo "git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim"
    git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
fi
nvim +PackerSync
echo "Please install language server"
echo "sudo npm install -g bash-language-server pyright vscode-langservers-extracted typescript typescript-language-server"