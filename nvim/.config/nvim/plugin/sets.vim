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

" MUST HAVE VIM REMAPS from ThePrimeagens: https://www.youtube.com/watch?v=hSHATqh8svM
"
" Keeping it centered
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ'z

" Undo break points
inoremap , ,<c-g>u
inoremap ! !<c-g>u
inoremap . .<c-g>u
inoremap ? ?<c-g>u

" Number 1: Moving text
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '>-2<CR>gv=gv
nnoremap <leader>j :m .+1<CR>==
nnoremap <leader>k :m .-2<CR>==

" Bring back the escape key
" tnoremap <Esc> <C-\><C-n>
" tnoremap <C-h> <C-\><C-n><C-w>h
" tnoremap <C-j> <C-\><C-n><C-w>j
" tnoremap <C-k> <C-\><C-n><C-w>k
" tnoremap <C-l> <C-\><C-n><C-w>l
" autocmd BufWinEnter,WinEnter term://* startinsert
"
" Vim slime
nmap <c-c><c-c> <Plug>SlimeLineSend

" greatest remap ever
xnoremap <leader>p "_dP
