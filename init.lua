local set = vim.opt -- set options
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
set.expandtab = true
vim.o.number = true
vim.o.relativenumber = true

vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>hh', ":ClangdSwitchSourceHeader<CR>", {})
require("aleks.lazy")
