-- panes
vim.api.nvim_set_keymap('n', '<C-h>', ':winc h <CR>', {silent = true})
vim.api.nvim_set_keymap('n', '<C-j>', ':winc j <CR>', {silent = true})
vim.api.nvim_set_keymap('n', '<C-k>', ':winc k <CR>', {silent = true})
vim.api.nvim_set_keymap('n', '<C-l>', ':winc l <CR>', {silent = true})

-- save & quit
vim.api.nvim_set_keymap('n', '<C-q>', ':q <CR>', {silent = true})
vim.api.nvim_set_keymap('n', '<C-s>', ':w <CR>', {silent = true})

-- search
vim.api.nvim_set_keymap('n', 'n', 'nzz', {noremap = true})
vim.api.nvim_set_keymap('n', 'N', 'Nzz', {noremap = true})

-- fzf
vim.api.nvim_set_keymap('n', '<C-P>', ':Files<CR>', {silent = true})
