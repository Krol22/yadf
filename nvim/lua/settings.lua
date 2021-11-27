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

-- autoclose error window
-- g.qf_loclist_window_bottom = 0

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

local cmp = require('cmp')

cmp.setup {
  mapping = {
    ["<C-d>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-e>"] = cmp.mapping.abort(),
    ["<C-y>"] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Insert,
      select = true,
    },
    ["<c-space>"] = cmp.mapping.complete(),
  },
  sources = {
    { name = "nvim_lsp", max_item_count = 20 },
    { name = "path" },
    { name = "buffer", keyword_length = 3 },
  },
  preselect = cmp.PreselectMode.None,
  experimental = {
    native_menu = false,
    ghost_text = true,
  }
}

local lsp = require "lspconfig"
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

lsp.tsserver.setup {
  capabilities = capabilities
}

local nvim_autopairs = require('nvim-autopairs');
nvim_autopairs.setup{}
