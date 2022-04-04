" VIM Latex
syntax enable
" viewer method:
let g:vimtex_view_method = 'skim'

" Shortcut to convert current latex file to pdf.
nnoremap <leader>rr :w <CR>:! bibtex background <CR> :! pdflatex %<CR> 
" nnoremap <leader>rr :w <CR> :! pdflatex %<CR>
