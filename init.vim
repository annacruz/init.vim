set nocompatible
map <Space> <Leader>
set showcmd
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/vrvim/

call plug#begin('~/.config/vrvim/plugged')
"Plug 'christoomey/vim-tmux-navigator'
Plug 'airblade/vim-gitgutter'
Plug 'bkad/CamelCaseMotion'
Plug 'bling/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'flazz/vim-colorschemes'
Plug 'gmarik/Vundle.vim'
Plug 'greyblake/vim-preview'
Plug 'groenewege/vim-less'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-user'
Plug 'klen/python-mode'
Plug 'ludovicchabant/vim-gutentags'
Plug 'majutsushi/tagbar'
Plug 'mhinz/vim-startify'
Plug 'rking/ag.vim'
Plug 'roman/golden-ratio'
Plug 'sheerun/vim-polyglot'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'w0rp/ale'
Plug 'wellle/targets.vim'
call plug#end()


filetype plugin indent on

runtime! config/*.vim
