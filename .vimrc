let mapleader=","
set nocompatible
set showmatch
set ignorecase
set smartcase
set splitright
set splitbelow

if exists('g:loaded_sensible') || &compatible
  finish
else
  let g:loaded_sensible = 1
endif

if has('autocmd')
  filetype plugin indent on
endif
if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif

" Use :help 'option' to see the documentation for the given option.

set autoindent
set backspace=indent,eol,start
set complete-=i
set smarttab

set nrformats-=octal

set ttimeout
set ttimeoutlen=100

set incsearch
" Use <C-L> to clear the highlighting of :set hlsearch.
" if maparg('<C-L>', 'n') ==# ''
"   nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
" endif

set laststatus=2
set ruler
set wildmenu

if !&scrolloff
  set scrolloff=10
endif
if !&sidescrolloff
  set sidescrolloff=5
endif
set display+=lastline

if &encoding ==# 'latin1' && has('gui_running')
  set encoding=utf-8
endif

if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif

if v:version > 703 || v:version == 703 && has("patch541")
  set formatoptions+=j " Delete comment character when joining commented lines
endif

if has('path_extra')
  setglobal tags-=./tags tags-=./tags; tags^=./tags;
endif

if &shell =~# 'fish$' && (v:version < 704 || v:version == 704 && !has('patch276'))
  set shell=/bin/bash
endif

set autoread

if &history < 1000
  set history=1000
endif
if &tabpagemax < 50
  set tabpagemax=50
endif
if !empty(&viminfo)
  set viminfo^=!
endif
set sessionoptions-=options

" Allow color schemes to do bright colors without forcing bold.
if &t_Co == 8 && $TERM !~# '^linux\|^Eterm'
  set t_Co=16
endif

" Load matchit.vim, but only if the user hasn't installed a newer version.
if !exists('g:loaded_matchit') && findfile('plugin/matchit.vim', &rtp) ==# ''
  runtime! macros/matchit.vim
endif

inoremap <C-U> <C-G>u<C-U>

" vim:set ft=vim et sw=2:

filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin("~/.vim/rezende/Plugins")
set path+=**
" let Vundle manage Vundle, required
" All of your Plugins must be added before the following line
"Plugin 'alfredodeza/pytest.vim'
"Plugin 'gagoar/StripWhiteSpaces'
"Plugin 'vim-scripts/vim-auto-save'
"Plugin 'xolox/vim-easytags'
"Plugin 'xolox/vim-misc'
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

set background=dark
colorscheme monokai
"colorscheme mustang

"set fileencoding=utf-8
set undolevels=1000

set noswf

au FocusLost * :wa
set noshowmode

let g:colorizer_auto_filetype='css,html,vim'

set cursorline

set wildignore+=*/tmp/*,*/bower_components/*,*/node_modules/*,*.so,*.swp,*.zip,*/.git/*,*/coverage/*

set relativenumber
set number

"set ar
noremap <silent>+ :let @*=@%<CR>

" Pytest
"nmap <silent><Leader>F <Esc>:Pytest file<CR>
"nmap <silent><Leader>f <Esc>:Pytest function<CR>
"nmap <silent><Leader>c <Esc>:Pytest class<CR>
"nmap <silent><Leader>m <Esc>:Pytest method<CR>

"Save with S
nnoremap S :w<CR>

"Quit with Q
nnoremap <silent>Q ZZ

"Use Y like D and C
nmap Y y$

"Saving with s
noremap s :w<CR>

"Yank without jank
vnoremap y myy`y

"<CR> is a new line
nnoremap <CR> o<Esc>

"F3 to close quickfix
map <silent> <F3> :ccl<CR>

" Override go-to.definition key shortcut to Ctrl-]
let g:pymode_rope_goto_definition_cmd = 'vnew'
let g:pymode_indent = 1
let g:pymode_folding = 0
"Use C e M como Classe e Metodo
let g:pymode_motion = 1
let g:pymode_doc = 0
let g:pymode_virtualenv = 1
"Run code
let g:pymode_run = 0
let g:pymode_run_bind = '<leader>r'
"Breakpoint
let g:pymode_breakpoint = 0
let g:pymode_breakpoint_bind = '<leader>l'
"Lint
let g:pymode_lint = 1
let g:pymode_lint_on_write = 1
let g:pymode_lint_message = 1
let g:pymode_lint_ignore = "E501,W"
let g:pymode_lint_cwindow = 0
let g:pymode_lint_message = 1
let g:pymode_lint_signs = 1
"Completion
let g:pymode_rope = 1
let g:pymode_rope_completion = 1
let g:pymode_rope_complete_on_dot = 1
let g:pymode_rope_completion_bind = '<C-Space>'
let g:pymode_rope_organize_imports_bind = '<C-c>ro'
let g:pymode_rope_autoimport = 1
let g:pymode_rope_autoimport_bind = '<C-c>ra'
let g:pymode_rope_goto_definition_bind = "<C-]>"
"Open definition in a new vsplit
let g:pymode_rope_show_doc_bind = '<C-c>d'
let g:pymode_rope_rename_bind = '<C-c>rr'
let g:pymode_rope_rename_module_bind = '<C-c>r1r'
let g:pymode_rope_extract_method_bind = '<C-c>rm'
let g:pymode_rope_extract_variable_bind = '<C-c>rl'
"find the places in which a function can be used and changes the
"code to call it instead
let g:pymode_rope_use_function_bind = '<C-c>ru'
let g:pymode_rope_move_bind = '<C-c>rv'
let g:pymode_rope_change_signature_bind = '<C-c>rs'
let g:pymode_options_colorcolumn = 0

"MultiCursor
let g:multi_cursor_exit_from_insert_mode=0

"CamelCase
call camelcasemotion#CreateMotionMappings('\')

function! s:filter_header(lines) abort
    let longest_line   = max(map(copy(a:lines), 'len(v:val)'))
    let centered_lines = map(copy(a:lines),
        \ 'repeat(" ", (&columns / 2) - (longest_line / 2)) . v:val')
    return centered_lines
endfunction

let g:startify_custom_header = s:filter_header([
    \ 'Under construction',
    \ ])

autocmd User Startified setlocal cursorline

let g:startify_enable_special         = 0
let g:startify_files_number           = 8
let g:startify_relative_path          = 1
let g:startify_change_to_dir          = 0
let g:startify_update_oldfiles        = 1
let g:startify_session_autoload       = 1
let g:startify_session_persistence    = 1
let g:startify_session_delete_buffers = 1

let g:startify_skiplist = [
      \ 'COMMIT_EDITMSG',
      \ 'bundle/.*/doc',
      \ '/data/repo/neovim/runtime/doc',
      \ '/Users/mhi/local/vim/share/vim/vim74/doc',
      \ ]

let g:startify_bookmarks = [
      \ { 'c': '~/.vim/rezende/.vimrc' },
      \ ]

hi StartifyBracket ctermfg=240
hi StartifyFile    ctermfg=147
hi StartifyFooter  ctermfg=240
hi StartifyHeader  ctermfg=123
hi StartifyNumber  ctermfg=215
hi StartifyPath    ctermfg=245
hi StartifySlash   ctermfg=240
hi StartifySpecial ctermfg=240

"Make K search word under cursor
nnoremap K yiw:Ag! <C-r>"<CR>

" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab

"Buffer
nnoremap <F5> :buffers<CR>:buffer<Space>

"Airline
