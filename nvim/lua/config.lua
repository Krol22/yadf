local cmd = vim.cmd 

-- use mouse
vim.o.mouse = "a"

-- line numbers
vim.wo.number = true
vim.wo.relativenumber = true

-- indent
vim.bo.tabstop = 2
vim.bo.expandtab = true
vim.bo.shiftwidth = 2

-- encoding
vim.bo.fileencoding = "utf8"

-- search
vim.o.incsearch = true
vim.o.dir = "~/.tmp"

-- persistent undo
vim.bo.undofile = true
vim.o.undodir = "~/.tmp"

-- autoreload file after :e
vim.o.autoread = true

cmd "colorscheme horizon"
