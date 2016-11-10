set nocompatible
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/rezende/
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin("~/.vim/rezende/Plugins")

Plugin 'kana/vim-textobj-user'
Plugin 'kana/vim-textobj-entire'
Plugin 'EasyMotion'
Plugin 'airblade/vim-gitgutter'
Plugin 'bkad/CamelCaseMotion'
Plugin 'bling/vim-airline'
Plugin 'chrisbra/Colorizer'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'digitaltoad/vim-pug'
Plugin 'elzr/vim-json'
Plugin 'flazz/vim-colorschemes'
Plugin 'gmarik/Vundle.vim'
Plugin 'groenewege/vim-less'
Plugin 'kchmck/vim-coffee-script'
Plugin 'klen/python-mode'
Plugin 'mhinz/vim-startify'
Plugin 'motus/pig.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'rodjek/vim-puppet'
Plugin 'roman/golden-ratio'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-vinegar'
Plugin 'tpope/vim-unimpaired'
Plugin 'vim-ruby/vim-ruby'
Plugin 'wellle/targets.vim'
Plugin 'rking/ag.vim'
Plugin 'felixhummel/setcolors.vim'

call vundle#end()            " required
filetype plugin indent on
runtime! config/*.vim
