function nmap(shortcut, command, options) 
  vim.api.nvim_set_keymap("n", shortcut, command, options)
end

function vmap(shortcut, command, options)
  vim.api.nvim_set_keymap("v", shortcut, command, options)
end

function tmap(shortcut, command, optinos)
  vim.api.nvim_set_keymap("t", shortcut, command, options)
end

vim.g.coq_settings = {
  ['keymap.jump_to_mark'] = '',
}

-- panes
nmap("<C-h>", ":winc h<CR>", { silent = true, noremap = true })
nmap("<C-j>", ":winc j<CR>", { silent = true, noremap = true })
nmap("<C-k>", ":winc k<CR>", { silent = true, noremap = true })
nmap("<C-l>", ":winc l<CR>", { silent = true, noremap = true })

-- save
nmap("<C-s>", ":w <CR>", { silent = true })

-- show next matched string at the center of screen
nmap("n", "nzz", { noremap = true })
nmap("N", "Nzz", { noremap = true })

-- telescope
nmap("<C-P>", ":Telescope file_browser <CR>", { silent = true })
nmap("<C-F>", ":Telescope live_grep <CR>", { silent = true })

vim.g.fzf_action = {
  ["ctrl-s"] = "split",
  ["ctrl-v"] = "vsplit",
}

-- comment in normal and visual mode
nmap("<C-_>", "<leader>c<space>", {})
vmap("<C-_>", "<leader>c<space>", {})

