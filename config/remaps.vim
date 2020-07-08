" Custom remappings

"Copy file name to buffer - fy - file yank
noremap <Space>fy :let @*=@%<CR>

"Save files on s
noremap s :w<CR>

"Search text in the project with S
nnoremap S :Ag! 

" Fix Y so it copies from cursor to end-of-line
" Same behavior of D and C
nmap Y y$

" After copying blocks of text in visual mode,
" do not move the cursor
vnoremap y myy`y

"Close quickfix list
map <silent> Q :ccl<CR>

"Search file through buffers - file list
nnoremap <Space>fl :CtrlPBuffer<CR>

"Search word in project
nnoremap <Space>sP yiw:Ag! <C-R>"<CR>

" We really only use e and E to add stuff to end of words
nnoremap e ea
nnoremap E Ea

"Run a macro on every line in visual mode
xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>

function! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction

nnoremap # #zz
nnoremap * *zz

" Turn word into uppercase, continue typing
"
" Example: Enter inser mode, type myvar, hit Control+F, MYVAR and still insert
" mode
map! <C-F> <Esc>gUiw`]a
