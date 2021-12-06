" Use vim-pandoc-syntax as a standalone
augroup pandoc_syntax
    au! BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc
augroup END

" For vim-table-mode
let g:table_mode_corner='|'
let g:table_mode_align_char="center"
