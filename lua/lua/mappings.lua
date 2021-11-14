function nmap(shortcut, command, options) 
  vim.api.nvim_set_keymap("n", shortcut, command, options)
end

function vmap(shortcut, command, options)
  vim.api.nvim_set_keymap("v", shortcut, command, options)
end

function tmap(shortcut, command, optinos)
  vim.api.nvim_set_keymap("t", shortcut, command, options)
end

-- panes
nmap("<C-h>", ":winc h<CR>", { silent = true })
nmap("<C-j>", ":winc j<CR>", { silent = true })
nmap("<C-k>", ":winc k<CR>", { silent = true })
nmap("<C-l>", ":winc l<CR>", { silent = true })

-- save & quit
nmap("<C-q>", ":q <CR>", { silent = true })
nmap("<C-s>", ":w <CR>", { silent = true })

-- show next matched string at the center of screen
nmap("n", "nzz", { noremap = true })
nmap("N", "Nzz", { noremap = true })

-- fzf
nmap("<C-P>", ":Files <CR>", { silent = true })

-- comment in normal and visual mode
nmap("<C-_>", "<leader>c<space>", {})
vmap("<C-_>", "<leader>c<space>", {})
