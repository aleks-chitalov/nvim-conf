local set = vim.opt -- set options
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
set.expandtab = true
vim.o.number = true
vim.o.relativenumber = true

vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>hh', ":ClangdSwitchSourceHeader<CR>", {})


vim.lsp.config("*", {
  capabilities = vim.lsp.protocol.make_client_capabilities()
})

vim.lsp.config('lua_ls', {
  -- Server-specific settings. See `:help lsp-quickstart`
  settings = {
      Lua = {
      runtime = {
        version = 'LuaJIT',
      },
      diagnostics = {
        globals = {
          'vim',
          'require',
        },
      },
    },
  },
})


require("aleks.lazy")




