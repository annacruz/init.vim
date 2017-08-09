set nocompatible
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.config/vrvim/
set rtp+=~/.config/vrvim/bundle/Vundle.vim

call vundle#begin("~/.config/vrvim/Plugins")

Plugin 'airblade/vim-gitgutter'
Plugin 'bkad/CamelCaseMotion'
Plugin 'bling/vim-airline'
Plugin 'chrisbra/Colorizer'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'felixhummel/setcolors.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'gmarik/Vundle.vim'
"<leader>P to preview html, markdown
Plugin 'greyblake/vim-preview'
Plugin 'groenewege/vim-less'
Plugin 'kana/vim-textobj-entire'
Plugin 'kana/vim-textobj-user'
Plugin 'klen/python-mode'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'mhinz/vim-startify'
Plugin 'rking/ag.vim'
Plugin 'roman/golden-ratio'
Plugin 'sheerun/vim-polyglot'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-vinegar'
Plugin 'tpope/vim-sensible'
Plugin 'w0rp/ale'
Plugin 'wellle/targets.vim'

call vundle#end()            " required
filetype plugin indent on
runtime! config/*.vim
