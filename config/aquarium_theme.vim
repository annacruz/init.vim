colorscheme aquarium
let g:aqua_bold = 1
let g:aqua_transparency = 0
let g:aquarium_style="light"
let g:airline_theme="base16_aquarium_light"
if has("termguicolors")
   set termguicolors
   if &t_8f == ''
     " The first characters after the equals sign are literal escape characters.
     set t_8f=[38;2;%lu;%lu;%lum
     set t_8b=[48;2;%lu;%lu;%lum
   endif
 endif

