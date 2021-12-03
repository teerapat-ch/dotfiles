" fzf
set rtp+=~/.fzf

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

