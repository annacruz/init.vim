set nocompatible
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/
set rtp+=~/.config/nvim/bundle/Vundle.vim

call vundle#begin("~/.config/nvim/Plugins")

Plugin 'airblade/vim-gitgutter'
Plugin 'bkad/CamelCaseMotion'
Plugin 'bling/vim-airline'
Plugin 'chrisbra/Colorizer'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'digitaltoad/vim-pug'
Plugin 'easymotion/vim-easymotion'
Plugin 'elzr/vim-json'
Plugin 'felixhummel/setcolors.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'gmarik/Vundle.vim'
Plugin 'groenewege/vim-less'
Plugin 'kana/vim-textobj-entire'
Plugin 'kana/vim-textobj-user'
Plugin 'kchmck/vim-coffee-script'
Plugin 'klen/python-mode'
Plugin 'mhinz/vim-startify'
Plugin 'motus/pig.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'rking/ag.vim'
Plugin 'rodjek/vim-puppet'
Plugin 'roman/golden-ratio'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-vinegar'
Plugin 'vim-ruby/vim-ruby'
Plugin 'wellle/targets.vim'

call vundle#end()            " required
filetype plugin indent on
runtime! config/*.vim
