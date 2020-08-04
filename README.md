# Personal config for NeoVim

Use `neovim-unix` as the main branch.

## Download

Pull this repo at the standard Neovim config path: `~/.config/nvim/`

## Install

Enter neovim and run `:PlugInstall`

## Errors

Python plugins require a venv active and extensions like `jedi`, `pyls` etc

## Set node version for Autocomplete
To use coc.vim remember to set node version in `config/coc.vim`

For node version `10.20.1` and using `nvm` for example:

`let g:coc_node_path=$HOME."/.nvm/versions/node/v10.20.1/bin/node"`
