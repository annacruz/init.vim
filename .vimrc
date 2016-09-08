set nocompatible

set paste
filetype off
set splitright
set splitbelow

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin("~/.vim/rezende/Plugins")

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"Plugins
"Plugin 'vim-scripts/vim-auto-save'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'airblade/vim-gitgutter'
"Plugin 'alfredodeza/pytest.vim'
Plugin 'bling/vim-airline'

Plugin 'chrisbra/Colorizer'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'digitaltoad/vim-jade'
Plugin 'elzr/vim-json'
Plugin 'flazz/vim-colorschemes'
"Plugin 'gagoar/StripWhiteSpaces'
Plugin 'groenewege/vim-less'
Plugin 'kchmck/vim-coffee-script'
Plugin 'klen/python-mode'
Plugin 'motus/pig.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'rking/ag.vim'
Plugin 'rodjek/vim-puppet'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'vim-ruby/vim-ruby'
Plugin 'EasyMotion'
Plugin 'roman/golden-ratio'
"Motions for CamelCase and underscore_case
Plugin 'bkad/CamelCaseMotion'
" All of your Plugins must be added before the following line

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

" Ag
let g:ag_working_path_mode="r"

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

"NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <silent> <F2> :NERDTreeToggle<Return>

function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
call NERDTreeHighlightFile('rb', 'Magenta', 'none', '#ff00ff', '#151515')

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
nnoremap <silent>Q ZQ

"Use Y like D and C
nmap Y y$

"Yank without jank
vnoremap y myy`y

"<CR> is a new line
nnoremap <CR> o<Esc>

"F3 to close quickfix
map <silent> <F3> :ccl<CR>

" Override go-to.definition key shortcut to Ctrl-]
let g:pymode_rope_goto_definition_bind = "<C-]>"
let g:pymode_indent = 1
let g:pymode_folding = 0
"Use C e M como Classe e Metodo
let g:pymode_motion = 1
let g:pymode_doc = 1
let g:pymode_doc_bind = 'K'
let g:pymode_virtualenv = 1
let g:pymode_run = 0
let g:pymode_breakpoint = 1
let g:pymode_lint = 1
let g:pymode_lint_on_write = 1
let g:pymode_lint_message = 0
"Ignore line too long error
let g:pymode_lint_ignore = "E501,W"
let g:pymode_lint_cwindow = 0
let g:pymode_lint_message = 1
let g:pymode_rope_completion = 1
let g:pymode_rope_complete_on_dot = 1
let g:pymode_rope_completion_bind = '<C-Space>'
let g:pymode_rope_autoimport = 1
"Open definition in a new vsplit
let g:pymode_rope_goto_definition_cmd = 'vnew'
let g:pymode_rope_rename_bind = '<C-c>rr'
let g:pymode_rope_rename_module_bind = '<C-c>r1r'
let g:pymode_rope_organize_imports_bind = '<C-c>ro'
let g:pymode_rope_autoimport_bind = '<C-c>ra'
let g:pymode_rope_extract_method_bind = '<C-c>rm'
let g:pymode_rope_extract_variable_bind = '<C-c>rl'
let g:pymode_rope_use_function_bind = '<C-c>ru'
let g:pymode_rope_move_bind = '<C-c>rv'
let g:pymode_rope_change_signature_bind = '<C-c>rs'

"MultiCursor
let g:multi_cursor_exit_from_insert_mode=0

"CamelCase
call camelcasemotion#CreateMotionMappings('<leader>')
