"Copy file name to buffer
noremap <silent>+ :let @*=@%<CR>

"Save files on s
noremap s :w<CR>

"Search in the project with S
nnoremap S :Ag! 

" Save and Quit with Q
nnoremap <silent>Q ZZ

"Make Y great again
nmap Y y$

"Yank without jank
vnoremap y myy`y

"Close quickfix
map <silent> <F3> :ccl<CR>

"Search through buffers
nnoremap <F5> :CtrlPBuffer<CR>

"Search word in project
nnoremap K yiw:Ag! <C-R>"<CR>
