set runtimepath^=~/.config/nvim
set rtp+=~/.fzf

call plug#begin(stdpath('data') . '/plugged')
Plug 'junegunn/fzf', {'do' : { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'jpalardy/vim-slime'
Plug 'tpope/vim-surround' " Surround
Plug 'tibabit/vim-templates' " Generate templates
Plug 'lervag/vimtex' " For latex

Plug 'gruvbox-community/gruvbox' " Color scheme

" telescope (fzf replacement)
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" Initialize plugin system
call plug#end()

let mapleader = " "

" Gruvbox color
colorscheme gruvbox
highlight Normal guibg=none

" tab navigation
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <silent> <S-t> :tabnew<CR>

" Vim specific
nnoremap K :m-2<CR>gv=gv
nnoremap J :m+1<CR>gv=gv
"
" fzf
let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'
set grepprg=rg\ --vimgrep
command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
" fzf mapping
nnoremap <silent> <leader>e :FZF -m<CR>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>h :History<CR>
nnoremap <silent> <leader>H :Helptags!<CR>
nnoremap <silent> <leader>f :Files<CR>
nnoremap <silent> <leader>F :GFiles<CR>
nnoremap <silent> <leader>t :BTags<CR>
nnoremap <silent> <leader>T :Tags<CR>
nnoremap <silent> <leader>l :Blines<CR>
nnoremap <silent> <leader>L :Lines<CR>
nnoremap <silent> <leader>' :Marks<CR>
nnoremap <silent> <leader>/ :Rg<CR>
nnoremap <silent> <leader>C :Commands<CR>
nnoremap <silent> <leader>M :Maps<CR>
nnoremap <silent> <leader>s :Filetypes<CR>

" For editing VIMRC
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
:nnoremap <leader>sv :source $MYVIMRC<cr>

" Telescope
:nnoremap <leader>ps 


" More Configs
" "================================================================================ 
" " Generic
" "================================================================================ 
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

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" VIM SLIME
let g:slime_target = "neovim"

" auto-templates
let g:tmpl_search_paths = ['~/.templates']

" VIM Latex
syntax enable
" viewer method:
let g:vimtex_view_method = 'skim'
let g:tmpl_author_name = "Teerapat Chaiwachirasak"
