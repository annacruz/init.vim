"Copy file name to buffer
noremap <silent>+ :let @*=@%<CR>

"Save files on s
noremap s :w<CR>

"Search in the project with S
nnoremap S :Ag! 

"Make Y great again
nmap Y y$

"Yank without jank
vnoremap y myy`y

"Close quickfix
map <silent> Q :ccl<CR>

"Search through buffers
nnoremap <F3> :CtrlPBuffer<CR>

"Search word in project
nnoremap K yiw:Ag! <C-R>"<CR>

"More useful e AND E
nnoremap e ea
nnoremap E Ea

"Run macros on every line visual mode
xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>

function! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction

nnoremap # #zz
nnoremap * *zz

" Turn word into uppercase, continue typing
map! <C-F> <Esc>gUiw`]a
