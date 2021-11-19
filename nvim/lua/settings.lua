local lsp = require "lspconfig"
local coq = require "coq"

local o = vim.o
local g = vim.g
local wo = vim.wo
local bo = vim.bo
local cmd = vim.cmd
local execute = vim.execute

-- use mouse
o.mouse = 'a'

-- line numbers
wo.number = true
wo.relativenumber = true

-- indent
bo.tabstop = 2
bo.expandtab = true
bo.shiftwidth = 2

-- encoding
o.encoding = "utf8"

-- search
o.incsearch = true
o.ignorecase = true

-- swp files save dir
o.swapfile = true
-- o.dir = "~/.tmp"

-- persistend undo
o.undofile = true
-- o.undodir = '~/.tmp'

-- autoreload file after :e
o.autoread = true

-- indent line
g.indentLine_char = '|'

-- remove comments in new line
cmd('augroup global')
cmd('autocmd!')
cmd('autocmd BufWinEnter * setlocal formatoptions-=c formatoptions-=r formatoptions-=o')
cmd('autocmd BufRead * setlocal formatoptions-=c formatoptions-=r formatoptions-=o')
cmd('autocmd BufNewFile * setlocal formatoptions-=c formatoptions-=r formatoptions-=o')
cmd('augroup END')

-- apperance
o.termguicolors = true
cmd('colorscheme embark')
cmd('hi Normal guibg=NONE ctermbg=NONE')
g.rainbow_active = 1

-- autoclose error window
g.qf_loclist_window_bottom = 0

-- exit on esc in telescope
local actions = require('telescope.actions')
require('telescope').setup{
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = actions.close
      },
    },
  }
}

-- LSP
lsp.tsserver.setup{}
lsp.tsserver.setup(coq.lsp_ensure_capabilities({}))

cmd('COQnow -s')
