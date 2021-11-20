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
lsp.tsserver.setup{
 init_options = require("nvim-lsp-ts-utils").init_options,
  --
  on_attach = function(client, bufnr)
    local ts_utils = require("nvim-lsp-ts-utils")

    -- defaults
    ts_utils.setup({
      debug = false,
      disable_commands = false,
      enable_import_on_completion = false,

      -- import all
      import_all_timeout = 5000, -- ms
      -- lower numbers = higher priority
      import_all_priorities = {
        same_file = 1, -- add to existing import statement
        local_files = 2, -- git files or files with relative path markers
        buffer_content = 3, -- loaded buffer content
        buffers = 4, -- loaded buffer names
      },
      import_all_scan_buffers = 100,
      import_all_select_source = false,

      -- filter diagnostics
      filter_out_diagnostics_by_severity = {},
      filter_out_diagnostics_by_code = {},

      -- inlay hints
      auto_inlay_hints = true,
      inlay_hints_highlight = "Comment",

      -- update imports on file move
      update_imports_on_move = false,
      require_confirmation_on_move = false,
      watch_dir = nil,
    })

    -- required to fix code action ranges and filter diagnostics
    ts_utils.setup_client(client)
  end,
}

cmd('COQnow -s')
