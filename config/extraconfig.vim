set scrolloff=5
set cursorline
set mouse=a
set clipboard+=unnamedplus

if exists("g:ctrl_user_command")
    unlet g:ctrlp_user_command
endif

" Make search better
set gdefault      " Never have to type /g at the end of search / replace again
"set ignorecase    " case insensitive searching (unless specified)
set smartcase
"set hlsearch
set showmatch

" Save whenever switching windows or leaving vim. This is useful when running
" the tests inside vim without having to save all files first.
au FocusLost,WinLeave * :silent! wa
