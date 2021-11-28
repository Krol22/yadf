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
o.dir = "/Users/krol22/.tmp"

-- persistend undo
o.undofile = true
o.undodir = '/Users/krol22/.tmp'

-- autoreload file after :e
-- o.autoread = true

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
g.vim_json_syntax_conceal = 0

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

local nvim_autopairs = require('nvim-autopairs');
nvim_autopairs.setup{}
