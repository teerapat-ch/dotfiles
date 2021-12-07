require'telescope'.load_extension('project')

vim.api.nvim_set_keymap(
    'n',
    '<leader>p',
    ":lua require'telescope'.extensions.project.project{}<CR>",
    {noremap = true, silent = true}
)

-- nnoremap <silent> <Leader>p <cmd>lua require('telescope.extensions.project').project()<cr>
-- nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
