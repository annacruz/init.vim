"Copy file name to buffer
noremap <silent>+ :let @*=@%<CR>

"Save files on s or S
nnoremap S :w<CR>
noremap s :w<CR>

" Save and Quit with Q
nnoremap <silent>Q ZZ

"Make Y great again
nmap Y y$

"Yank without jank
vnoremap y myy`y

"Deprecated, use ]<Space> instead
nnoremap <CR> o<Esc>

"Close quickfix
map <silent> <F3> :ccl<CR>

"nnoremap <F5> :buffers<CR>:buffer<Space>
"Search through buffers
nnoremap <F5> :CtrlPBuffer<CR>

"Search word in project
nnoremap K yiw:Ag! <C-R>"<CR>
