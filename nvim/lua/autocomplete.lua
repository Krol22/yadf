local cmp = require('cmp')
local lspkind = require('lspkind')

cmp.setup {
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
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
    { name = "nvim_lsp", keyword_length = 2, max_item_count = 20 },
    { name = "path" },
    { name = "buffer", keyword_length = 3 },
  },
  preselect = cmp.PreselectMode.None,
  formatting = {
    format = lspkind.cmp_format {
      with_text = true,
      menu = {
        nvim_lsp = "[LSP]",
        path = "[path]",
        buffer = "[buf]",
      }
    }
  },
  experimental = {
    native_menu = false,
    ghost_text = true,
  }
}

