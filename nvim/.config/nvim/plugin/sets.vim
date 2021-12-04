set encoding=utf-8
set number
set relativenumber
set nohls
" " Split screen in a more natural way
set splitbelow
set splitright
" " Set style in dir mode
let g:netrw_liststyle = 3

" VimRC 2021 ThePrimeagen
set exrc " Load custom rc for each project
set ignorecase smartcase
set scrolloff=8
set colorcolumn=120


" From: https://stackoverflow.com/questions/234564/tab-key-4-spaces-and-auto-indent-after-curly-braces-in-vim
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
