# Personal config for NeoVim

Use `neovim-unix` as the main branch.

## Download

Pull this repo at the standard Neovim config path: `~/.config/init.vim`

## Install

Enter neovim and run `:PlugInstall`

## Errors

Python plugins require a venv active and extensions like `jedi`, `pyls` etc

## Set node version for Autocomplete
To use coc.vim remember to set node version in `config/coc.vim`

`let g:coc_node_path=$HOME."/.nvm/versions/node/v10.20.1/bin/node"`
