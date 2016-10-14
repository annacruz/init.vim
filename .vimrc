set nocompatible
set clipboard=unnamed
set paste
filetype off
set splitright
set splitbelow
set wildmenu
set scrolloff=10
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin("~/.vim/rezende/Plugins")
set path+=**
" let Vundle manage Vundle, required
" All of your Plugins must be added before the following line
"Plugin 'alfredodeza/pytest.vim'
"Plugin 'gagoar/StripWhiteSpaces'
"Plugin 'vim-scripts/vim-auto-save'
Plugin 'kana/vim-textobj-user'
Plugin 'kana/vim-textobj-entire'
Plugin 'EasyMotion'
Plugin 'airblade/vim-gitgutter'
Plugin 'bkad/CamelCaseMotion'
Plugin 'bling/vim-airline'
Plugin 'chrisbra/Colorizer'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'digitaltoad/vim-jade'
Plugin 'elzr/vim-json'
Plugin 'flazz/vim-colorschemes'
Plugin 'gmarik/Vundle.vim'
Plugin 'groenewege/vim-less'
Plugin 'kchmck/vim-coffee-script'
"Plugin 'klen/python-mode'
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
Plugin 'vim-ruby/vim-ruby'
Plugin 'wellle/targets.vim'
Plugin 'rking/ag.vim'
Plugin 'felixhummel/setcolors.vim'

call vundle#end()            " required
filetype plugin indent on    " required

syntax enable
set background=dark
colorscheme monokai

set encoding=utf-8
"set fileencoding=utf-8
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab smarttab
set history=100
set undolevels=1000

set noswf

au FocusLost * :wa
set noshowmode

"Status Bar
set statusline=
set statusline=[%n] "buffer mode
set statusline+=\ \%#warningmsg#

" set the format of the status line
set statusline+=%*
set statusline+=%f              "filename
set statusline+=%m              "modified flag
set statusline+=%r              "read only flag
set statusline+=\ \%y           "filetype
set statusline+=%{(&fenc!='utf-8'&&&fenc!='')?'['.&fenc.']':''}
set statusline+=%=              "left/right separator
set statusline+=%*              "show the errors/warning in the status line
set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set statusline+=%=              "left/right separator
set statusline+=%h\ \           "help file flag
set statusline+=[%l,%c]         "cursor line,column
set statusline+=\ \|%L\ lines\| "total lines
set statusline+=\ %P            "percent through file
set laststatus=2

let g:colorizer_auto_filetype='css,html,vim'

set backspace=indent,eol,start

set cursorline

set wildignore+=*/tmp/*,*/bower_components/*,*/node_modules/*,*.so,*.swp,*.zip,*/.git/*,*/coverage/*

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

"MULTICURSOR
let g:multi_cursor_exit_from_insert_mode=0

"CamelCase
call camelcasemotion#CreateMotionMappings(',')

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
