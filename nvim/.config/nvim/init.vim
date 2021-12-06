set runtimepath^=~/.config/nvim

call plug#begin(stdpath('data') . '/plugged')
Plug 'junegunn/fzf', {'do' : { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'jpalardy/vim-slime'
Plug 'tpope/vim-surround' " Surround
Plug 'kdheepak/lazygit.nvim'
Plug 'tibabit/vim-templates' " Generate templates

Plug 'gruvbox-community/gruvbox' " Color scheme
Plug 'tpope/vim-commentary' " Comment

" MARKDOWN
" vim markdown 
" vim pandoc markdown syntax
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

" Vim table mode
Plug 'dhruvasagar/vim-table-mode'

" Latex
Plug 'lervag/vimtex' 

" Coc (Have to look at this later)
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Call :CocInstall coc-snippets to

" LSP
Plug 'neovim/nvim-lspconfig'

" Telescope stuff
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

" Initialize plugin system
call plug#end()

let mapleader = " "

" tab navigation
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <silent> <S-t> :tabnew<CR>

" Vim specific
"nnoremap H :m-2<CR>gv=gv
" nnoremap L :m+1<CR>gv=gv

" For editing VIMRC
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Bring back the escape key
tnoremap <Esc> <C-\><C-n>

" VIM SLIME
let g:slime_target = "neovim"

" auto-templates
let g:tmpl_search_paths = ['~/.templates']

" VIM Latex
syntax enable
" viewer method:
let g:vimtex_view_method = 'skim'
let g:tmpl_author_name = "Teerapat Chaiwachirasak"
