--
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

vim.g.indentLine_char = '|'

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

-- remove comments in new line
cmd('augroup global')
cmd('autocmd!')
cmd('autocmd BufWinEnter * setlocal formatoptions-=c formatoptions-=r formatoptions-=o')
cmd('autocmd BufRead * setlocal formatoptions-=c formatoptions-=r formatoptions-=o')
cmd('autocmd BufNewFile * setlocal formatoptions-=c formatoptions-=r formatoptions-=o')
cmd('augroup END')

-- json quotation marks
vim.g.vim_json_syntax_conceal = 0

-- ctrl_p config
vim.g.ctrlp_custom_ignore = "node_modules|DS_Store|git"
vim.o.wildignore = vim.o.wildignore .. "*/tmp/*,*.so,*.swp,*.zip"

-- enable rainbow parentheses
vim.g.rainbow_active = 1

-- COMMENTS 
vim.g.NERDSpaceDelims = 1
vim.g.NERDCompactSexyComs = 1
vim.g.NERDCommentEmptyLines = 1
vim.g.NERDTrimTrailingWhitespace = 1
vim.g.NERDToggleCheckAllLines = 1

cmd("colorscheme horizon")

