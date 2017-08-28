" function! s:filter_header(lines) abort
"     let longest_line   = max(map(copy(a:lines), 'len(v:val)'))
"     let centered_lines = map(copy(a:lines),
"         \ 'repeat(" ", (&columns / 2) - (longest_line / 2)) . v:val')
"     return centered_lines
" endfunction

" let g:startify_custom_header = s:filter_header([
"     \ 'Under construction',
"     \ ])

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
      \ ]

let g:startify_bookmarks = [
      \ { 'u': '~/.config/vrvim/init.vim' },
      \ ]

hi StartifyBracket ctermfg=240
hi StartifyFile    ctermfg=147
hi StartifyFooter  ctermfg=240
hi StartifyHeader  ctermfg=123
hi StartifyNumber  ctermfg=215
hi StartifyPath    ctermfg=245
hi StartifySlash   ctermfg=240
hi StartifySpecial ctermfg=240
