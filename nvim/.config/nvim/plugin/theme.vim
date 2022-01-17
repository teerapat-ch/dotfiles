" Author        : Teerapat Chaiwachirasak
" Created       : 08/12/2021
" License       : MIT
" Description   : 
"


syntax on
set t_Co=256
set cursorline
set termguicolors

colorscheme onehalfdark
let g:airline_theme='onehalfdark'

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" lightline
" let g:lightline = { 'colorscheme': 'onehalfdark' }
" " Gruvbox color
" colorscheme gruvbox
" highlight Normal guibg=none

" " Nightfox theme
" colorscheme nightfox
