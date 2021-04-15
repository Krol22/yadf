--
vim.o.mouse = "a"

-- save & quit

vim.api.nvim_set_keymap('n', '<C-q>', ':q <CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-s>', ':w <CR>', {noremap = true, silent = true})

