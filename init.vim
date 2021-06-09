set nocompatible
map <Space> <Leader>
set showcmd
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/

call plug#begin('~/.config/nvim/plugged')

"Python 
" Plug 'davidhalter/jedi-vim'
" Plug 'zchee/deoplete-jedi'
" Plug 'klen/python-mode'

Plug 'w0rp/ale' " Syntax checker
Plug 'airblade/vim-gitgutter' " Work with git hunks
Plug 'bkad/CamelCaseMotion' " consider camelCase as words
Plug 'bling/vim-airline' " nice bottom bar
Plug 'christoomey/vim-tmux-navigator' " tmux shortcuts to navigate buffers
Plug 'ctrlpvim/ctrlp.vim' " fuzzy finder
Plug 'easymotion/vim-easymotion' " jump to letters / words
Plug 'flazz/vim-colorschemes' " extra colorschemes
Plug 'greyblake/vim-preview' " work with MD files
Plug 'kana/vim-textobj-entire' " add die to delete all buffer text
Plug 'kana/vim-textobj-user'
Plug 'majutsushi/tagbar' " add tagbar -> use F2
Plug 'mhinz/vim-startify' " Start screen
Plug 'rking/ag.vim' " Replacement for grep
Plug 'sheerun/vim-polyglot' " Syntax for different languages
Plug 'tpope/vim-commentary' " use operator gc for comments
Plug 'tpope/vim-fugitive' " Git inside vim
Plug 'tpope/vim-repeat' " more powerful dot (.)
Plug 'tpope/vim-rhubarb' " add Gbrowse
Plug 'tpope/vim-sensible' " standard vim configs
Plug 'tpope/vim-sleuth' " fix tab
Plug 'tpope/vim-surround' " work with brackets, quotes etc
Plug 'tpope/vim-unimpaired' " all the [b ]b mappings
Plug 'tpope/vim-vinegar' "file explorer
Plug 'wellle/targets.vim' " added targets
Plug 'mechatroner/rainbow_csv' " csv software

" Ruby
Plug 'tpope/vim-endwise' "help end ruby structures automatically
Plug 'tpope/vim-rails' "Massive vim plugin for editing ruby on rails
Plug 'tpope/vim-bundler' "Vim goodies for Bundler, rake and rails
Plug 'tpope/vim-ruby'
Plug 'ecomba/vim-ruby-refactoring'

" Autocompletion
" Plug 'neoclide/coc.nvim', {'branch': 'release'} " autocomplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neco-syntax'
Plug 'ecomba/vim-ruby-refactoring'
Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' }
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

call plug#end()

filetype plugin indent on

runtime! config/*.vim
